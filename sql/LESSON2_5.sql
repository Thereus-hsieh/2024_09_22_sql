DROP TABLE IF EXISTS hospital;

CREATE TABLE IF NOT EXISTS hospital (
    "ID" SERIAL PRIMARY KEY,
    "STATE" VARCHAR(5) NOT NULL,
	"NANE" VARCHAR(30) NOT NULL UNIQUE,
	"PHONE" VARCHAR(15),
	"EXT" VARCHAR(7),
	"CONTACT" VARCHAR(7),
	"ADDRESS" VARCHAR(50)
    );
	
/*城市,啟始時間,結束時間,最高溫度,最低溫度,感覺*/

CREATE TABLE IF NOT EXISTS weather(
    id SERIAL PRIMARY KEY,
	city VARCHAR(20) NOT NULL,
    startDate timestamp,
	endDate timestamp,
	hight real,
	low real,
	status VARCHAR(20)
);

