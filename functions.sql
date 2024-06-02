--lab4

--Scalar valued functions
--1. Write a function to print "hello world".
create function fn_hello()
returns varchar(50)
as
begin 
   declare @str varchar(50)
   set @str='hello'
   return @str
end

select dbo.fn_hello()
--2. Write a function which returns addition of two numbers.

create function fn_sum(@a as int,@b as int)
returns int
as
begin
    declare @c as int
	set @c=@a+@b
	return @c
end

select dbo.fn_sum(10,20)
--3. Write a function to print cube of given number.
create function fn_cube(@a as int)
returns int
as
begin 
  declare @ans as int
  set @ans=@a*@a*@a
  return @ans
end

select dbo.fn_cube(6)

--4. Write a function to check where given number is ODD or EVEN.

create function fn_oddeven(@a as int)
returns varchar(50)
as
begin 
		declare @str as varchar(50)
		if @a%2=0
		set @str='even'
		
		else
		set @str='odd'
		return @str
end

select dbo.fn_oddeven(8)

--5. Write a function to compare two integers and returns the comparison result. (Using Case statement)
	create function fn_compare(@a as int,@b as int)
	returns varchar(50)
	as
	begin 
		return(
		case 
		when @a>@b then 'a is greater than b'
		when @a<@b then 'b is greater than a'
		else 'both are eual'
		end
		)
	end

	select dbo.fn_compare(5,7)
--6. Write a function to print number from 1 to N. (Using while loop)

alter function fn_print1toN(@no as int)
returns varchar(5000)
as
begin 
	declare @str as varchar(5000)
	set @str=''
	declare @i as int
	set @i=1
	while @i<@no
	begin
		set @str=@str+' '+cast(@i as varchar(5000))
		set @i=@i+1
	end
	return @str
end

select dbo.fn_print1toN(200)
--7. Write a function to print sum of even numbers between 1 to 20.
alter function fn_sumeven()
returns int
as
begin 
		declare @i as int
		set @i=1
		declare @sum as int
		set @sum=0
		while @i<=20
		begin 
			if @i%2=0
			set @sum=@sum+@i
			set @i=@i+1;
		end
		return @sum
end

select dbo.fn_sumeven()

--8. Write a function to check weather given number is prime or not.

 alter function fn_prime(@a as int)
 returns varchar(100)
 as
 begin 
		declare @i as int
		set @i=1
		declare @count as int
		set @count=0
		declare @str as varchar(100)
		set @str=''
		while @i<=@a
		begin 
			if @a%@i=0
			set @count=@count+1
			set @i=@i+1
		end
		if @count=2
		set @str='prime'

		else
		set @str='not prime'

		return @str
 end

 select dbo.fn_prime(5)
--9. Write a function which accepts two parameters start date & end date, and returns a difference in days.

alter function fn_twodates(@f as date,@s as date)
returns int 
as 
begin 
	declare @daysno as int
	set @daysno=datediff(day,@f,@s)
	return @daysno

end

select dbo.fn_twodates('2022-12-24','2023-01-26')


--10. Write a function which accepts year & month in integer and returns total days in given month &year 
alter function fn_monthyear(@y as int,@m as int )
returns int
as
begin 
	declare @x as date
	set @x=DATEFROMPARTS(@y,@m,1)
	declare @day as date
	 set @day=EOMONTH(@x)
	 return(datediff(day,@day,@x))+1
end

select dbo.fn_monthyear(2022,5)