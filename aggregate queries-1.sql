--LAB 8

--1. Display the Highest, Lowest, Total, and Average salary of all employees & label the columns Maximum,  Minimum, Total_Sal and Average_Sal, respectively.
SELECT MAX(SALARY) AS MAXIMUM,MIN(SALARY) AS MINIMUM,AVG(SALARY) AS AVERAGE_SAL,SUM(SALARY) AS TOTAL_SAL FROM EMPLOYEE

--2 Find total number of employees of EMPLOYEE table.
SELECT COUNT(EID) FROM EMPLOYEE

--3 Retrieve maximum salary from IT department
SELECT MAX(SALARY) FROM EMPLOYEE
WHERE DEPARTMENT = 'IT'

--4. Count total number of cities of employee without duplication.
SELECT COUNT(DISTINCT CITY) FROM EMPLOYEE

--5 . Display city with the total number of employees belonging to each city.
SELECT CITY ,COUNT(EID) FROM EMPLOYEE
GROUP BY CITY

--6 Display city having more than one employee.
SELECT CITY,COUNT(EID) FROM EMPLOYEE
GROUP BY CITY
HAVING COUNT(EID) >1

--7 Give total salary of each department of EMPLOYEE table.
SELECT SUM(SALARY),DEPARTMENT FROM EMPLOYEE
GROUP BY DEPARTMENT

--8
SELECT AVG(SALARY) FROM EMPLOYEE
GROUP BY DEPARTMENT

--9
SELECT EName,MIN(SALARY) FROM EMPLOYEE
WHERE CITY = 'AHMEDABAD'
group by ENAME

--10
SELECT SUM(SALARY),DEPARTMENT FROM EMPLOYEE
GROUP BY DEPARTMENT,CITY
HAVING SUM(SALARY) >50000
AND CITY LIKE 'RAJKOT'

--11
SELECT COUNT(EID) FROM EMPLOYEE
WHERE CITY LIKE 'RAJKOT'

--12
SELECT MAX(SALARY)-MIN(SALARY)AS SAL_DIFFERENCE FROM EMPLOYEE

--13
SELECT COUNT(EID) FROM EMPLOYEE 
WHERE JOININGDATE < '1991-1-1'

--14
SELECT SUM(SALARY),DEPARTMENT FROM EMPLOYEE
GROUP BY DEPARTMENT
HAVING SUM(SAlARY)>35000
ORDER BY SUM(SALARY) ASC

--15
select department,count(eid) from EMPLOYEE
group by DEPARTMENT
having count(eid)>2
 
--16
select min(salary) from EMPLOYEE
where city='rajkot'

--17
select city,count(eid) from employee
group by city

--18
select department,min(salary) from employee
group by department

--19
select sum(salary) from EMPLOYEE
group by city  

--20
select min(salary)as mini,max(salary)as maxi,sum(salary)as total,department from EMPLOYEE
group by DEPARTMENT