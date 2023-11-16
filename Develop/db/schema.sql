-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

USE ecommerce_db;

-- -- Drop foreign key constraints
-- ALTER TABLE `product_tag` DROP FOREIGN KEY `producttag_ibfk_2`;

-- -- Drop tables if they exist
-- DROP TABLE IF EXISTS `product_tag`;
-- DROP TABLE IF EXISTS `tag`;
-- DROP TABLE IF EXISTS `product`;
-- DROP TABLE IF EXISTS `category`;

-- -- Re-enable foreign key checks
-- ALTER TABLE `product_tag` ADD FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`);

-- -- Create the Category table
-- CREATE TABLE Category (
--     id INT NOT NULL AUTO_INCREMENT,
--     category_name VARCHAR(255) NOT NULL,
--     PRIMARY KEY (id)
-- );

-- -- Create the Product table
-- CREATE TABLE Product (
--     id INT NOT NULL AUTO_INCREMENT,
--     product_name VARCHAR(255) NOT NULL,
--     price DECIMAL(10, 2) NOT NULL,
--     stock INT NOT NULL DEFAULT 10,
--     category_id INT,
--     PRIMARY KEY (id),
--     FOREIGN KEY (category_id) REFERENCES Category(id)
-- );

-- -- Create the Tag table
-- CREATE TABLE Tag (
--     id INT NOT NULL AUTO_INCREMENT,
--     tag_name VARCHAR(255) NOT NULL,
--     PRIMARY KEY (id)
-- );

-- -- Create the ProductTag table
-- CREATE TABLE ProductTag (
--     id INT NOT NULL AUTO_INCREMENT,
--     product_id INT,
--     tag_id INT,
--     PRIMARY KEY (id),
--     FOREIGN KEY (product_id) REFERENCES Product(id),
--     FOREIGN KEY (tag_id) REFERENCES Tag(id)
-- );