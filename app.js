const mysql = require('mysql2');
const express = require('express');
const session = require('express-session');
const path = require('path');

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '9730633221',
    database: 'new_student_data' // Updated database name
});

const app = express();

app.use(session({
    secret: 'secret',
    resave: true,
    saveUninitialized: true
}));

app.use(express.json());
app.use(express.urlencoded({ extended: true }));
app.use(express.static(path.join(__dirname, 'public')));

app.get('/', function (request, response) {
    response.sendFile(path.join(__dirname, '/views/login.html'));
});

app.post('/auth', function (request, response) {
    let username = request.body.username;
    let password = request.body.password;

    if (username && password) {
        connection.query('SELECT * FROM Student WHERE username = ? AND password = ?', [username, password], function (error, results, fields) {
            if (error) throw error;

            if (results.length > 0) {
                request.session.loggedin = true;
                request.session.username = username;
                response.redirect('/welcome');
            } else {
                response.send('Incorrect Username and/or Password!');
            }

            response.end();
        });
    } else {
        response.send('Please enter Username and Password!');
        response.end();
    }
});

app.get('/welcome', function (request, response) {
    if (request.session.loggedin) {
        let username = request.session.username;
        connection.query('SELECT * FROM Student WHERE username = ?', [username], function (error, results, fields) {
            if (error) throw error;

            if (results.length > 0) {
                const user = results[0];

                // Log user object to console for debugging
                console.log(user);

                // Display student's name
                const studentName = user.name; // Assuming the name field exists in your Student table

                // Display marks for regular subjects
                const subjects = [
                    { name: 'Software Engineering', code: 'software_engineering', courseraLink: 'https://www.coursera.org/courses?query=software%20engineering' },
                    { name: 'Linear Algebra', code: 'linear_algebra', courseraLink: 'https://www.coursera.org/courses?query=linear%20algebra' },
                    { name: 'Object Oriented Programming', code: 'object_oriented_programming', courseraLink: 'https://www.coursera.org/specializations/object-oriented-programming' },
                    { name: 'Data Structure', code: 'data_structure', courseraLink: 'https://www.coursera.org/courses?query=data%20structure' },
                    { name: 'DMS', code: 'dms', courseraLink: 'https://www.coursera.org/specializations/discrete-mathematics' }
                ];

                let welcomeMessage = `<p>Welcome, ${username}!</p>`;

                for (const subject of subjects) {
                    const subjectName = subject.name;
                    const subjectCode = subject.code;
                    const subjectMarks = user[subjectCode];

                    welcomeMessage += `<p>${subjectName}: ${subjectMarks}</p>`;

                    // Check if marks are less than 55 before recommending videos
                    if (subjectMarks < 55) {
                        // Redirect to YouTube search for the subject
                        welcomeMessage += `<p>Search on YouTube: <a href="https://www.youtube.com/results?search_query=${subjectName.replace(' ', '+')}+tutorial" target="_blank">Videos</a></p>`;
                    }

                    // Check if marks are below 50 to provide Coursera links
                    if (subjectMarks < 50) {
                        // Add Coursera links based on subject
                        welcomeMessage += `<p>Explore Coursera for ${subjectName}: <a href="${subject.courseraLink}" target="_blank">Courses</a></p>`;
                    }
                }

                welcomeMessage += `<a href="/logout">Logout</a>`;
                response.send(welcomeMessage);
            } else {
                response.send('User not found.');
            }

            response.end();
        });
    } else {
        response.redirect('/');
    }
});

app.get('/logout', function (request, response) {
    request.session.loggedin = false;
    request.session.username = null;
    response.redirect('/');
});

app.listen(3000, () => {
    console.log('Server is running on port 3000');
});
