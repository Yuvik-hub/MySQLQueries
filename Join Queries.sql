SELECT
	*
FROM
	MONARCHS;

--Inner Join using clause
SELECT
	P1.PRESIDENT,
	P2.PRIME_MINISTER
FROM
	PRESIDENTS AS P1
	INNER JOIN PRIME_MINISTERS AS P2 USING (COUNTRY)
	
--Multiple Inner Join
SELECT
	PM.COUNTRY,
	PM.CONTINENT,
	PR.PRESIDENT,
	PM.PRIME_MINISTER,
	PMT.PM_START
FROM
	PRESIDENTS AS PR
	INNER JOIN PRIME_MINISTERS AS PM ON PM.COUNTRY = PR.COUNTRY
	INNER JOIN PRIME_MINISTER_TERMS AS PMT ON PMT.PRIME_MINISTER = PM.PRIME_MINISTER

-- SQL query for chaining inner joins 
SELECT  
    p1.country,  
    p1.continent,  
    president,  
    prime_minister,  
    pm_start 
FROM prime_ministers AS p1 
INNER JOIN presidents AS p2 
USING(country)  
INNER JOIN prime_minister_terms AS p3 
USING(prime_minister);
