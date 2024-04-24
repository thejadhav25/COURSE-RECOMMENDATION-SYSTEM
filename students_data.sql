-- Create the new database
CREATE DATABASE IF NOT EXISTS new_student_data;
USE new_student_data;

-- Create the Student table with additional columns for each subject (out of 20 marks)
CREATE TABLE IF NOT EXISTS Student (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(200),
    last_name VARCHAR(200),
    email VARCHAR(100),
    username VARCHAR(50),
    password VARCHAR(1000),
    software_engineering INT,
    linear_algebra INT,
    object_oriented_programming INT,
    data_structure INT,
    dms INT,
    ise_software_engineering INT,  -- Additional column for Software Engineering (out of 20)
    ise_linear_algebra INT,        -- Additional column for Linear Algebra (out of 20)
    ise_object_oriented_programming INT,  -- Additional column for OOP (out of 20)
    ise_data_structure INT,         -- Additional column for Data Structure (out of 20)
    ise_dms INT                    -- Additional column for DMS (out of 20)
);

-- Insert records for 50 students with marks out of 20 for the new columns
INSERT INTO Student (student_id, first_name, last_name, email, username, password, 
    software_engineering, linear_algebra, object_oriented_programming, data_structure, dms,
    ise_software_engineering, ise_linear_algebra, ise_object_oriented_programming, ise_data_structure, ise_dms)
VALUES
    (1, 'user1', ' ', 'user1@gmail.com', 'username1', 'pass1', 30, 70, 80, 90, 60, 15, 14, 18, 19, 16),
    (2, 'user2', ' ', 'user2@gmail.com', 'username2', 'pass2', 40, 10, 80, 70, 60, 13, 11, 16, 14, 12),
    (3, 'user3', ' ', 'user3@gmail.com', 'username3', 'pass3', 60, 60, 90, 60, 40, 18, 15, 20, 15, 10),
    (4, 'user4', ' ', 'user4@gmail.com', 'username4', 'pass4', 60, 70, 80, 90, 60, 18, 19, 20, 18, 16),
    (5, 'user5', ' ', 'user5@gmail.com', 'username5', 'pass5', 60, 10, 80, 70, 60, 15, 14, 18, 19, 16),
    (6, 'user6', ' ', 'user6@gmail.com', 'username6', 'pass6', 60, 60, 90, 60, 40, 18, 15, 20, 15, 10),
    (7, 'user7', ' ', 'user7@gmail.com', 'username7', 'pass7', 60, 70, 80, 90, 60, 18, 19, 20, 18, 16),
    (8, 'user8', ' ', 'user8@gmail.com', 'username8', 'pass8', 60, 10, 80, 70, 60, 15, 14, 18, 19, 16),
    (9, 'user9', ' ', 'user9@gmail.com', 'username9', 'pass9', 60, 60, 90, 60, 40, 18, 15, 20, 15, 10),
    (10, 'user10', ' ', 'user10@gmail.com', 'username10', 'pass10', 60, 70, 80, 90, 60, 18, 19, 20, 18, 16),
    (11, 'user11', ' ', 'user11@gmail.com', 'username11', 'pass11', 65, 75, 85, 95, 65, 19, 18, 20, 19, 17),
    (12, 'user12', ' ', 'user12@gmail.com', 'username12', 'pass12', 70, 80, 90, 10, 70, 20, 20, 20, 10, 20),
    (13, 'user13', ' ', 'user13@gmail.com', 'username13', 'pass13', 75, 85, 95, 10, 75, 20, 20, 20, 10, 20),
    (14, 'user14', ' ', 'user14@gmail.com', 'username14', 'pass14', 80, 90, 10, 10, 80, 20, 20, 10, 10, 20),
    (15, 'user15', ' ', 'user15@gmail.com', 'username15', 'pass15', 85, 95, 5, 15, 85, 20, 20, 5, 15, 20),
    (16, 'user16', ' ', 'user16@gmail.com', 'username16', 'pass16', 90, 10, 10, 20, 90, 20, 10, 10, 10, 20),
    (17, 'user17', ' ', 'user17@gmail.com', 'username17', 'pass17', 95, 10, 15, 12, 95, 20, 10, 15, 12, 20),
    (18, 'user18', ' ', 'user18@gmail.com', 'username18', 'pass18', 10, 10, 12, 13, 10, 10, 10, 12, 13, 10),
    (19, 'user19', ' ', 'user19@gmail.com', 'username19', 'pass19', 15, 15, 15, 15, 15, 15, 15, 15, 15, 15),
    (20, 'user20', ' ', 'user20@gmail.com', 'username20', 'pass20', 10, 12, 10, 14, 11, 10, 12, 10, 14, 11),
    (21, 'user21', ' ', 'user21@gmail.com', 'username21', 'pass21', 11, 12, 15, 15, 15, 11, 12, 15, 15, 15),
    (22, 'user22', ' ', 'user22@gmail.com', 'username22', 'pass22', 12, 13, 14, 15, 12, 12, 13, 14, 15, 12),
    (23, 'user23', ' ', 'user23@gmail.com', 'username23', 'pass23', 12, 15, 14, 15, 15, 12, 15, 14, 15, 15),
    (24, 'user24', ' ', 'user24@gmail.com', 'username24', 'pass24', 10, 10, 15, 60, 30, 10, 10, 15, 18, 9),
    (25, 'user25', ' ', 'user25@gmail.com', 'username25', 'pass25', 15, 45, 55, 65, 15, 15, 18, 20, 20, 15),
    (26, 'user26', ' ', 'user26@gmail.com', 'username26', 'pass26', 14, 10, 16, 17, 14, 14, 10, 16, 17, 14),
    (27, 'user27', ' ', 'user27@gmail.com', 'username27', 'pass27', 15, 15, 15, 15, 15, 15, 15, 15, 15, 15),
    (28, 'user28', ' ', 'user28@gmail.com', 'username28', 'pass28', 10, 16, 10, 18, 15, 10, 16, 10, 18, 15),
    (29, 'user29', ' ', 'user29@gmail.com', 'username29', 'pass29', 15, 16, 17, 15, 15, 15, 16, 17, 15, 15),
    (30, 'user30', ' ', 'user30@gmail.com', 'username30', 'pass30', 16, 17, 18, 19, 16, 16, 17, 18, 19, 16),
    (31, 'user31', ' ', 'user31@gmail.com', 'username31', 'pass31', 16, 17, 18, 19, 16, 16, 17, 18, 19, 16),
    (32, 'user32', ' ', 'user32@gmail.com', 'username32', 'pass32', 17, 18, 10, 20, 10, 17, 18, 10, 20, 10),
    (33, 'user33', ' ', 'user33@gmail.com', 'username33', 'pass33', 75, 85, 95, 20, 75, 18, 20, 20, 20, 18),
    (34, 'user34', ' ', 'user34@gmail.com', 'username34', 'pass34', 80, 10, 20, 20, 18, 20, 10, 20, 20, 18),
    (35, 'user35', ' ', 'user35@gmail.com', 'username35', 'pass35', 85, 95, 25, 25, 85, 20, 20, 20, 20, 20),
    (36, 'user36', ' ', 'user36@gmail.com', 'username36', 'pass36', 10, 20, 10, 20, 90, 10, 20, 10, 20, 18),
    (37, 'user37', ' ', 'user37@gmail.com', 'username37', 'pass37', 19, 25, 15, 25, 95, 20, 20, 15, 20, 20),
    (38, 'user38', ' ', 'user38@gmail.com', 'username38', 'pass38', 20, 10, 22, 20, 0, 20, 10, 22, 20, 0),
    (39, 'user39', ' ', 'user39@gmail.com', 'username39', 'pass39', 25, 15, 25, 35, 5, 20, 15, 25, 20, 5),
    (40, 'user40', ' ', 'user40@gmail.com', 'username40', 'pass40', 10, 20, 30, 40, 21, 10, 20, 20, 20, 20),
    (41, 'user41', ' ', 'user41@gmail.com', 'username41', 'pass41', 25, 25, 35, 45, 15, 20, 20, 20, 20, 20),
    (42, 'user42', ' ', 'user42@gmail.com', 'username42', 'pass42', 22, 23, 20, 25, 20, 22, 23, 20, 25, 20),
    (43, 'user43', ' ', 'user43@gmail.com', 'username43', 'pass43', 22, 23, 25, 25, 25, 22, 23, 25, 25, 25),
    (44, 'user44', ' ', 'user44@gmail.com', 'username44', 'pass44', 20, 40, 50, 60, 30, 20, 40, 50, 60, 30),
    (45, 'user45', ' ', 'user45@gmail.com', 'username45', 'pass45', 25, 45, 25, 65, 35, 25, 45, 25, 65, 35),
    (46, 'user46', ' ', 'user46@gmail.com', 'username46', 'pass46', 24, 25, 26, 27, 20, 24, 25, 26, 27, 20),
    (47, 'user47', ' ', 'user47@gmail.com', 'username47', 'pass47', 24, 55, 65, 75, 45, 24, 55, 65, 75, 45),
    (48, 'user48', ' ', 'user48@gmail.com', 'username48', 'pass48', 25, 26, 27, 28, 25, 25, 26, 27, 28, 25),
    (49, 'user49', ' ', 'user49@gmail.com', 'username49', 'pass49', 25, 26, 27, 28, 25, 25, 26, 27, 28, 25),
    (50, 'user50', ' ', 'user50@gmail.com', 'username50', 'pass50', 26, 27, 28, 29, 26, 26, 27, 28, 29, 26);
