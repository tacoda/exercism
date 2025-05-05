-- Schema: CREATE TABLE "darts" ("x" REAL, "y" REAL, score INTEGER);
-- Task: update the darts table and set the score based on the x and y values.

UPDATE darts
SET score = 0
WHERE SQRT(POWER(x, 2) + POWER(y, 2)) > 10;

UPDATE darts
SET score = 1
WHERE SQRT(POWER(x, 2) + POWER(y, 2)) <= 10;

UPDATE darts
SET score = 5
WHERE SQRT(POWER(x, 2) + POWER(y, 2)) <= 5;

UPDATE darts
SET score = 10
WHERE SQRT(POWER(x, 2) + POWER(y, 2)) <= 1;
