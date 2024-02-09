Create database student;

use student;

CREATE TABLE Student (
    RollNo INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Address VARCHAR(255),
    Phone VARCHAR(15),
    Age INT
);


INSERT INTO Student (RollNo, Name, Address, Phone, Age)
VALUES
(1, 'Harsh', 'Delhi', '123123123', 18),
(2, 'Pratik' , 'BIHAR', '123123123', 19),
(3, 'RIYANKA', 'SILIGURI', '123123123', 20),
(4, 'DEEP' , 'RAMNAGAR', '123123123', 18),
(5, 'SAPTARHI', 'KOLKATA', '123123123', 19),
(6, 'DHANRAJ' , 'BARABAJAR', '123123123', 20),
(7, 'ROHIT', 'BALURGHAT', '123123123', 18),
(8, 'NIRAJ' , 'ALIPUR', '123123123', 19)
;


CREATE TABLE STUDENT_COURSE(
	COURSE_ID INT ,
    ROLL_NO INT
);

INSERT INTO STUDENT_COURSE (COURSE_ID , ROLL_NO)
VALUES
(1, 1),
(2,2),
(2,3),
(3,4),
(1,5),
(1,5),
(4,9),
(5,10),
(4,11)
;

SELECT Student_COURSE.COURSE_ID, Student.NAME, Student.AGE FROM Student
INNER JOIN Student_Course
ON Student.ROLLNO = Student_Course.ROLL_NO;

SELECT Student.NAME,Student_Course.COURSE_ID 
FROM Student
LEFT JOIN Student_Course 
ON Student_Course.ROLL_NO = Student.ROLLNO;

SELECT Student.NAME,Student_Course.COURSE_ID 
FROM Student
RIGHT JOIN Student_Course 
ON Student_Course.ROLL_NO = Student.ROLLNO;

SELECT Student.NAME, Student_Course.COURSE_ID 
FROM Student
FULL JOIN Student_Course 
ON Student_Course.ROLL_NO = Student.ROLLNO;

SELECT Student.NAME, Student_Course.COURSE_ID 
FROM Student
LEFT JOIN Student_Course 
ON Student_Course.ROLL_NO = Student.ROLLNO
UNION
SELECT Student.NAME, Student_Course.COURSE_ID 
FROM Student
RIGHT JOIN Student_Course 
ON Student_Course.ROLL_NO = Student.ROLLNO;

SELECT *
FROM Student
NATURAL JOIN Student_Course;
