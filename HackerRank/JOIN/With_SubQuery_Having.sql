-- https://www.hackerrank.com/challenges/challenges

WITH NEWTABLE1 AS (
    SELECT HACKERS.HACKER_ID AS ID, HACKERS.NAME AS NAME, COUNT(CHALLENGES.CHALLENGE_ID) AS TOTALCHALLENGES
    FROM HACKERS
    INNER JOIN CHALLENGES
    ON HACKERS.HACKER_ID = CHALLENGES.HACKER_ID
    GROUP BY HACKERS.HACKER_ID, HACKERS.NAME
    ORDER BY TOTALCHALLENGES DESC, HACKERS.HACKER_ID
)
SELECT ID, NAME, TOTALCHALLENGES
FROM NEWTABLE1
WHERE TOTALCHALLENGES = (SELECT MAX(TOTALCHALLENGES) FROM NEWTABLE1) 
    OR 
    TOTALCHALLENGES IN  (SELECT TOTALCHALLENGES FROM NEWTABLE1 GROUP BY TOTALCHALLENGES HAVING COUNT(TOTALCHALLENGES) = 1)
ORDER BY TOTALCHALLENGES DESC, ID;