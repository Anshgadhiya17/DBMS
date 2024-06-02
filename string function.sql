--lab 6

--1
select len(null)
select len('hello')
select len('')

--2
select UPPER('ansh'),lower('AnsH')

--3
select SUBSTRING('ansh',1,3)

--4
select SUBSTRING('gadhiya ansh a',3,8)

--5
select REPLACE('abc123efg','123','XYZ')
select REPLACE('abcabcabc','c',5)


--6 
select ASCII('a'),ascii('A'),ascii('z'),ascii(0),ascii(9)

--7
select char(97),char(65),char(122),char(90),char(48),char(57)

--8
select LTRIM('hello world       ')

--9
select RTRIM('     hello world         ')

--10
select LEFT('SQL SERVER',4),RIGHT('SQL SERVER',5)

--11
select cast(1234.56 as int)

--12
select convert(int,10.58)

--13
select SPACE(10) + 'ansh'

--14
select concat('ansh','gadhiya')

select 'ansh' + 'gadhiya'

--15
select REVERSE('darshan')

--16
select REPLICATE('ansh ',3)

--17
select STUFF('ansh',1,3,'html')

--18
select coalesce(null,null,'ANSH')

--19
select ISNUMERIC('ansh')

--20
SELECT CHARINDEX('T','CUSTOMER')


--##
SELECT CHARINDEX('T','CUSTOMERT',5)


