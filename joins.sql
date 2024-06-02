--lab1

--1
select personname,departmentname,departmentcode from person
inner join department
on person.departmentid=department.departmentid

--2
select personname,departmentname from person
inner join department
on person.departmentid=department.departmentid
where location='c-block'

--3
select personname,departmentname,salary from person
inner join department
on person.departmentid=department.departmentid
where city='jamnagar'

--4
select personname,departmentname,salary from person
inner join department
on person.departmentid=department.departmentid
where city<>'rajkot'

--5
select person.*,departmentname from person
inner join department
on person.departmentid=department.departmentid
where departmentname='computer'

--6
select personname from person
inner join department
on person.departmentid=department.departmentid
where departmentname is null

--7
select personname from person
inner join department
on person.departmentid=department.departmentid
where departmentname='civil'
and joininddate>01-08-2001 

--8
select personname,departmentname from person
inner join department
on person.departmentid=department.departmentid
where (getdate()-joininddate)>365

--9
select count(personid),departmentname from person
inner join department
on person.departmentid=department.departmentid
group by departmentname

--10
select max(salary)as maximum,min(salary)as minimum,departmentname from person
inner join department
on person.departmentid=department.departmentid
group by departmentname

--11
select city,max(salary)as maximum,min(salary)as minimum,sum(salary) as total,AVG(salary)as average from person
group by city

--12
select departmentname,sum(salary) from person
inner join department
on person.departmentid=department.departmentid
group by departmentname
having sum(salary)>100000

--13
select avg(salary) from person
where city='ahmedabad'

--14
select departmentname from department
inner join person
on person.departmentid=department.departmentid
where personname is null

--15
select departmentname,count(personid) from department
inner join person
on person.departmentid=department.departmentid
group by departmentname
having count(personid)>2

--16
select personname +' lives in '+ city +' and works in ' +departmentname +' department ' from person
inner join department
on person.departmentid=department.departmentid


--17
select personname + ' earns '+ convert(varchar(20),salary) + ' from department ' +departmentname +' monthly ' from person
inner join department
on person.departmentid=department.departmentid

--18
select sum(salary),min(salary),max(salary),city,departmentname from person
inner join department
on person.departmentid=department.departmentid
group by city,departmentname

--19
update person set salary=salary+salary*0.1 from person
inner join department
on person.departmentid=department.departmentid
where departmentname='computer'









