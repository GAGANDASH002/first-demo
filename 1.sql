SHOW DATABASES;
CREATE DATABASE IF NOT EXISTS user;
USE user;

-- displays database currently being used
SELECT database();

-- creating table

CREATE TABLE employee(
	-- starts the EID value from 1 by default and keeps incrementing
	EID INT AUTO_INCREMENT,
    firstname VARCHAR(50) NOT NULL,
    lastname VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    salary INT NOT NULL,
    location VARCHAR(50) NOT NULL,
    PRIMARY KEY(EID)
);  

DESC employee;

SHOW TABLES;

-- inserting values if a single property has property such as AUTO_INCREMENT
INSERT INTO employee (firstname,lastname,age,salary,location)VALUES("Priya","KumarI",20,20500,"Mumbai");
INSERT INTO employee (firstname,lastname,age,salary,location)VALUES("Megha","SingH",25,20000,"Chennai");
INSERT INTO employee (firstname,lastname,age,salary,location)VALUES("AniL","Kapoor",28,200000,"London");
INSERT INTO employee (firstname,lastname,age,salary,location)VALUES("Virat","Bansal",40,14000,"Mumbai");
INSERT INTO employee (firstname,lastname,age,salary,location)VALUES("Anubhav","Dash",35,250000,"Bangalore");
INSERT INTO employee (firstname,lastname,age,salary,location)VALUES("Supriya","Sule",26,30000,"Pune");
INSERT INTO employee (firstname,lastname,age,salary,location)VALUES("Rahul","Dev",29,10000,"California");

SELECT * FROM employee;


-- Give me the employee details of employees having salary more than 1,00,000
SELECT * FROM employee WHERE salary > 100000;

-- Give me the records of employee having age more than 25
SELECT * FROM employee WHERE age > 25;

-- Update the last name of Priya with Bhatt
-- UPDATE is used to update the records of the table whereas ALTER changes the schema of the table

UPDATE employee SET lastname = "Bhatt"
WHERE EID = 1;