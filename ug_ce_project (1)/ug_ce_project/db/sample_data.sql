INSERT INTO ce.students (first_name, last_name, email, enrollment_date, program) VALUES
('Alice', 'Gyamfi', 'alice@ug.edu.gh', '2022-09-01', 'Computer Eng'),
('Benjamin', 'Mensah', 'ben@ug.edu.gh', '2023-09-01', 'Computer Eng'),
('Clara', 'Ofori', 'clara@ug.edu.gh', '2023-09-01', 'Computer Eng');

INSERT INTO ce.fee_obligations VALUES
(1, 10000.00), (2, 10000.00), (3, 10000.00);

INSERT INTO ce.fee_payments (student_id, amount_paid, paid_on) VALUES
(1, 2500.00, '2023-10-15'),
(1, 3000.00, '2024-01-20'),
(2, 5000.00, '2024-02-01');

INSERT INTO ce.courses (course_code, course_name, credits) VALUES
('CE101', 'Intro to Computer Eng', 3),
('CE201', 'Digital Systems', 4),
('CE301', 'Microprocessors', 3);

INSERT INTO ce.lecturers (first_name, last_name, email) VALUES
('David', 'Boateng', 'david.boateng@ug.edu.gh'),
('Edna', 'Yeboah', 'edna.yeboah@ug.edu.gh');

INSERT INTO ce.tas (first_name, last_name, email) VALUES
('Evelyn', 'Appiah', 'evelyn@app.com'),
('Frank', 'Adjei', 'frank@ug.edu.gh');

INSERT INTO ce.enrollments (student_id, course_id) VALUES
(1,1),(1,2),(2,1),(3,2),(3,3);

INSERT INTO ce.course_lecturers (course_id, lecturer_id) VALUES
(1,1),(2,2),(3,1);

INSERT INTO ce.course_tas (course_id, ta_id) VALUES
(1,1),(2,2),(3,1);