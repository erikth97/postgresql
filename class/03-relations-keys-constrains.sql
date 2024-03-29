
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


------------------------------------------------------------------- FOREING KEY
select * from country;
select * from city;

ALTER TABLE
	ADD CONSTRAINT fk_country_code
	FORGEIN KEY ( countrycode )
	REFERENCES country( code ); ---- on delete cascade
	
INSERT INTO country
		values('AFG', 'Afghanistan', 'Asia', 'Southern Asia', 652860, 1919, 40000000, 62, 69000000, NULL, 'Afghanistan', 'Totalitarian', NULL, NULL, 'AF');


-------------------------------------------------------------------------------------- FK COUNTRYLANGUAGE

ALTER TABLE countrylanguage
	ADD CONSTRAINT fk_contry_code
	FOREIGN KEY  ( countrycode )
	REFERENCES country ( code )

DELETE FROM country WHERE CODE = 'AFG'; // VEO QUE ME LANZA UN ERROR QUE VIOLA FK CONTRAINT