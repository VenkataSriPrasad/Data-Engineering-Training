use sqlcodingchallenge;

CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(255),
    instructor_id INT
);

INSERT INTO Courses (course_id, course_name, instructor_id)
VALUES 
    (1, 'Python', 201),
    (2, 'Java', 202),
    (3, 'C#', 201),
    (4, 'SQL', 203);
    
    
CREATE TABLE Details (
    instructor_id INT PRIMARY KEY,
    instructor_name VARCHAR(255)
);

INSERT INTO Details (instructor_id, instructor_name)
VALUES 
    (201, 'Venkata Sri Prasad'),
    (202, 'Thiruveedula Sukhesh'),
    (203, 'Mainampati Venkatesh');
    
-- inner Join
    SELECT * FROM Courses
INNER JOIN Details ON Courses.instructor_id = Details.instructor_id;

-- left join
SELECT * FROM Courses
LEFT JOIN Details ON Courses.instructor_id = Details.instructor_id;

SELECT * FROM Courses
RIGHT OUTER JOIN Details ON Courses.instructor_id = Details.instructor_id;

SELECT * FROM Courses
FULL JOIN Details ON Courses.instructor_id = Details.instructor_id;


SELECT * FROM Courses
JOIN Details ON Courses.instructor_id = Details.instructor_id;

SELECT * FROM Courses
JOIN Details ON Courses.instructor_id > Details.instructor_id;

SELECT * FROM Courses
NATURAL JOIN Details;

SELECT c1.course_id, c1.course_name, c2.course_id AS related_course_id, c2.course_name AS related_course_name
FROM Courses c1
JOIN Courses c2 ON c1.instructor_id = c2.instructor_id
WHERE c1.course_id <> c2.course_id;



SELECT * FROM Courses
LEFT JOIN Details ON Courses.instructor_id = Details.instructor_id
UNION
SELECT * FROM Courses
RIGHT JOIN Details ON Courses.instructor_id = Details.instructor_id
WHERE Courses.instructor_id IS NULL;

