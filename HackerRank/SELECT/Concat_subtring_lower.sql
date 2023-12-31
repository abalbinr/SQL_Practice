-- https://www.hackerrank.com/challenges/the-pads

SELECT CONCAT(NAME,"(",SUBSTRING(OCCUPATION,1,1),")") AS FIRST
FROM OCCUPATIONS
ORDER BY FIRST;

SELECT CONCAT("There are a total of ",COUNT(NAME)," ",LOWER(OCCUPATION),"s.") AS SECOND
FROM OCCUPATIONS
GROUP BY OCCUPATION
ORDER BY SECOND;