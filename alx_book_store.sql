CREATE DATABASE ALX_BOOK_STORE;
USE ALX_BOOK_STORE;

CREATE TABLE AUTHORS (
    author_id INT NOT NULL AUTO_INCREMENT,
    author_name VARCHAR(215) NOT NULL,
    PRIMARY KEY (author_id)
);

CREATE TABLE BOOKS (
    book_id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(130) NOT NULL,
    author_id INT NOT NULL,
    price DOUBLE NOT NULL,
    publication_date DATE,
    PRIMARY KEY (book_id),
    FOREIGN KEY (author_id) REFERENCES AUTHORS(author_id)
);

CREATE TABLE CUSTOMERS (
    customer_id INT NOT NULL AUTO_INCREMENT,
    customer_name VARCHAR(215) NOT NULL,
    email VARCHAR(215) NOT NULL,
    address TEXT,
    PRIMARY KEY (customer_id)
);

CREATE TABLE ORDERS (
    order_id INT NOT NULL AUTO_INCREMENT,
    customer_id INT NOT NULL,
    order_date DATE,
    PRIMARY KEY (order_id),
    FOREIGN KEY (customer_id) REFERENCES CUSTOMERS(customer_id)
);

CREATE TABLE ORDER_DETAILS (
    orderdetailid INT NOT NULL AUTO_INCREMENT,
    order_id INT NOT NULL,
    book_id INT NOT NULL,
    quantity DOUBLE NOT NULL,
    PRIMARY KEY (orderdetailid),
    FOREIGN KEY (order_id) REFERENCES ORDERS(order_id),
    FOREIGN KEY (book_id) REFERENCES BOOKS(book_id)
);