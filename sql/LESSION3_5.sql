/*建立TABLE*/
CREATE TABLE IF NOT EXISTS student (
    student_id SERIAL ,
	name VARCHAR(20),
	major VARCHAR(20),
	scort int ,
    PRIMARY KEY(student_id)
	);
	
/*刪除資料*/
drop table if exists student;

/*顯示資料*/
SELECT*
  from student;
  
/*新增資料*/
INSERT INTO student(name,major)
VALUES('小白','歷史');

INSERT INTO student(major,name)
VALUES('生物','小黑');

INSERT INTO student(name,major)
VALUES('小藍',null);

 /*新增多筆資料*/
INSERT INTO student(name,major)
VALUES('小紅','體育'),('小灰','數學')
returning*;


INSERT INTO student VALUES(1,'小白','英文',59);
INSERT INTO student VALUES(2,'小黑','生物',65);
INSERT INTO student VALUES(3,'小綠','數學',77);
INSERT INTO student VALUES(4,'小紅','國文',69);
INSERT INTO student VALUES(5,'小黃','歷史',99);
INSERT INTO student VALUES(6,'小紫','化學',50);


INSERT INTO student 
VALUES(1,'小白','英文',59),
      (2,'小黑','生物',65),
      (3,'小綠','數學',77),
      (4,'小紅','國文',69),
      (5,'小黃','歷史',99)
      returning*;
  
delete from student; /*資料全刪*/

delete from student/*刪除小白*/
where name = '小白';

delete from student
where name like = '小%';/*刪除小全部*/

/*UPDATE SET WHERE*/
UPDATE student
SET major = '英語文學'
WHERE major = '英文'
RETURNING *

UPDATE student
SET  major = '生化'
WHERE major = '生物' OR major = '化學'
RETURNING *



