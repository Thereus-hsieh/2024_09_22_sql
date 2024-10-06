
SELECT code as 代碼 ,name as 車站中文名稱,ename as 車站英文名稱
from stations2
WHERE name = '基隆';


SELECT id as 序號,code as 代碼, name as 車站名稱, ename as 英文名稱
FROM stations2
WHERE name LIKE '台_';

SELECT id as 序號,code as 代碼, name as 車站名稱, ename as 英文名稱
FROM stations2
WHERE name LIKE '台%';

SELECT id as 序號,code as 代碼, name as 車站名稱, ename as 英文名稱
FROM stations2
WHERE name LIKE '%港';

SELECT id as 序號,code as 代碼, name as 車站名稱, ename as 英文名稱
FROM stations2
WHERE id <=30 and id >=10;

SELECT code as 代碼 ,name as 車站中文名稱,ename as 車站英文名稱
from stations2
WHERE ename LIKE 'Ta%';




