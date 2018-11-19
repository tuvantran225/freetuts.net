USE student_management;

-- Tạo trong lệnh tạo bảng
CREATE TABLE IF NOT EXISTS student(
    name VARCHAR(255) DEFAULT 'no name',
    id INT(11) NOT NULL PRIMARY KEY,
    year_of_birth INT(11)
) ENGINE = INNODB;

-- Tạo bảng trước rồi tạo khóa chính sau
CREATE TABLE IF NOT EXISTS student(
    name VARCHAR(255) DEFAULT 'no name',
    id INT(11) NOT NULL,
    year_of_birth INT(11),
    PRIMARY KEY(id)
) ENGINE = INNODB;

-- Chọn nhiều fields làm khóa chính
CREATE TABLE IF NOT EXISTS student(
    name VARCHAR(255) NOT NULL DEFAULT 'no name',
    id INT(11) NOT NULL,
    year_of_birth INT(11),
    PRIMARY KEY(name, id)
) ENGINE = INNODB;

-- Sử dụng lệnh alter để tạo khóa chính
CREATE TABLE IF NOT EXISTS student(
    name VARCHAR(255) DEFAULT 'no name',
    id INT(11) NOT NULL,
    year_of_birth INT(11)
) ENGINE = INNODB;
ALTER TABLE student ADD PRIMARY KEY(id);

-- Sử dụng CONSTRAINT đặt tên cho khóa chính
CREATE TABLE IF NOT EXISTS student(
    name VARCHAR(255) DEFAULT 'no name',
    id INT(11) NOT NULL,
    year_of_birth INT(11),
    CONSTRAINT pk_student PRIMARY KEY(id)
) ENGINE = INNODB;

CREATE TABLE IF NOT EXISTS student(
    name VARCHAR(255) DEFAULT 'no name',
    id INT(11) NOT NULL,
    year_of_birth INT(11)
) ENGINE = INNODB;
ALTER TABLE student ADD CONSTRAINT pk_student PRIMARY KEY(id);

-- Xóa khóa chính (Drop Primary Key)
ALTER TABLE student DROP PRIMARY KEY;