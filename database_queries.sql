CREATE DATABASE ecommerce_ci;
USE ecommerce_ci;

CREATE TABLE categories (
    category_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    url_clean VARCHAR(100) NOT NULL,
    PRIMARY KEY (category_id)
);

CREATE TABLE posts (
    post_id INT NOT NULL AUTO_INCREMENT,
    category_id INT,
    title VARCHAR(250) NOT NULL,
    url_clean VARCHAR(250) NOT NULL,
    content TEXT NOT NULL,
    description VARCHAR(100) NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    image VARCHAR(100) NOT NULL,
    posted ENUM('si', 'no') NOT NULL DEFAULT 'no',
    PRIMARY KEY (post_id),
    FOREIGN KEY (category_id) REFERENCES categories(category_id) 
        ON DELETE SET NULL ON UPDATE CASCADE
);
