
---------------------------------------------------------------------- PRIMARY KEY
SELECT
	*
FROM
	country;
	
DELETE FROM country WHERE code = 'NLD' AND code2 = 'NA';

ALTER TABLE country
	ADD PRIMARY KEY (code);


------------------------------------------------------------------------ CHECK
SELECT 
	*
FROM
country;

ALTER TABLE country ADD CHECK (
	surfacearea >= 0
	);


------------------------------------------------------------------------ CHECK MULTIPLE AND STRING 
SELECT
    DISTINCT CONTINENT
FROM
    COUNTRY
    
ALTER TABLE COUNTRY ADD CHECK (
        (continent = 'Asia' :: text) or
        (continent = 'South America' :: text) or 
        (continent = 'North America' :: text) or
        (continent = 'Oceania' :: text) or
        (continent = 'Antarctica' :: text) or
        (continent = 'Africa' :: text) or
        (continent = 'Europe' :: text) or
        (continent = 'Central America' :: text)
    );
    
   
----------------------------------------------------------------------- ALTER TABLE - DROP CONSTRAINT 
ALTER TABLE COUNTRY DROP CONSTRAINT "country_continent_check"

select * from country where code = 'CRI';


------------------------------------------------------------------------ INDEX

SELECT
    *
FROM
    COUNTRY
WHERE
    CONTINENT = 'Africa';
    
CREATE INDEX "country_continent" on country (continent);

CREATE UNIQUE INDEX "unique_name_countrycode_district" ON city (name, countrycode, district);4

CREATE INDEX "index_destrict" ON CITY (DISTRICT);
