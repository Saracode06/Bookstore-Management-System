from flask import Flask, render_template, request, redirect, url_for
from psutil import users
from database import get_connection

app = Flask(__name__)

# -------- REGISTER ROUTE --------
@app.route('/register', methods=['GET', 'POST'])
def register():
    if request.method == 'POST':
        email = request.form['email']
        password = request.form['password']

        conn = get_connection()
        cur = conn.cursor()
        cur.execute(
            "INSERT INTO users (email, password) VALUES (%s, %s)",
            (email, password)
        )
        conn.commit()
        conn.close()

        return render_template('login.html')

    return render_template('register.html')


# -------- LOGIN ROUTE --------
@app.route('/', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        email = request.form['email']
        password = request.form['password']

        conn = get_connection()
        cur = conn.cursor()
        cur.execute(
            "SELECT * FROM users WHERE email=%s AND password=%s",
            (email, password)
        )
        user = cur.fetchone()
        conn.close()

        if user:
            role = user[3]  # 4th column is role
            if role == "admin":
                return redirect("/admin/dashboard")
            elif role == "employee":
                return redirect("/employee/dashboard")
            else:
                return redirect(url_for('home'))
 
        else:
            return "Invalid Email or Password"

    return render_template('login.html')


# -------- HOME --------
@app.route("/home")
def home():
    return render_template("home.html")


# -------- GENRE PAGE --------
@app.route("/genres")
def genres():

    query = request.args.get("q")

    conn = get_connection()
    cur = conn.cursor()

    if query:
        cur.execute(
            "SELECT genre_id, name FROM genre WHERE name ILIKE %s",
            ('%' + query + '%',)
        )
    else:
        cur.execute("SELECT genre_id, name FROM genre")

    genres = cur.fetchall()

    conn.close()

    return render_template("genre.html", genres=genres)


# -------- BOOKS LISTING (GENRE-WISE) --------
@app.route("/books")
def books():

    genre_id = request.args.get('genre_id')
    query = request.args.get('q')

    conn = get_connection()
    cur = conn.cursor()

    if query:
        cur.execute(
            "SELECT * FROM book WHERE title ILIKE %s",
            ('%' + query + '%',)
        )
    else:
        cur.execute(
            "SELECT * FROM book WHERE genre_id = %s",
            (genre_id,)
        )

    books = cur.fetchall()

    conn.close()

    return render_template("books.html", books=books)


# -------- SINGLE BOOK DETAIL --------
@app.route("/book/<int:book_id>")
def book_detail(book_id):
    conn = get_connection()
    cur = conn.cursor()

    cur.execute(
    "SELECT title, author, price, description, rating, image_url FROM book WHERE book_id = %s",
    (book_id,)
)
    book = cur.fetchone()

    cur.execute(
        "SELECT rating, review_text FROM reviews WHERE book_id=%s",
        (book_id,)
    )
    reviews = cur.fetchall()

    conn.close()

    return render_template("book_details.html", book=book, book_id=book_id, reviews=reviews)

# -------- ADD TO CART --------
@app.route("/add_to_cart/<int:book_id>", methods=["POST"])
def add_to_cart(book_id):

    quantity = request.form.get("quantity", 1)

    conn = get_connection()
    cur = conn.cursor()

    # check if book already in cart
    cur.execute("SELECT quantity FROM cart WHERE book_id=%s", (book_id,))
    existing = cur.fetchone()

    if existing:
        cur.execute(
            "UPDATE cart SET quantity = quantity + %s WHERE book_id=%s",
            (quantity, book_id)
        )
    else:
        cur.execute(
            "INSERT INTO cart (book_id, quantity) VALUES (%s,%s)",
            (book_id, quantity)
        )

    conn.commit()
    conn.close()

    return redirect(url_for("cart"))


# -------- CART PAGE --------

@app.route("/cart")
def cart():

    conn = get_connection()
    cur = conn.cursor()

    cur.execute("""
        SELECT cart.cart_id, book.title, book.price, book.image_url, cart.quantity
        FROM cart
        JOIN book ON cart.book_id = book.book_id
    """)

    items = cur.fetchall()

    total = 0
    for item in items:
        total += item[2] * item[4]

    conn.close()

    return render_template("cart.html", items=items, total=total)

@app.route("/increase/<int:cart_id>")
def increase(cart_id):

    conn = get_connection()
    cur = conn.cursor()

    cur.execute("UPDATE cart SET quantity = quantity + 1 WHERE cart_id=%s", (cart_id,))

    conn.commit()
    conn.close()

    return redirect(url_for("cart"))


@app.route("/decrease/<int:cart_id>")
def decrease(cart_id):

    conn = get_connection()
    cur = conn.cursor()

    cur.execute("UPDATE cart SET quantity = quantity - 1 WHERE cart_id=%s AND quantity>1", (cart_id,))

    conn.commit()
    conn.close()

    return redirect(url_for("cart"))


@app.route("/remove/<int:cart_id>")
def remove(cart_id):

    conn = get_connection()
    cur = conn.cursor()

    cur.execute("DELETE FROM cart WHERE cart_id=%s", (cart_id,))

    conn.commit()
    conn.close()

    return redirect(url_for("cart"))

@app.route("/checkout")
def checkout():

    conn = get_connection()
    cur = conn.cursor()

    cur.execute("""
    SELECT book.title, book.price, cart.quantity
    FROM cart
    JOIN book ON cart.book_id = book.book_id
    """)

    items = cur.fetchall()

    total = 0
    for item in items:
        total += item[1] * item[2]

    conn.close()

    return render_template("checkout.html", items=items, total=total)

@app.route("/place_order", methods=["POST"])
def place_order():

    payment = request.form["payment"]

    conn = get_connection()
    cur = conn.cursor()

    # get cart items
    cur.execute("""
    SELECT book_id, quantity
    FROM cart
    """)
    cart_items = cur.fetchall()

    total = 0

    for item in cart_items:
        cur.execute("SELECT price FROM book WHERE book_id=%s", (item[0],))
        price = cur.fetchone()[0]
        total += price * item[1]

    # create order
    cur.execute(
        "INSERT INTO orders (total_price, payment_method) VALUES (%s,%s) RETURNING order_id",
        (total, payment)
    )

    order_id = cur.fetchone()[0]

    # insert order items
    for item in cart_items:

        cur.execute("SELECT price FROM book WHERE book_id=%s", (item[0],))
        price = cur.fetchone()[0]

        cur.execute(
        "INSERT INTO order_items (order_id, book_id, quantity, price) VALUES (%s,%s,%s,%s)",
        (order_id, item[0], item[1], price)
        )

    # clear cart
    cur.execute("DELETE FROM cart")

    conn.commit()
    conn.close()

    return render_template("order_success.html", order_id=order_id)

@app.route("/add_review/<int:book_id>", methods=["POST"])
def add_review(book_id):

    rating = request.form["rating"]
    review = request.form["review"]

    conn = get_connection()
    cur = conn.cursor()

    cur.execute(
        "INSERT INTO reviews (book_id, rating, review_text) VALUES (%s,%s,%s)",
        (book_id, rating, review)
    )

    conn.commit()
    conn.close()

    return redirect(url_for("book_detail", book_id=book_id))

# -------- ADMIN DASHBOARD --------
@app.route("/admin/dashboard")
def admin_dashboard():
    conn = get_connection()
    cur = conn.cursor()

    cur.execute("SELECT * FROM book")
    books = cur.fetchall()

    cur.execute("SELECT * FROM orders")
    orders = cur.fetchall()

    conn.close()

    return render_template("admin_dashboard.html", books=books, orders=orders)


# -------- ADD BOOK --------
@app.route("/admin/add_book", methods=["GET", "POST"])
def add_book():
    conn = get_connection()
    cur = conn.cursor()

    # GET genres for dropdown
    cur.execute("SELECT genre_id, name FROM genre")
    genres = cur.fetchall()

    if request.method == "POST":
        title = request.form["title"]
        author = request.form["author"]
        price = request.form["price"]
        genre_id = request.form["genre_id"]
        image = request.form["image_url"]
        desc = request.form["description"]

        cur.execute(
            "INSERT INTO book (title, author, price, genre_id, image_url, description) VALUES (%s,%s,%s,%s,%s,%s)",
            (title, author, price, genre_id, image, desc)
        )

        conn.commit()
        conn.close()

        return redirect("/admin/dashboard")

    conn.close()
    return render_template("add_book.html", genres=genres)

# -------- DELETE BOOK --------
@app.route("/admin/delete/<int:id>")
def delete_book(id):
    conn = get_connection()
    cur = conn.cursor()

    cur.execute("DELETE FROM book WHERE book_id=%s", (id,))
    conn.commit()
    conn.close()

    return redirect("/admin/dashboard")

@app.route("/employee/dashboard")
def employee_dashboard():
    conn = get_connection()
    cur = conn.cursor()
 
    cur.execute("SELECT * FROM book")
    books = cur.fetchall()
 
    cur.execute("SELECT * FROM orders")
    orders = cur.fetchall()
 
    conn.close()
 
    return render_template("employee_dashboard.html", books=books, orders=orders)
    

if __name__ == '__main__':
    app.run(debug=True)
