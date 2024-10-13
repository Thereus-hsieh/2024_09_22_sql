/*從payment資料表,取出所有員工的訂單總數*/
SELECT *
FROM payment

SELECT staff_id,count(payment_id) as 訂單總和
FROM payment
GROUP BY staff_id


/*取出每個員工在每個客戶訂單總和 */

SELECT staff_id,customer_id,sum(amount)
FROM payment
GROUP BY staff_id,customer_id
ORDER BY customer_id;/*排序 */

/*取出每日訂單的總合*/
/* cast operator */
SELECT staff_id AS 員工,payment_date::date AS 日期, SUM(amount) AS 總合
FROM payment
GROUP BY 日期,員工
ORDER BY 日期;

/*HAVING 在GROUP BY 之後查詢用*/
SELECT customer_id ,SUM(amount) as 總和
FROM payment
GROUP BY customer_id
HAVING SUM(amount) < 100 OR SUM(amount)>80  ; /*總和大於200*/

/*HAVING 在GROUP BY 之後查詢用*/
SELECT store_id ,COUNT(customer_id) AS 數量
FROM customer
GROUP BY store_id
HAVING COUNT(customer_id) > 100 ;

/*subquery 用法*/
SELECT *
FROM country;

SELECT country_id
FROM country
WHERE country='Taiwan';

SELECT city
FROM city
WHERE country_id = 92;

SELECT city  /*子查詢*/
FROM city
WHERE country_id = (       /*用country_id來查city*/
	SELECT country_id
	FROM country
	WHERE country='Taiwan'
);


/*也可用JOIN ON 來查詢*/
SELECT city
FROM city JOIN country ON city.country_id = country.country_id
WHERE country = 'Taiwan';
