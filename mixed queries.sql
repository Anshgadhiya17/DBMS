-- extra student TABLE

--1
SELECT NAME FROM STUDENT
WHERE SEM=2 AND DEPT='CE'

--2
SELECT NAME FROM STUDENT
WHERE ROLL_NO BETWEEN 101 AND 103
 AND DEPT='CE'

 --3
 UPDATE STUDENT SET SEM=6
 WHERE SEM=2 AND DEPT='CE'

 --4
 ALTER TABLE STUDENT ADD SPI INT,CPI INT 

 --5
 UPDATE STUDENT SET SPI=9,CPI=9

 --6
 ALTER TABLE STUDENT
 DROP COLUMN CONTACT_NO

 --7
 SELECT*FROM STUDENT
 WHERE NAME LIKE 'J%'

 --8
 SELECT*FROM STUDENT
 WHERE NAME LIKE '%J'

 --9
SELECT*FROM STUDENT
WHERE NAME LIKE 'J%'
OR NAME LIKE 'M%'

--10
SELECT * FROM STUDENT
WHERE NAME > '____'

--11
ALTER TABLE STUDENT
ALTER COLUMN DIV VARCHAR(20)

--12
SELECT MAX(SPI) FROM STUDENT

--13
SELECT AVG(SPI) FROM STUDENT

--14
SELECT LEN(NAME),NAME FROM STUDENT

--15
SELECT UPPER(NAME),NAME FROM STUDENT

--16

SELECT LOWER(NAME),NAME FROM STUDENT

--17
SELECT CONCAT(NAME,' FROM ',CITY)AS NAMECITY FROM STUDENT

--18
ALTER TABLE STUDENT
ADD  BIRHDAY DATETIME

--19
SELECT DATEDIFF(YEAR,BIRHDAY,GETDATE()) FROM STUDENT

--20
SELECT SUBSTRING(NAME,1,4) FROM STUDENT


--21
ALTER TABLE STUDENT
ALTER COLUMN SEM VARCHAR(5)

--22
ALTER TABLE STUDENT
ALTER COLUMN DIV INT


-- NAME_EXTRA

SELECT DATALENGTH(NAME1) FROM NAME_EXTRA

SELECT DATALENGTH(NAME2) FROM NAME_EXTRA





