-- crear tabla
create table users (name VARCHAR(10) UNIQUE);

-- insertar de a uno
INSERT INTO users (name) values ('Bruce');

-- insertar multipes
INSERT INTO users (name) values ('Robnaldo'), ('Figo'), ('Loki');

-- actualizar
UPDATE users SET name='Ronaldo' WHERE name='Robnaldo';

-- seleccionar
SELECT * FROM users;

-- seleccionar con limite
SELECT * FROM users LIMIT 3;

-- seleccionar con paginacion ejemplo
SELECT * FROM users LIMIT 3 OFFSET 3;

-- clausula WHERE
SELECT * FROM users WHERE name='Bruce';
SELECT * FROM users WHERE name LIKE 'J%'; --nombre que empiece con J
SELECT * FROM users WHERE name LIKE '%a%'; --nombre que contengan a

-- eliminar registros
DELETE FROM users WHERE name='Martin'; --elimino un registro
DELETE FROM users WHERE name LIKE '%a%'; -- elimino los registros que contengan a
DELETE FROM users; -- CUIDADO elimina todos los registros

-- eliminar tabla
DROP TABLE users;

-- borrar datos de una tabla
TRUNCATE TABLE users; -- elimina los datos pero la tabla se mantiene

----------------------------------------------------- STRING OPERATORS AND FUNCTIONS
SELECT
	id,
	UPPER(name) AS upper_name,
	LOWER(name) AS lower_name,
	LENGTH(name) AS _length,
	(20 * 2) AS constante,
	'*'||id||'-'||name||'*' as barcode,
	concat( '*',id,'-',name,'*'),
	name

FROM
	users;
	

------------------------------------------------------ SUBSTRING AND POSITION
SELECT
    name,
    SUBSTRING(name, 0, 5),
    POSITION(' ' in name),
    SUBSTRING(name, 0, POSITION(' ' in name)) AS first_name,
    SUBSTRING(name, POSITION(' ' in name) + 1) AS last_name,
    TRIM(SUBSTRING(name, POSITION(' ' in name))) AS trimed_last_name
FROM
    users;


-------------------------------------------------------- AGREGAR FIRSTNAME Y LASTNAME EN NUEVAS COLUMNAS DE LA TABLA
UPDATE
	users
SET
	first_name = SUBSTRING(name, 0, POSITION(' ' in name)),
    last_name =  SUBSTRING(name, POSITION(' ' in name) + 1)

SELECT * from users;