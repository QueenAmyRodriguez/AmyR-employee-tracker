DROP TABLE IF EXISTS employee;
DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS departments;



CREATE TABLE departments (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    name VARCHAR(30)
);

CREATE TABLE roles (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    title VARCHAR(30),
    salary DECIMAL,
    department_id INT,
    FOREIGN KEY (department_id) 
    REFERENCES departments(id) 
    ON DELETE SET NULL
);

CREATE TABLE employee (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    role_id INT,
    manager_id INT,
    FOREIGN KEY (role_id) 
    REFERENCES roles(id) 
    ON DELETE SET NULL,
    FOREIGN KEY (manager_id) 
    REFERENCES employee(id) 
    ON DELETE SET NULL
);