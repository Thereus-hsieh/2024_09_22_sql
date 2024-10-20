/*全省各站點2022年進站總人數*/
SELECT *
FROM stations;

SELECT stationname as 站名,SUM(gateincomingcnt) as 進站總人數
FROM stations JOIN station_in_out ON stationcode = stacode
/*WHERE date BETWEEN '2022-01-01' AND '2022-12-31'*/
WHERE EXTRACT(YEAR FROM date) = 2022
GROUP BY stationname /*GROUP BY :把相同的變成一個 */
ORDER BY 進站總人數 desc;

/*進站總人數>500萬*/
SELECT stationname, SUM(gateincomingcnt) as 進站總人數
FROM station_in_out in_out join stations s ON in_out.staCode = s.stationcode
WHERE EXTRACT(YEAR FROM date) = 2022
GROUP BY stationname
HAVING SUM(gateincomingcnt) > 5000000 
ORDER BY 進站總人數 DESC;

/*基隆火車站2020年,每月份進站人數*/
SELECT stationname AS 站名, TO_CHAR(date, 'YYYY-MM') AS 日期,SUM(gateincomingcnt) AS 當月總進站人數
FROM stations JOIN station_in_out ON stationcode = stacode
/*WHERE date BETWEEN '2022-01-01' AND '2022-12-31';*/
WHERE EXTRACT(YEAR FROM date) = 2020 AND stationname='基隆'
GROUP BY 站名,日期 ;
ORDER BY 進站人數 DESC;

/*基隆火車站2020年,每月份進站人數,由多至少*/
SELECT stationname AS 站名,EXTRACT(MONTH FROM date) AS MONTH,SUM(gateincomingcnt) AS 進站人數
FROM station_in_out in_out join stations s ON in_out.staCode = s.stationcode
WHERE EXTRACT(YEAR FROM date) = 2020 AND stationname = '基隆'
GROUP BY stationname,EXTRACT(MONTH FROM date)
ORDER BY 進站人數 DESC;

/*基隆火車站2020,2021,2022,每年進站人數*/
SELECT stationname AS 站名,EXTRACT(YEAR FROM date) AS year,
    SUM(gateincomingcnt) AS 每年進站人數
FROM station_in_out in_out join stations s ON in_out.staCode = s.stationcode
WHERE EXTRACT(YEAR FROM date) IN (2020, 2021, 2022,2023)
    AND stationname = '基隆'
GROUP BY stationname,EXTRACT(YEAR FROM date)
ORDER BY year;

/*基隆火車站,臺北火車站2020,2021,2022,每年進站人數*/
SELECT stationname AS 站名,EXTRACT(YEAR FROM date) AS year,
    SUM(gateincomingcnt) AS 每年進站人數
FROM station_in_out in_out join stations s ON in_out.staCode = s.stationcode
WHERE (stationname = '基隆' OR stationname = '臺北') AND EXTRACT(YEAR FROM date) IN (2020, 2021, 2022,2023)
GROUP BY stationname,EXTRACT(YEAR FROM date)
ORDER BY stationname;

/*基隆火車站2020,2021,2022,每年進站人數*/
SELECT stationname AS 站名, EXTRACT(YEAR FROM date) as 年份,SUM(gateincomingcnt) AS 當年總進站人數
FROM stations JOIN station_in_out ON stationcode = stacode
WHERE EXTRACT(YEAR FROM date) IN (2020,2021,2022) AND stationname IN ('基隆','臺北')
GROUP BY 站名,年份;

/*進站人數最多的一筆*/
SELECT stationname as 站名,date as 日期,gateincomingcnt as 進站人數
FROM stations join station_in_out ON staCode =stationcode
WHERE gateincomingcnt = (
        SELECT MAX(gateincomingcnt) 
        FROM station_in_out
);

/*各站點進站人數最多的一筆*/
SELECT name,date,gateincomingcnt
FROM stations JOIN station_in_out ON stationcode = stacode
WHERE (stationname,gateincomingcnt) IN (
	SELECT stationname AS 站名,MAX(gateincomingcnt) AS 最多人數
	FROM stations JOIN station_in_out ON stationcode = stacode
	GROUP BY 站名	
)
ORDER BY gateincomingcnt;


SELECT stationname AS 站名,MAX(gateincomingcnt) AS 最多人數
FROM stations JOIN station_in_out ON stationcode = stacode
GROUP BY 站名;