CREATE DATABASE ug_ce_department;
\c ug_ce_department;

CREATE SCHEMA ce;

CREATE TABLE ce.students (
  student_id SERIAL PRIMARY KEY,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  email TEXT UNIQUE NOT NULL,
  enrollment_date DATE NOT NULL,
  program TEXT NOT NULL
);

CREATE TABLE ce.courses (
  course_id SERIAL PRIMARY KEY,
  course_code TEXT UNIQUE NOT NULL,
  course_name TEXT NOT NULL,
  credits INT NOT NULL
);

CREATE TABLE ce.lecturers (
  lecturer_id SERIAL PRIMARY KEY,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  email TEXT UNIQUE NOT NULL
);

CREATE TABLE ce.tas (
  ta_id SERIAL PRIMARY KEY,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL,
  email TEXT UNIQUE NOT NULL
);

CREATE TABLE ce.enrollments (
  enrollment_id SERIAL PRIMARY KEY,
  student_id INT REFERENCES ce.students(student_id),
  course_id INT REFERENCES ce.courses(course_id),
  enrolled_on DATE NOT NULL DEFAULT CURRENT_DATE
);

CREATE TABLE ce.course_lecturers (
  id SERIAL PRIMARY KEY,
  course_id INT REFERENCES ce.courses(course_id),
  lecturer_id INT REFERENCES ce.lecturers(lecturer_id)
);

CREATE TABLE ce.course_tas (
  id SERIAL PRIMARY KEY,
  course_id INT REFERENCES ce.courses(course_id),
  ta_id INT REFERENCES ce.tas(ta_id)
);

CREATE TABLE ce.fee_payments (
  payment_id SERIAL PRIMARY KEY,
  student_id INT REFERENCES ce.students(student_id),
  amount_paid NUMERIC(10,2) NOT NULL,
  paid_on DATE NOT NULL DEFAULT CURRENT_DATE
);

CREATE TABLE ce.fee_obligations (
  student_id INT PRIMARY KEY REFERENCES ce.students(student_id),
  total_due NUMERIC(10,2) NOT NULL
);