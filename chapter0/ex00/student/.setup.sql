CREATE DATABASE Programs;
USE Programs;

CREATE TABLE calendar (
    id INT AUTO_INCREMENT PRIMARY KEY,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    event_name VARCHAR(255) NOT NULL,
    event_date DATE NOT NULL,
    event_time TIME DEFAULT NULL,
    description TEXT DEFAULT NULL
);

INSERT INTO calendar (event_name, event_date, event_time, description)
VALUES
('Doctor''s Appointment', '2022-11-19', '09:00:00', 'Doctor''s appointment for annual checkup'),
('Soccer Game', '2022-11-20', '15:00:00', 'Soccer game with friends'),
('Dentist', '2022-11-21', '10:00:00', 'Dentist appointment'),
('Meeting', '2022-11-22', '14:00:00', 'Meeting with the team');
