--lab 4 table functions 

--1
create function fn_fn1()
returns table
as 
return(
select * from person
where FirstName like 'b%'
)

select * from dbo.fn_fn1()

--2
create function fn_fn2()
returns table
as 
return(
select distinct FirstName from person
)

select * from dbo.fn_fn2()

--3
create function fn_fn3(@DepartmentID as int )
returns @person table(personid int,personname varchar(100))
as
begin
		insert into @person
		select workerid,firstname from person 
		where departmentid=@departmentid
		return
end

select personid,personname from fn_fn3(3)
