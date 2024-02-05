
----------------------------------------------------- BETWEEN OPERATOR
SELECT
    first_name,
    last_name,
    followers
from
    users
WHERE
   ---followers > 4600 AND followers <4700
   followers BETWEEN 4600 and 4700 
ORDER BY
	followers ASC
	

---------------------------------------------------- AGREGATION FUNCTION: MIN / MAX / COUNT / ROUDING / AVG 
SELECT
    COUNT (*) AS total_users,
    MIN(followers) AS min_followers,
    MAX (followers) AS max_followers,
    ROUND( AVG( followers ) ) AS avg_followers,
    SUM (followers) / count(*) AS avg_manual
FROM
    users;
    
    
--------------------------------------------------- GROUP BY
SELECT
	first_name,
	last_name,
	followers
FROM
users
WHERE
followers = 4 or followers = 4999

SELECT	
	COUNT(*),
	followers
FROM
	users
WHERE
	followers BETWEEN 4500 AND 4999
GROUP BY
	followers
ORDER BY
	followers DESC;

SELECT
	COUNT(*),
	followers
FROM
	users
WHERE
	followers = 4 or followers = 4999
GROUP BY
	followers;
	
	
----------------------------------------------------- HAVING
SELECT
    COUNT(*) AS TOTAL,
    country
FROM
    users
GROUP BY
    country
HAVING
    COUNT(*) > 5
ORDER BY
    COUNT(*) DESC;
    
SELECT
    COUNT(*) AS TOTAL,
    country
FROM
    users
GROUP BY
    country
HAVING
    COUNT(*) BETWEEN 1 AND 5
ORDER BY
    COUNT(*) DESC;
    
    
------------------------------------------------------ DISTINCT
SELECT
DISTINCT
country
FROM
users;


------------------------------------------------------- GROUP BY
SELECT
	COUNT(*),
	SUBSTRING(email, POSITION('@' IN email) + 1) AS DOMAIN
FROM
	users
GROUP BY
	SUBSTRING(email, POSITION('@' IN email) + 1)
HAVING
	COUNT(*) > 1
ORDER BY
	SUBSTRING(email, POSITION('@' IN email) + 1) ASC;
	

------------------------------------------------------- SUBQUERIES
SELECT
	*
FROM (
	SELECT
		COUNT(*) as total,
		SUBSTRING(email, POSITION('@' IN email) + 1) AS DOMAIN
	FROM
		users
	GROUP BY
		SUBSTRING(email, POSITION('@' IN email) + 1)
	HAVING
		COUNT(*) > 1
	ORDER BY
		SUBSTRING(email, POSITION('@' IN email) + 1) ASC
	  ) AS email_domains;

