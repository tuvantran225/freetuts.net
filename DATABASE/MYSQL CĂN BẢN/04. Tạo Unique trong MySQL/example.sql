-- Tạo trong lệnh tạo bảng
CREATE TABLE IF NOT EXISTS student(
    id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL UNIQUE
);

-- Tạo bảng trước rồi tạo unique sau
CREATE TABLE IF NOT EXISTS student(
    id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    UNIQUE(name)
);

-- Chọn nhiều fields làm unique
CREATE TABLE IF NOT EXISTS student(
    id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    UNIQUE(name),
    UNIQUE(email)
);

-- Sử dụng lệnh alter để tạo unique
CREATE TABLE IF NOT EXISTS student(
    id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);
ALTER TABLE student ADD UNIQUE(name);
ALTER TABLE student ADD UNIQUE(email);

-- Sử dụng CONSTRAINT đặt tên cho unique
CREATE TABLE IF NOT EXISTS student(
    id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    CONSTRAINT name_unique UNIQUE(name),
    CONSTRAINT email_unique UNIQUE(email)
);

CREATE TABLE IF NOT EXISTS student(
    id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);
ALTER TABLE student ADD CONSTRAINT name_unique UNIQUE(name);
ALTER TABLE student ADD CONSTRAINT email_unique UNIQUE(email);

-- Xóa (Drop) Unique trong MySQL
ALTER TABLE student DROP INDEX name_unique;