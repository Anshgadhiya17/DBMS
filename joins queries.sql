--Lab 10

--1
select * from STUDENT_10,RESULT
select * from STUDENT_10 cross join RESULT

--2
select STUDENT_10.RNO Name,BRANCH,SPI from STUDENT_10
left outer join RESULT
on STUDENT_10.RNO=RESULT.RNO
Where student_10.BRANCH ='CE'

--3
select STUDENT_10.RNO Name,BRANCH,SPI from STUDENT_10
right outer join RESULT
on STUDENT_10.RNO=RESULT.RNO
where student_10.BRANCH<>'EC'

--4
select avg(spi),BRANCH from result 
inner join STUDENT_10
on STUDENT_10.RNO=RESULT.RNO
group by BRANCH

--5
select avg(result.spi),BRANCH from result 
inner join STUDENT_10
on STUDENT_10.RNO=RESULT.RNO
group by BRANCH
order by AVG(result.spi)

--6
select avg(result.spi),BRANCH from result 
inner join STUDENT_10
on STUDENT_10.RNO=RESULT.RNO 
group by BRANCH
having BRANCH in ('ce','me')

--7
select *from STUDENT_10
left outer join RESULT
on STUDENT_10.RNO=RESULT.RNO

--8
select *from STUDENT_10
right outer join RESULT
on STUDENT_10.RNO=RESULT.RNO
 
--9
select *from STUDENT_10
full outer join RESULT
on STUDENT_10.RNO=RESULT.RNO

--10
 select E.NAME as EMPLOYEENAME,M.NAME as MANAGERNAME from EMPLOYEE_10 E
 INNER JOIN EMPLOYEE_10 M ON
  E.EMPLOYEENO=M.MANAGERNO

 --1
 SELECT VILLAGE.VILLAGENAME,CITY.CITYNAME FROM VILLAGE
 INNER JOIN CITY
 ON VILLAGE.CITYID=CITY.CITYID
 WHERE CITY.CITYNAME='RAJKOT'

 --2
 SELECT CITYNAME,VILLAGENAME,PINCODE FROM CITY
 INNER JOIN VILLAGE 
 ON CITY.CITYID=VILLAGE.CITYID

 --3
 SELECT CITYNAME,COUNT(VILLAGEID)AS VILLAGES FROM CITY
 RIGHT JOIN VILLAGE 
 ON CITY.CITYID=VILLAGE.CITYID
 GROUP BY CITYNAME
 HAVING COUNT(VILLAGEID)>1
 


 --4
 SELECT CITYNAME,COUNT(VILLAGEID) FROM CITY
 INNER JOIN VILLAGE 
 ON CITY.CITYID=VILLAGE.CITYID
  GROUP BY CITYNAME
 HAVING COUNT(VILLAGEID)=0

 --5
  SELECT COUNT(VILLAGEID),CITYNAME FROM VILLAGE
 INNER JOIN CITY 
 ON CITY.CITYID=VILLAGE.CITYID
 GROUP BY CITYNAME
  
  --6
  select COUNT(*) FROM(
  SELECT CITY.CITYNAME,COUNT(VILLAGE.VILLAGEID) AS TOTAL FROM CITY
  LEFT JOIN VILLAGE
  ON CITY.CITYID=VILLAGE.CITYID
  GROUP BY CITY.CITYNAME
  ) AS TEMP
  WHERE TOTAL>1

  






