 /*車站代號,車站中文名稱,車站英文名稱,*/
 CREATE TABLE IF NOT EXISTS stations2 (
    id SERIAL PRIMARY KEY,
    code VARCHAR(30) NOT NULL UNIQUE,
    name VARCHAR(50) UNIQUE,
    ename VARCHAR(50)
	);


ALTER TABLE stations
ALTER COLUMN name 
TYPE VARCHAR(15);

ALTER TABLE stations
DROP CONSTRAINT e_name;

DROP TABLE IF EXISTS stations;




	