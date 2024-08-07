#Task 1: SQL Data Insertion

CREATE DATABASE firness_center_db;

CREATE TABLE Members (
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT
);

CREATE TABLE WorkoutSessions (
	session_id INT AUTO_INCREMENT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members (id)
);

SELECT * FROM Members;
SELECT * FROM WorkoutSessions;

INSERT INTO Members (name, age)
VALUES ('Jeff Stevenson', 30),
('Carla Moore', 22),
('Bob Roberts', 57);

INSERT INTO WorkoutSessions (member_id, session_date, session_time, activity)
VALUES (1, '2024-08-15', '10:00 AM', 'HIIT'),
(1, '2024-08-17', '4:00 PM', 'Cardio'),
(2, '2024-08-13', '6:00 PM', 'Strength Training'),
(2, '2024-08-14', '09:00 AM', 'Cardio'),
(3, '2024-08-16', '12:00 PM', 'Cardio');

#Task 2: SQL Data Update

INSERT INTO Members (name, age)
VALUES ('Jane Doe', 33);

INSERT INTO WorkoutSessions (member_id, session_date, session_time, activity)
VALUES (4, '2023-08-16', '8:00 AM', 'HIIT');

UPDATE WorkoutSessions
SET session_time = '6:00 PM'
WHERE member_id = 4;

#Task 3: SQL Data Deletion

INSERT INTO Members (name, age)
VALUES ('John Doe', 25);

INSERT INTO WorkoutSessions (member_id, session_date, session_time, activity)
VALUES (5, '2023-08-13', '3:00 PM', 'Pilates'),
(5, '2023-08-17', '11:00 AM', 'Circuit Training');

DELETE FROM WorkoutSessions
WHERE member_id = 5;

DELETE FROM Members
WHERE id = 5;