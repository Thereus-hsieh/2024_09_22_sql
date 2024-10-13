 /*抓名子*/
SELECT code as 代碼 ,name as 車站中文名稱,ename as 車站英文名稱
from stations2
WHERE name = '基隆';

 /*抓名子,第一字為台*/
SELECT id as 序號,code as 代碼, name as 車站名稱, ename as 英文名稱
FROM stations2
WHERE name LIKE '台_';

 /*抓名子*/
SELECT id as 序號,code as 代碼, name as 車站名稱, ename as 英文名稱
FROM stations2
WHERE name LIKE '台%';

 /*抓名子,最後為港*/
SELECT id as 序號,code as 代碼, name as 車站名稱, ename as 英文名稱
FROM stations2
WHERE name LIKE '%港';

 /*抓10 -30 之間*/
SELECT id as 序號,code as 代碼, name as 車站名稱, ename as 英文名稱
FROM stations2
WHERE id <=30 or id >=10;

 /*抓名子有in值*/
SELECT code as 代碼 ,name as 車站中文名稱,ename as 車站英文名稱
from stations2
WHERE ename LIKE '%in%';

 /*抓不要10到20*/
SELECT id as 序號,code as 代碼, name as 車站名稱, ename as 英文名稱
FROM stations2
WHERE ID not BETWEEN 10 AND 20;

/*數字排序, DESC:由大到小,須放在id後面   */
SELECT id as 序號,code as 代碼, name as 車站名稱, ename as 英文名稱
FROM stations2
ORDER BY ID DESC  ;

/*英文排序,LIMIT抓前15名    */
SELECT id as 序號,code as 代碼, name as 車站名稱, ename as 英文名稱
FROM stations2
ORDER BY  ename 
LIMIT 15;



