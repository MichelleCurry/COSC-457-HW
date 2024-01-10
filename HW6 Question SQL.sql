USE `mcurry6db` ;

/* Michelle Curry
* 457 HW 6
* 1.
*/
SELECT s_name AS  "Supplier name", s_num AS  "Supplier num"
FROM s, p
WHERE p_num = "p3"
  AND s_name LIKE "A%";
  
/* Michelle Curry
* 457 HW 6
* 2.
*/
SELECT s_name AS "Supplier name"
FROM s
WHERE s_num IN (
    SELECT s_num
    FROM SPJ
    WHERE j_num = 'j2'
);

/* Michelle Curry
* 457 HW 6
* 3.
*/
SELECT s_name AS "Supplier name"
FROM s
WHERE s_num IN (

    SELECT s_num
		FROM SPJ
		WHERE s_num NOT IN (

			SELECT s_num
			FROM SPJ
			WHERE j_num IN (
				SELECT j_num
				FROM j
				WHERE city = "Athens"
				)
			AND j_num NOT IN (
					SELECT j_num
					FROM j
					WHERE city != "Athens"
)));

/* Michelle Curry
* 457 HW 6
* 4.
*/
SELECT pname AS "Part name"
FROM p
WHERE p_num NOT IN (
    SELECT p_num
    FROM SPJ
    WHERE j_num = "j3"
);

/* Michelle Curry
* 457 HW 6
* 5.
*/
SELECT city
FROM s
GROUP BY city
HAVING COUNT(*) = (
    SELECT MAX(city_count)
    FROM (
        SELECT COUNT(*) AS city_count
        FROM s
        GROUP BY city
    ) AS city_counts
);

/* Michelle Curry
* 457 HW 6
* 6.
*/
SELECT s_name
FROM s
WHERE s_num IN (
    SELECT s_num
    FROM SPJ
    GROUP BY s_num
    HAVING SUM(qty) > 1000
);

/* Michelle Curry
* 457 HW 6
* 7.
*/
UPDATE s
SET status = status + 5
WHERE city = 'Paris';
SELECT * FROM mcurry6db.s;

/* Michelle Curry
* 457 HW 6
* 8.
*/
UPDATE p
SET pname = 'Hammer'
WHERE color = 'Red' 
    AND city = 'London'
    AND pname = 'Screw';
                   
/* Michelle Curry
* 457 HW 6
* 9.
*/
DELETE FROM j
Where city = "Rome";

DELETE FROM SPJ
WHERE j_num NOT IN(
    SELECT j_num
    FROM j
);

/* Michelle Curry
* 457 HW 6
* 10.
*/
Update s
SET city = (
			SELECT city
            FROM s
            WHERE s_name = "Adams"
            )
WHERE s_name = "Smith";

SELECT * FROM mcurry6db.s;











