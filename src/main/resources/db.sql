-- Drop tables
DROP TABLE if exists user_roles;
DROP TABLE if exists roles;
DROP TABLE if exists users;

-- Table: users
CREATE TABLE users
(
    id       INT          NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name    VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    email    VARCHAR(255) NOT NULL
)
    ENGINE = InnoDB;

-- Insert data
INSERT INTO users
VALUES (1, 'San', 'San', 'San@mail.ru');

INSERT INTO users
VALUES (2, 'test', 'test', 'test@test.ru');

INSERT INTO users
VALUES (3, 'ADMIN', 'admin', 'admin@ru');