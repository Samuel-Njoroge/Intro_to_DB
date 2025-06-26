--- alx_book_store Database
CREATE DATABASE IF NOT EXISTS alx_book_store;

--- Books Table
CREATE TABLE IF NOT EXISTS books(
    book_id UUID(20) PRIMARY KEY,
    title VARCHAR(130),
    author_id FOREIGN KEY,
    price DOUBLE,
    publication_date DATE
);

-----------------------------------

--- Authors Table
CREATE TABLE IF NOT EXISTS authors(
    author_id PRIMARY KEY,
    author_name VARCHAR(215)

);
-----------------------------------

--- Customers Table
CREATE TABLE IF NOT EXISTS customers(
    customer_id PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
);
-----------------------------------

--- Orders Table
CREATE TABLE IF NOT EXISTS orders(
    order_id PRIMARY KEY,
    customer_id FOREIGN KEY,
    order_date DATE
);
-----------------------------------

--- Order_Details Table
CREATE TABLE IF NOT EXISTS order_details(
    orderdetailid PRIMARY KEY,
    order_id FOREIGN KEY,
    book_id FOREIGN KEY,
    quantity DOUBLE
);
-----------------------------------