/* we can see there is a relation between submission and hacker table using hacker_id.
then we can join the submission table to challenge table using challenge id.
Similary diffculty table to challenge table using diffculty level.
From difficulty table we can see if difficulty is lets say level 1 then max score is 20, Similarly level 2 score is 30.
Submission shows the score certain person received, from there we can get the challenge id from which we get difficulty level and max score.
Hence we want the output where submission.score== difficulty.score.
Then we count the number of hackers who scored got full marks in more than 1 task
*/


Select h.hacker_id, h.name
FROM hackers h
INNER JOIN SUBMISSIONS S
ON H.HACKER_ID = S.HACKER_ID
INNER JOIN CHALLENGES C
ON S.CHALLENGE_ID = C.CHALLENGE_ID
INNER JOIN DIFFICULTY D
ON C.DIFFICULTY_LEVEL = D.DIFFICULTY_LEVEL
WHERE S.SCORE = D.SCORE AND C.DIFFICULTY_LEVEL = D.DIFFICULTY_LEVEL
GROUP BY H.HACKER_ID, H.NAME
HAVING COUNT(S.HACKER_ID) > 1
ORDER BY COUNT(S.HACKER_ID) DESC, S.HACKER_ID ASC;
