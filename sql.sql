
 SELECT GetTotalMarks(34) AS total_marks;

use student_details;
describe students;
select*from students;
SELECT JSON_UNQUOTE(JSON_EXTRACT(student_data, '$.marks[1]'))  AS second_mark
FROM students
WHERE student_id = 33;
DELIMITER $$
CREATE PROCEDURE createJsonData(
IN inputJson JSON
) 
BEGIN 
	INSERT INTO students (student_data) VALUES (inputJson) ;
END $$
 
DELIMITER ;
DELIMITER $$
CREATE PROCEDURE readJsonData(
IN studentId INT)
BEGIN
SELECT student_data FROM students WHERE student_id= studentId;
END $$
DELIMITER ;
DELIMITER $$
CREATE PROCEDURE deleJsonData(
IN studentId INT)
BEGIN
DELETE FROM students WHERE  student_id=studentId;
END $$
DELIMITER ;
DELIMITER $$
CREATE PROCEDURE updateJsonData(
IN jsondata json, studentID INt)
BEGIN
UPDATE students SET student_data = jsondata  WHERE student_id = studentID;
END$$




 call readJsonData(42);
 CALL deleJsonData(21);

DELIMITER $$

CREATE FUNCTION GetTotalMarks(student_id INT)
RETURNS INT
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE total_marks INT DEFAULT 0;
    DECLARE array_length INT;
    DECLARE i INT DEFAULT 0;
    DECLARE current_mark INT;


    SELECT JSON_LENGTH(student_data->'$.marks') INTO array_length
    FROM students
    WHERE students.student_id = student_id;

    -- Loop through the array and sum the values
    WHILE i < array_length DO
        -- Generate the JSON path and extract the value into current_mark
        SELECT JSON_UNQUOTE(JSON_EXTRACT(student_data, CONCAT('$.marks[', i, ']'))) INTO current_mark
        FROM students
        WHERE students.student_id = student_id;
        
        
        SET total_marks = total_marks + current_mark;
        SET i = i + 1;
    END WHILE;

    RETURN total_marks;
END $$

DELIMITER ;

SELECT $.Name from students where student_id=4;


