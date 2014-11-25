USE OmSU

CREATE TABLE `Department`(
    id INT(20) NOT NULL,
    name VARCHAR(50) NOT NULL,
    PRIMARY KEY(id)
) ENGINE=InnoBD CHARACTER SET=utf8;

CREATE UNIQUE INDEX
`Department_unique` ON
Department(name);

CREATE TABLE `_Group`(
    id INT(20) NOT NULL,
    name VARCHAR(50) NOT NULL,
    department_id INT(20) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(department_id) REFERENCES
	Department(id)
) ENGINE=InnoBD CHARACTER SET=utf8; 

CREATE UNIQUE INDEX
`_Groupe_unique` ON 
_Group(department_id, name);

CREATE TABLE `Chair`(
    id INT(20) NOT NULL,
    name VARCHAR(50) NOT NULL,
    department_id INT(20) NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(department_id) REFERENCES
	Department(id)
) ENGINE=InnoBD CHARACTER SET=utf8; 

CREATE UNIQUE INDEX
`Chair_unique` ON
Chair(department_id, name);

CREATE TABLE `Student`(
    id INT(20) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    is_head BOOLEAN NOT NULL,
    group_iden INT(20) NOT NULL,
    department_id INT(20) NOT NULL,
    chair_id INT(30),    
    PRIMARY KEY(id),
    FOREIGN KEY(department_id) REFERENCES
	Department(id),
    FOREIGN KEY(group_iden) REFERENCES
	_Group(id),
    FOREIGN KEY(chair_id) REFERENCES
	Chair(id) 
) ENGINE=InnoBD CHARACTER SET=utf8; 

CREATE UNIQUE INDEX
`Student_unique` ON
Student(group_iden, department_id, first_name);


