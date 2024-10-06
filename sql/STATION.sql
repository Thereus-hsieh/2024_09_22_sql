	
 /*車站代號,車站中文名稱,車站英文名稱,*/
 CREATE TABLE IF NOT EXISTS stations (
    id SERIAL PRIMARY KEY,
    code VARCHAR(30) NOT NULL UNIQUE,
    station_C VARCHAR(50) UNIQUE,
    station_E VARCHAR(50)
	);
