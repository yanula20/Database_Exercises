USE `codeup_test_db;`;

DROP TABLE IF EXISTS albums;

CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name  CHAR(100) NOT NULL,
    artist CHAR(100) NOT NULL,
    release_date DATE NOT NULL,
    sales_in_millions FLOAT(10,2) UNSIGNED NOT NULL,
    genre CHAR(255) NOT NULL,
    PRIMARY KEY (id)

);




