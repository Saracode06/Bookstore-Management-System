--
-- PostgreSQL database dump
--

\restrict cwqImHaGBDz4pviTyPTAgQSNU4XuArH8LBREWQNYWAPdgHBB2VzwycJ0yeUru9J

-- Dumped from database version 18.1
-- Dumped by pg_dump version 18.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Data for Name: genre; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.genre (genre_id, name, description, created_at) VALUES (1, 'Fiction', 'Imaginary stories created from the authors imagination', '2026-02-05 08:19:05.865987');
INSERT INTO public.genre (genre_id, name, description, created_at) VALUES (2, 'Non-Fiction', 'Based on real facts, events, and people', '2026-02-05 08:19:05.865987');
INSERT INTO public.genre (genre_id, name, description, created_at) VALUES (3, 'Mystery', 'Stories involving crime, suspense, or investigation', '2026-02-05 08:19:05.865987');
INSERT INTO public.genre (genre_id, name, description, created_at) VALUES (4, 'Fantasy', 'Magical worlds, mythical creatures, and supernatural elements', '2026-02-05 08:20:01.845371');
INSERT INTO public.genre (genre_id, name, description, created_at) VALUES (5, 'Science Fiction', 'Futuristic technology, space, and scientific concepts', '2026-02-05 08:20:01.845371');
INSERT INTO public.genre (genre_id, name, description, created_at) VALUES (6, 'Romance', 'Stories focused on love and relationships', '2026-02-05 08:20:01.845371');
INSERT INTO public.genre (genre_id, name, description, created_at) VALUES (7, 'Thriller', 'Fast-paced stories with suspense and excitement', '2026-02-05 08:20:01.845371');
INSERT INTO public.genre (genre_id, name, description, created_at) VALUES (8, 'Biography', 'Life stories of real people written by authors', '2026-02-05 08:20:01.845371');
INSERT INTO public.genre (genre_id, name, description, created_at) VALUES (9, 'Self-Help', 'Books aimed at personal growth and motivation', '2026-02-05 08:20:01.845371');
INSERT INTO public.genre (genre_id, name, description, created_at) VALUES (10, 'Horror', 'Stories intended to scare or unsettle readers', '2026-02-05 08:20:01.845371');
INSERT INTO public.genre (genre_id, name, description, created_at) VALUES (12, 'Psychology', 'Books related to human behavior and mental processes', '2026-02-28 04:00:56.833728');
INSERT INTO public.genre (genre_id, name, description, created_at) VALUES (14, 'Economics', 'Books about economy, markets and finance', '2026-03-25 10:37:42.692753');


--
-- Data for Name: book; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.book (book_id, title, author, price, genre_id, image_url, description, rating, stock, created_at) VALUES (44, 'Beyond Good and Evil', 'Friedrich Nietzsche', 299.00, 9, 'images/beyond_good_and_evil.jpg', 'A philosophical work exploring morality and human nature.', 4.5, 10, '2026-03-25 12:48:00.129059');
INSERT INTO public.book (book_id, title, author, price, genre_id, image_url, description, rating, stock, created_at) VALUES (45, 'Pride and Prejudice', 'Jane Austen', 249.00, 6, 'images/pride_and_prejudice.jpg', 'A classic romance about love, class, and misunderstandings.', 4.7, 12, '2026-03-25 12:48:00.129059');
INSERT INTO public.book (book_id, title, author, price, genre_id, image_url, description, rating, stock, created_at) VALUES (46, 'Crime and Punishment', 'Fyodor Dostoevsky', 349.00, 1, 'images/crime_and_punishment.jpg', 'A psychological novel about guilt and redemption.', 4.8, 9, '2026-03-25 12:48:00.129059');
INSERT INTO public.book (book_id, title, author, price, genre_id, image_url, description, rating, stock, created_at) VALUES (48, 'Alice in Wonderland', 'Lewis Carroll', 199.00, 4, 'images/alice_in_wonderland.jpg', 'A fantasy tale of a girl in a magical world.', 4.5, 10, '2026-03-25 12:48:00.129059');
INSERT INTO public.book (book_id, title, author, price, genre_id, image_url, description, rating, stock, created_at) VALUES (49, 'The Adventures of Sherlock Holmes', 'Arthur Conan Doyle', 299.00, 3, 'images/adventures_of_sherlock_holmes.jpg', 'Detective stories solving mysterious crimes.', 4.8, 11, '2026-03-25 12:48:00.129059');
INSERT INTO public.book (book_id, title, author, price, genre_id, image_url, description, rating, stock, created_at) VALUES (51, 'The Prophet', 'Kahlil Gibran', 199.00, 9, 'images/prophet.jpg', 'A spiritual book with philosophical insights.', 4.5, 9, '2026-03-25 12:48:00.129059');
INSERT INTO public.book (book_id, title, author, price, genre_id, image_url, description, rating, stock, created_at) VALUES (52, 'Morning Mist', 'Unknown', 150.00, 1, 'images/morning_mist.jpg', 'A simple fictional story set in a calm environment.', 3.8, 7, '2026-03-25 12:48:00.129059');
INSERT INTO public.book (book_id, title, author, price, genre_id, image_url, description, rating, stock, created_at) VALUES (53, 'The Bell Jar', 'Sylvia Plath', 299.00, 10, 'images/bell_jar.jpg', 'A novel exploring mental health and identity.', 4.4, 8, '2026-03-25 12:48:00.129059');
INSERT INTO public.book (book_id, title, author, price, genre_id, image_url, description, rating, stock, created_at) VALUES (54, 'The God of Small Things', 'Arundhati Roy', 349.00, 1, 'images/god_of_small_things.jpg', 'A story of family, love, and tragedy.', 4.3, 9, '2026-03-25 12:48:00.129059');
INSERT INTO public.book (book_id, title, author, price, genre_id, image_url, description, rating, stock, created_at) VALUES (55, 'Parade''s End', 'Ford Madox Ford', 399.00, 1, 'images/parades_end.jpg', 'A novel set during World War I.', 4.1, 6, '2026-03-25 12:48:00.129059');
INSERT INTO public.book (book_id, title, author, price, genre_id, image_url, description, rating, stock, created_at) VALUES (57, 'The Discovery of India', 'Jawaharlal Nehru', 399.00, 2, 'images/discovery_of_india.jpg', 'An insight into Indian history and culture.', 4.7, 10, '2026-03-25 12:48:00.129059');
INSERT INTO public.book (book_id, title, author, price, genre_id, image_url, description, rating, stock, created_at) VALUES (58, '1001 Inventions', 'National Geographic', 499.00, 2, 'images/1001_inventions.jpg', 'Discoveries and innovations from history.', 4.6, 7, '2026-03-25 12:48:00.129059');
INSERT INTO public.book (book_id, title, author, price, genre_id, image_url, description, rating, stock, created_at) VALUES (1, 'Harry Potter and the Philosopher''s Stone', 'J.K. Rowling', 399.00, 4, 'images/harry_potter_philsophers_stone.jpg', 'A young boy discovers he is a wizard and enters a magical world.', 4.8, 20, '2026-03-26 00:24:13.550723');
INSERT INTO public.book (book_id, title, author, price, genre_id, image_url, description, rating, stock, created_at) VALUES (2, 'Atomic Habits', 'James Clear', 299.00, 9, 'images/atomic_habits.jpg', 'A practical guide to building good habits and breaking bad ones.', 4.6, 15, '2026-03-26 00:24:13.550723');
INSERT INTO public.book (book_id, title, author, price, genre_id, image_url, description, rating, stock, created_at) VALUES (4, 'The Hobbit', 'J.R.R. Tolkien', 349.00, 4, 'images/the_hobbit.jpg', 'A fantasy adventure following Bilbo Baggins on a journey with dwarves.', 4.7, 18, '2026-03-26 00:24:13.550723');
INSERT INTO public.book (book_id, title, author, price, genre_id, image_url, description, rating, stock, created_at) VALUES (5, 'Dune', 'Frank Herbert', 499.00, 5, 'images/dune.jpg', 'A science fiction epic set on the desert planet Arrakis.', 4.6, 12, '2026-03-26 00:24:13.550723');
INSERT INTO public.book (book_id, title, author, price, genre_id, image_url, description, rating, stock, created_at) VALUES (6, 'It Ends With Us', 'Colleen Hoover', 299.00, 6, 'images/it_ends_with_us.jpg', 'An emotional romance novel dealing with love and difficult choices.', 4.4, 14, '2026-03-26 00:24:13.550723');
INSERT INTO public.book (book_id, title, author, price, genre_id, image_url, description, rating, stock, created_at) VALUES (7, 'The Silent Patient', 'Alex Michaelides', 279.00, 3, 'images/the_silent_patient.jpg', 'A psychological thriller about a woman who stops speaking after a crime.', 4.5, 9, '2026-03-26 00:24:13.550723');
INSERT INTO public.book (book_id, title, author, price, genre_id, image_url, description, rating, stock, created_at) VALUES (8, 'Steve Jobs', 'Walter Isaacson', 399.00, 8, 'images/steve_jobs.jpg', 'The biography of Apple co-founder Steve Jobs.', 4.3, 7, '2026-03-26 00:24:13.550723');
INSERT INTO public.book (book_id, title, author, price, genre_id, image_url, description, rating, stock, created_at) VALUES (9, '1984', 'George Orwell', 199.00, 1, 'images/1984.jpg', 'A dystopian novel about surveillance and totalitarian control.', 4.6, 11, '2026-03-26 00:24:13.550723');
INSERT INTO public.book (book_id, title, author, price, genre_id, image_url, description, rating, stock, created_at) VALUES (10, 'To Kill a Mockingbird', 'Harper Lee', 249.00, 1, 'images/to_kill_a_mockingbird.jpg', 'A powerful story about justice, race, and morality.', 4.7, 13, '2026-03-26 00:24:13.550723');
INSERT INTO public.book (book_id, title, author, price, genre_id, image_url, description, rating, stock, created_at) VALUES (11, 'The Girl on the Train', 'Paula Hawkins', 299.00, 3, 'images/girl_on_the_train.jpg', 'A mystery thriller told through unreliable perspectives.', 4.2, 8, '2026-03-26 00:24:13.550723');
INSERT INTO public.book (book_id, title, author, price, genre_id, image_url, description, rating, stock, created_at) VALUES (13, 'Rich Dad Poor Dad', 'Robert Kiyosaki', 299.00, 9, 'images/rich_dad_poor_dad.jpg', 'Lessons about money, investing, and financial independence.', 4.4, 16, '2026-03-26 00:24:13.550723');
INSERT INTO public.book (book_id, title, author, price, genre_id, image_url, description, rating, stock, created_at) VALUES (14, 'Dracula', 'Bram Stoker', 199.00, 10, 'images/dracula.jpg', 'A classic gothic horror novel featuring Count Dracula.', 4.1, 6, '2026-03-26 00:24:13.550723');
INSERT INTO public.book (book_id, title, author, price, genre_id, image_url, description, rating, stock, created_at) VALUES (15, 'The Fault in Our Stars', 'John Green', 249.00, 6, 'images/fault_in_our_stars.jpg', 'A touching love story between two teenagers with cancer.', 4.5, 14, '2026-03-26 00:24:13.550723');
INSERT INTO public.book (book_id, title, author, price, genre_id, image_url, description, rating, stock, created_at) VALUES (16, 'The Da Vinci Code', 'Dan Brown', 349.00, 7, 'images/da_vinci_code.jpg', 'A fast-paced thriller involving secrets, symbols, and history.', 4.3, 9, '2026-03-26 00:24:13.550723');
INSERT INTO public.book (book_id, title, author, price, genre_id, image_url, description, rating, stock, created_at) VALUES (18, 'The Shining', 'Stephen King', 299.00, 10, 'images/the_shining.jpg', 'A psychological horror novel set in an isolated hotel.', 4.4, 7, '2026-03-26 00:24:13.550723');
INSERT INTO public.book (book_id, title, author, price, genre_id, image_url, description, rating, stock, created_at) VALUES (19, 'Ikigai', 'H‚ctor Garc¡a & Francesc Miralles', 279.00, 9, 'images/ikigai.jpg', 'A Japanese philosophy for finding purpose and happiness.', 4.2, 15, '2026-03-26 00:24:13.550723');
INSERT INTO public.book (book_id, title, author, price, genre_id, image_url, description, rating, stock, created_at) VALUES (20, 'The Mystery of the Nizam''s Jewels', 'Anjali Raghbeer', 249.00, 3, 'images/mystry_of_nizams_jewels.jpg', 'A mystery involving royal treasures and hidden secrets.', 4.2, 8, '2026-03-26 00:31:54.034956');
INSERT INTO public.book (book_id, title, author, price, genre_id, image_url, description, rating, stock, created_at) VALUES (3, 'The Alchemist', 'Paulo Coelho', 249.00, 1, 'images/the_alchemist.jpg', 'A philosophical story about following your dreams and listening to your heart.', 4.5, 10, '2026-03-26 00:42:02.003192');
INSERT INTO public.book (book_id, title, author, price, genre_id, image_url, description, rating, stock, created_at) VALUES (50, 'Autobiography of Mahatma Gandhi', 'M K Gandhi', 199.00, 8, 'images/mahatma_gandhi.jpg', 'Life story of Mahatma Gandhi and his principles.', 4.6, 10, '2026-03-26 00:44:44.705106');
INSERT INTO public.book (book_id, title, author, price, genre_id, image_url, description, rating, stock, created_at) VALUES (56, 'Squaring the Circle', 'Dr. A.P.J Abdul Kalam and Arun Tiwari', 299.00, 14, 'images/squaring_circle.jpg', 'A book about economic and financial concepts.', 4.0, 8, '2026-03-26 00:53:32.134768');
INSERT INTO public.book (book_id, title, author, price, genre_id, image_url, description, rating, stock, created_at) VALUES (21, 'Neuromancer', 'William Gibson', 349.00, 5, 'images/neuromancer.jpg', 'Cyberpunk classic exploring AI, hacking, and virtual reality.', 4.5, 10, '2026-03-26 01:25:48.039176');
INSERT INTO public.book (book_id, title, author, price, genre_id, image_url, description, rating, stock, created_at) VALUES (22, 'Ender''s Game', 'Orson Scott Card', 299.00, 5, 'images/enders_game.jpg', 'A child genius is trained to save humanity from alien threats.', 4.6, 10, '2026-03-26 01:25:48.039176');
INSERT INTO public.book (book_id, title, author, price, genre_id, image_url, description, rating, stock, created_at) VALUES (23, 'The Martian', 'Andy Weir', 349.00, 5, 'images/the_martian.jpg', 'An astronaut stranded on Mars must survive using science and ingenuity.', 4.7, 10, '2026-03-26 01:25:48.039176');
INSERT INTO public.book (book_id, title, author, price, genre_id, image_url, description, rating, stock, created_at) VALUES (24, 'Foundation', 'Isaac Asimov', 399.00, 5, 'images/foundation.jpg', 'Classic sci-fi series about predicting and shaping the future of a galactic empire.', 4.6, 10, '2026-03-26 01:25:48.039176');
INSERT INTO public.book (book_id, title, author, price, genre_id, image_url, description, rating, stock, created_at) VALUES (25, 'Snow Crash', 'Neal Stephenson', 349.00, 5, 'images/snow_crash.jpg', 'A cyberpunk adventure involving virtual reality and ancient Sumerian mythology.', 4.4, 10, '2026-03-26 01:25:48.039176');
INSERT INTO public.book (book_id, title, author, price, genre_id, image_url, description, rating, stock, created_at) VALUES (26, 'Ready Player One', 'Ernest Cline', 299.00, 5, 'images/ready_player_one.jpg', 'A thrilling quest in a virtual reality world full of pop culture challenges.', 4.5, 10, '2026-03-26 01:25:48.039176');
INSERT INTO public.book (book_id, title, author, price, genre_id, image_url, description, rating, stock, created_at) VALUES (27, 'Hyperion', 'Dan Simmons', 399.00, 5, 'images/hyperion.jpg', 'Epic space opera with multiple characters on a pilgrimage across a futuristic universe.', 4.6, 10, '2026-03-26 01:25:48.039176');
INSERT INTO public.book (book_id, title, author, price, genre_id, image_url, description, rating, stock, created_at) VALUES (28, 'The Left Hand of Darkness', 'Ursula K. Le Guin', 349.00, 5, 'images/left_hand_of_darkness.jpg', 'A political and social exploration on a planet with unique gender dynamics.', 4.5, 10, '2026-03-26 01:25:48.039176');
INSERT INTO public.book (book_id, title, author, price, genre_id, image_url, description, rating, stock, created_at) VALUES (29, 'Altered Carbon', 'Richard K. Morgan', 399.00, 5, 'images/altered_carbon.jpg', 'A futuristic noir story with body-swapping and a detective solving a complex mystery.', 4.4, 10, '2026-03-26 01:25:48.039176');
INSERT INTO public.book (book_id, title, author, price, genre_id, image_url, description, rating, stock, created_at) VALUES (30, 'The Three-Body Problem', 'Liu Cixin', 349.00, 5, 'images/three_body_problem.jpg', 'First book of a hard sci-fi trilogy involving alien contact and physics puzzles.', 4.6, 10, '2026-03-26 01:25:48.039176');
INSERT INTO public.book (book_id, title, author, price, genre_id, image_url, description, rating, stock, created_at) VALUES (31, 'Brave New World', 'Aldous Huxley', 299.00, 5, 'images/brave_new_world.jpg', 'Dystopian fiction exploring a highly controlled futuristic society.', 4.5, 10, '2026-03-26 01:25:48.039176');
INSERT INTO public.book (book_id, title, author, price, genre_id, image_url, description, rating, stock, created_at) VALUES (12, 'Little Fires Everywhere', 'Celeste Ng', 399.00, 1, 'images/little_fires_everywhere.jpg', 'Contemporary fiction exploring family dynamics, race, and privilege in a suburban community.', 4.5, 50, '2026-03-26 06:38:13.532704');
INSERT INTO public.book (book_id, title, author, price, genre_id, image_url, description, rating, stock, created_at) VALUES (17, 'The Night Circus', 'Erin Morgenstern', 499.00, 1, 'images/the_night_circus.jpg', 'While slightly magical, it''s essentially a character-driven romance and drama with realistic relationships.', 4.7, 30, '2026-03-26 06:38:13.532704');
INSERT INTO public.book (book_id, title, author, price, genre_id, image_url, description, rating, stock, created_at) VALUES (32, 'A Man Called Ove', 'Fredrik Backman', 349.00, 1, 'images/a_man_called_ove.jpg', 'Heartwarming contemporary fiction about a curmudgeonly man whose life is transformed by unexpected friendships.', 4.6, 40, '2026-03-26 06:38:13.532704');
INSERT INTO public.book (book_id, title, author, price, genre_id, image_url, description, rating, stock, created_at) VALUES (33, 'Normal People', 'Sally Rooney', 399.00, 1, 'images/normal_people.jpg', 'Realistic fiction following the complex relationship of two young adults navigating love, social pressures, and identity.', 4.4, 35, '2026-03-26 06:38:13.532704');
INSERT INTO public.book (book_id, title, author, price, genre_id, image_url, description, rating, stock, created_at) VALUES (34, 'The Kite Runner', 'Khaled Hosseini', 449.00, 1, 'images/the_kite_runner.jpg', 'Fictional but grounded in real historical and cultural context, exploring friendship, guilt, and redemption in Afghanistan.', 4.8, 45, '2026-03-26 06:38:13.532704');


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.users (id, email, password, role) VALUES (5, 'ab123@gmail', '456', 'customer');
INSERT INTO public.users (id, email, password, role) VALUES (6, 'ab123@gmail.com', '456', 'customer');
INSERT INTO public.users (id, email, password, role) VALUES (7, 'moonknight11@gmail.com', 'lunar11', 'customer');
INSERT INTO public.users (id, email, password, role) VALUES (11, 'xyz123@gmail.com', '1234', 'customer');
INSERT INTO public.users (id, email, password, role) VALUES (14, 'aabbcc1@gmail.com', '1122', 'customer');
INSERT INTO public.users (id, email, password, role) VALUES (4, 'abc123@gmail.com', '321', 'admin');
INSERT INTO public.users (id, email, password, role) VALUES (16, 'employee@example.com', 'emp', 'employee');


--
-- Data for Name: cart; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: orders; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.orders (order_id, total_price, payment_method, order_date, user_id) VALUES (1, 1296.00, 'UPI', '2026-03-07 08:26:01.045457', NULL);
INSERT INTO public.orders (order_id, total_price, payment_method, order_date, user_id) VALUES (2, 897.00, 'UPI', '2026-03-07 09:47:31.129968', NULL);
INSERT INTO public.orders (order_id, total_price, payment_method, order_date, user_id) VALUES (3, 299.00, 'Credit Card', '2026-03-07 09:48:08.433718', NULL);
INSERT INTO public.orders (order_id, total_price, payment_method, order_date, user_id) VALUES (4, 1126.00, 'Debit Card', '2026-03-07 10:06:15.233443', NULL);
INSERT INTO public.orders (order_id, total_price, payment_method, order_date, user_id) VALUES (5, 279.00, 'UPI', '2026-03-08 01:15:03.876174', NULL);
INSERT INTO public.orders (order_id, total_price, payment_method, order_date, user_id) VALUES (6, 299.00, 'Cash on Delivery', '2026-03-08 01:15:50.419256', NULL);
INSERT INTO public.orders (order_id, total_price, payment_method, order_date, user_id) VALUES (7, 499.00, 'Credit Card', '2026-03-08 01:20:49.865096', NULL);
INSERT INTO public.orders (order_id, total_price, payment_method, order_date, user_id) VALUES (8, 199.00, 'Cash on Delivery', '2026-03-08 03:00:08.176019', NULL);
INSERT INTO public.orders (order_id, total_price, payment_method, order_date, user_id) VALUES (9, 2395.00, 'Debit Card', '2026-03-17 09:30:02.675096', NULL);
INSERT INTO public.orders (order_id, total_price, payment_method, order_date, user_id) VALUES (10, 199.00, 'UPI', '2026-03-17 09:48:28.497456', NULL);
INSERT INTO public.orders (order_id, total_price, payment_method, order_date, user_id) VALUES (11, 399.00, 'Cash on Delivery', '2026-03-17 10:23:22.520984', NULL);
INSERT INTO public.orders (order_id, total_price, payment_method, order_date, user_id) VALUES (12, 299.00, 'UPI', '2026-03-23 04:15:27.523049', NULL);
INSERT INTO public.orders (order_id, total_price, payment_method, order_date, user_id) VALUES (13, 698.00, 'Credit Card', '2026-03-26 02:46:31.006739', NULL);
INSERT INTO public.orders (order_id, total_price, payment_method, order_date, user_id) VALUES (14, 299.00, 'Credit Card', '2026-03-26 02:52:53.301671', NULL);
INSERT INTO public.orders (order_id, total_price, payment_method, order_date, user_id) VALUES (15, 2990.00, 'Debit Card', '2026-03-26 04:11:31.844601', NULL);
INSERT INTO public.orders (order_id, total_price, payment_method, order_date, user_id) VALUES (16, 528.00, 'Debit Card', '2026-03-26 04:47:09.729028', NULL);
INSERT INTO public.orders (order_id, total_price, payment_method, order_date, user_id) VALUES (17, 947.00, 'UPI', '2026-03-26 05:01:49.958987', NULL);
INSERT INTO public.orders (order_id, total_price, payment_method, order_date, user_id) VALUES (18, 349.00, 'UPI', '2026-03-26 05:02:20.476535', NULL);
INSERT INTO public.orders (order_id, total_price, payment_method, order_date, user_id) VALUES (19, 698.00, 'Debit Card', '2026-03-26 06:50:21.442101', NULL);
INSERT INTO public.orders (order_id, total_price, payment_method, order_date, user_id) VALUES (20, 1495.00, 'Debit Card', '2026-07-03 04:21:11.487186', NULL);


--
-- Data for Name: order_items; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.order_items (id, order_id, book_id, quantity, price) VALUES (18, 13, 54, 2, 349.00);
INSERT INTO public.order_items (id, order_id, book_id, quantity, price) VALUES (19, 14, 11, 1, 299.00);
INSERT INTO public.order_items (id, order_id, book_id, quantity, price) VALUES (20, 15, 6, 10, 299.00);
INSERT INTO public.order_items (id, order_id, book_id, quantity, price) VALUES (21, 16, 7, 1, 279.00);
INSERT INTO public.order_items (id, order_id, book_id, quantity, price) VALUES (22, 16, 20, 1, 249.00);
INSERT INTO public.order_items (id, order_id, book_id, quantity, price) VALUES (23, 17, 18, 1, 299.00);
INSERT INTO public.order_items (id, order_id, book_id, quantity, price) VALUES (24, 17, 23, 1, 349.00);
INSERT INTO public.order_items (id, order_id, book_id, quantity, price) VALUES (25, 17, 6, 1, 299.00);
INSERT INTO public.order_items (id, order_id, book_id, quantity, price) VALUES (26, 18, 54, 1, 349.00);
INSERT INTO public.order_items (id, order_id, book_id, quantity, price) VALUES (27, 19, 54, 2, 349.00);
INSERT INTO public.order_items (id, order_id, book_id, quantity, price) VALUES (28, 20, 54, 2, 349.00);
INSERT INTO public.order_items (id, order_id, book_id, quantity, price) VALUES (29, 20, 56, 1, 299.00);
INSERT INTO public.order_items (id, order_id, book_id, quantity, price) VALUES (30, 20, 20, 2, 249.00);


--
-- Data for Name: reviews; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.reviews (review_id, book_id, rating, review_text, created_at) VALUES (4, 54, 4, 'Book arrived in perfect condition and on time. Very happy!', '2026-03-26 06:48:04.529784');


--
-- Name: book_book_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.book_book_id_seq', 58, true);


--
-- Name: cart_cart_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cart_cart_id_seq', 43, true);


--
-- Name: genre_genre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.genre_genre_id_seq', 14, true);


--
-- Name: order_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.order_items_id_seq', 30, true);


--
-- Name: orders_order_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.orders_order_id_seq', 20, true);


--
-- Name: reviews_review_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.reviews_review_id_seq', 4, true);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 16, true);


--
-- PostgreSQL database dump complete
--

\unrestrict cwqImHaGBDz4pviTyPTAgQSNU4XuArH8LBREWQNYWAPdgHBB2VzwycJ0yeUru9J

