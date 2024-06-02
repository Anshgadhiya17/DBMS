--1
SELECT FirstName from Students
where FirstName like 'k%'
--2
SELECT FirstName from Students
where FirstName like '_____'
--3
select FirstName,LastName from Students
where City like '%a'
and City like '______'

--4
SELECT * from Students
where LastName like '%tel'

--5
SELECT * from Students
where FirstName like 'ha%'
and FirstName like '%t'

--6
SELECT * from Students
where FirstName like 'k%'
and FirstName like '__y%'

--7
SELECT FirstName from Students
where Website is null
and FirstName like '_____'

--8
select * from Students
where LastName like '%jer%'

--9 
select * from Students
where City like 'r%'
or  City like 'b%'

--10
SELECT FirstName from Students
where Website is not null

--11
SELECT * from Students
where FirstName like '[a-h]%'

--12
SELECT * from Students
where FirstName like '_[a,e,i,o,u]%'

--13
SELECT FirstName from Students
where City like '%rod%'

--14
select FirstName,LastName from Students
WHERE Website like 'bi%'

--15
SELECT City FROM Students
WHERE LastName like '______'

--16
SELECT * from Students
WHERE City LIKE '_____'
AND City NOT LIKE 'ba%'

--17
SELECT * from Students
WHERE Division LIKE 'II%'

--18
SELECT FirstName from Students
WHERE Division LIKE '%BC%'

--19
SELECT StulD,City FROM Students
WHERE Website IS NOT NULL 
AND Division LIKE '______'

--20
SELECT * FROM Students
WHERE FirstName not like '__[a,e,i,o,u]%'

--#

select stulD,FirstName from Students
where Division like '%[bcx,bcy,bcw,bcz]'

select top 3 FirstName from Students
where City like '%rat%'

select * from Students
where LastName not like '%[a,e,i,o,u]'

select StulD from Students
where FirstName is null
or LastName is null

select * from Students
where Website not like '%.com'

select * from Students
where FirstName like '____'
and LastName like '____'

select * from Students
where FirstName like 'b%'
and FirstName like '%c'










