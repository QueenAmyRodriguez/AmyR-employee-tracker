require('dotenv').config();
const inquirer = require('inquirer');
const cTable = require('console.table');

// get the client
const mysql = require('mysql2');

// create the connection to database
const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: process.env.DB_PASSWORD,
    database: process.env.DB_NAME
});

let questionChoices = {
    type: 'list',
    name: 'choseOne',
    message: 'What would you like to do?',
    choices: ['View All Departments', 'View All Roles', 'View All Employees', 'Add A Department', 'Add A Role', 'Add An Employee', 'Update An Employee Role']
}

function init() {
    inquirer
        .prompt(questionChoices)
        .then((choice) => {
            console.log(choice);
            switch (choice.choseOne) {
                case "View All Departments":
                    printDepartments();
                    init();
                    break;
                case "View All Roles":
                    printRoles();
                    init();
                    break;
                case "View All Employees":
                    printEmployees();
                    init();
                    break;
                case "Add A Department":
                    console.log('add');
                    init();
                    break;
                case "Add A Role":
                    console.log('add');
                    init();
                    break;
                case "Add An Employee":
                    console.log('add');
                    init();
                    break; case "Update An Employee":
                    console.log('add');
                    init();
                    break;
            }
        })
}

function printDepartments() {
    db.query("SELECT * FROM departments", function (err, result) {
        const table = cTable.getTable(result);
        console.log(table);
    });
}

function printRoles() {
    db.query("SELECT * FROM roles", function (err, result) {
        const table = cTable.getTable(result);
        console.log(table);
    });
}

function printEmployees() {
    db.query("SELECT * FROM employee", function (err, result) {
        const table = cTable.getTable(result);
        console.log(table);
    });
}

init();