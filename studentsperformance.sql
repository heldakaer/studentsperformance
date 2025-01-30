CREATE DATABASE exams;

SELECT * FROM studentsexam;

SELECT DISTINCT race_or_ethnicity FROM studentsexam;

SELECT * FROM studentsexam
WHERE math_score = 0;

SELECT MIN(writing_score) FROM studentsexam
WHERE parental_level_of_education = "associate's degree";

SELECT * FROM studentsexam
WHERE race_or_ethnicity IN ("group A", "group B")
ORDER BY writing_score ASC;

SELECT COUNT(*) FROM studentsexam
WHERE math_score < 65 AND writing_score > 80;

SELECT DISTINCT parental_level_of_education FROM studentsexam
WHERE reading_score BETWEEN 10 AND 25;

-- query A
SELECT * FROM studentsexam
WHERE
parental_level_of_education LIKE "%high%"
AND race_or_ethnicity NOT IN ("Group A", "Group B")
AND reading_score <35;

-- query B 
SELECT * FROM studentsexam
WHERE
parental_level_of_education LIKE "high%"
AND race_or_ethnicity NOT IN ("Group A", "Group B")
AND reading_score <35;

SELECT COUNT(*) FROM studentsexam;

SELECT DISTINCT gender, AVG(reading_score) FROM studentsexam
GROUP BY gender;

SELECT DISTINCT parental_level_of_education, MAX(math_score) AS Highest_Math_Score, MIN(math_score) AS Lowest_Math_Score
FROM studentsexam
GROUP BY parental_level_of_education;

SELECT gender, test_preparation_course, 
	AVG(math_score) AS average_math,
    AVG(reading_score) AS average_reading,
    AVG(writing_score) AS average_writing
FROM studentsexam
WHERE gender = "female" AND test_preparation_course = "completed";


SELECT parental_level_of_education, AVG(writing_score) AS average_writiing
FROM studentsexam
WHERE parental_level_of_education LIKE "%high school%"
GROUP BY parental_level_of_education;

SELECT 	gender,
		race_or_ethnicity,
        test_preparation_course,
        AVG(math_score) AS avg_math_score,
        AVG(reading_score) AS avg_reading_score,
        AVG(writing_score) AS avg_writing_score
FROM studentsexam
GROUP BY gender,
		race_or_ethnicity,
        test_preparation_course
ORDER BY gender,
	race_or_ethnicity,
    test_preparation_course;

SELECT  gender,
        race_or_ethnicity,
        test_preparation_course,
        AVG(math_score) AS avg_math_score,
        AVG(reading_score) AS avg_reading_score,
        AVG(writing_score) AS avg_writing_score
FROM studentsexam
GROUP BY gender,
        race_or_ethnicity,
        test_preparation_course
HAVING avg_math_score > 70
ORDER BY gender,
    race_or_ethnicity,
    test_preparation_course;