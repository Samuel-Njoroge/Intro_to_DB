--- alx_book_store Database
CREATE DATABASE IF NOT EXISTS alx_book_store;

--- Books Table
CREATE TABLE IF NOT EXISTS books(
    book_id INT PRIMARY KEY,
    title VARCHAR(130),
    author_id FOREIGN KEY (author_id) REFERENCES authors(author_id),
    price DOUBLE,
    publication_date DATE
);

-----------------------------------

--- Authors Table
CREATE TABLE IF NOT EXISTS authors(
    author_id INT PRIMARY KEY,
    author_name VARCHAR(215)

);
-----------------------------------

--- Customers Table
CREATE TABLE IF NOT EXISTS customers(
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
);
-----------------------------------

--- Orders Table
CREATE TABLE IF NOT EXISTS orders(
    order_id INT PRIMARY KEY,
    customer_id INT FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    order_date DATE
);
-----------------------------------

--- Order_Details Table
CREATE TABLE IF NOT EXISTS order_details(
    orderdetailid INT PRIMARY KEY,
    order_id INT FOREIGN KEY (order_id) REFERENCES orders(order_id),
    book_id INT FOREIGN KEY (book_id) REFERENCES books(book_id),
    quantity DOUBLE
);
-----------------------------------

