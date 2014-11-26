USE OmSU;

CREATE TABLE `Department`(
    id INT(20) NOT NULL,
    name VARCHAR(50) NOT NULL,
    boss VARCHAR(50) NOT NULL,
    PRIMARY KEY(id)
) ENGINE=InnoBD CHARACTER SET=utf8;

CREATE TABLE `Group`(
    id INT(20) NOT NULL,
    name VARCHAR(50) NOT NULL,
    department_id INT(20) NOT NULL,
    PRIMARY KEY(id)
) ENGINE=InnoBD CHARACTER SET=utf8; 

CREATE TABLE `Chair`(
    id INT(20) NOT NULL,
    name VARCHAR(50) NOT NULL,
    department_id INT(20) NOT NULL,
    PRIMARY KEY(id)
) ENGINE=InnoBD CHARACTER SET=utf8; 

CREATE TABLE `Student`(
    id INT(20) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    is_head BOOLEAN NOT NULL,
    group_iden INT(20) NOT NULL,
    department_id INT(20) NOT NULL,
    chair_id INT(30),    
    PRIMARY KEY(id)
) ENGINE=InnoBD CHARACTER SET=utf8; 




