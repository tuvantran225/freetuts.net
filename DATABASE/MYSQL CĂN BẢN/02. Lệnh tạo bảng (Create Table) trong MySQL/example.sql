USE student_management;
CREATE TABLE IF NOT EXISTS student (
    name VARCHAR(255) DEFAULT 'noname',
    id INT(11) NOT NULL,
    year_of_birth INT(11)
) ENGINE = innoDB;

DROP TABLE student;