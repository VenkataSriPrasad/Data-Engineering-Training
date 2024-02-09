-- PARTITION BY Clause &  Subtotals using RollUP

create database sqlcodingchallenge;

use sqlcodingchallenge;

CREATE TABLE course (
	Course_Name	VARCHAR(255),
    Course_Language VARCHAR(255),
    Course_Quality VARCHAR(255),
    price INT
);

INSERT INTO course (Course_Name, Course_Language, Course_Quality, price) VALUE 
('Adv AI', 'Python', 'Advance', 4000),
('Python Developer', 'Python', 'Beginner', 1000),
('Full Stack ', 'Java', 'Moderate', 4000),
('Backend Developer', 'Java', 'Advance', 3500),
('Graphic Designer', 'Python', 'Beginner', 2000);

-- PARTITION BY Clause 
SELECT
    Course_Name,
   Course_Language,
   Course_Quality,
   price,
    Avg(price) OVER (PARTITION BY Course_Quality) AS avg_price_by_type
FROM
    course;

-- Subtotals using RollUP
SELECT 
    Course_Language,
    Course_Quality,
    SUM(price) AS Subtotal
FROM 
    course
GROUP BY 
   Course_Language, Course_Quality
WITH ROLLUP;


