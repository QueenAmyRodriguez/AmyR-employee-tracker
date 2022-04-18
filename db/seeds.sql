INSERT INTO departments (name)
VALUES
    ('Sales'),
    ('Engineering'),
    ('Finance'),
    ('Legal'),
    ('Social Media'),
    ('Web Development'),
    ('Human Resources');


INSERT INTO roles (title, salary, department_id)
VALUES
    ('Salesperson', 100000, 1),
    ('Lead Engineer', 150000, 2),
    ('Account Manager', 45000, 3),
    ('Legal Team Lead', 200000, 4),
    ('Lawyer', 120000, 5),
    ('Software Engineer', 250000, 6),
    ('Project Manager', 300000, 7),
    ('Web Developer', 80000, 1),
    ('Social Media Specialist', 42000, 2),
    ('HR Manager', 75000, 3);


INSERT INTO employee (first_name, last_name, role_id)
VALUES
    ('Caprial', 'Grow', 1),
    ('Brandon', 'Petty', 2),
    ('Brennan', 'Plie', 3),
    ('Smelissa', 'Rank', 4),
    ('Pluto', 'Desun', 5),
    ('Taylor', 'Laurent', 5);

