use assesment;
 SELECT * FROM school ; 
 SELECT StdName, DOB 
FROM school;
SELECT * FROM school WHERE percentage >= 80;
SELECT StdName, Stream, Percentage from school WHERE percentage > 80;  
SELECT *
FROM school
WHERE Stream = 'Science' AND Percentage > 75;
