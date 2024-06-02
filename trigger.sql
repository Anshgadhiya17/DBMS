--lab 6

--1
create trigger massage
on person
after insert,update,delete
as
begin 
	print 'record is affected'
end

--2

create trigger tr_person_op
on person
after insert,update,delete
as
begin 
	declare @PersonID int,
			@PersonName varchar(100),
			@Operation varchar(100),
			@UpdateDate datetime

			if exists(select * from deleted)
			begin
				select @PersonID=PersonID,@PersonName=PersonName from deleted
				set @Operation='deleted'
				set @UpdateDate=getdate()

			 end
			else
			begin
				select @PersonID=PersonID,@PersonName=PersonName from inserted
				set @Operation='inserted/updated'
				set @UpdateDate=getdate()
			 end
			 insert into PersonLog(
				 PersonID,
				 PersonName,
				 Operation,
				 UpdateDate
			 )
			 values(
			 @PersonID,
			 @PersonName,
			 @Operation,
			 @UpdateDate
			 )
end

insert into person values(109,'jenil',200.00,'2022-01-01','rajkot',19,'2005-03-07')
delete from person where PersonID=109

--3
create trigger tr_person_op2
on person
instead of insert,update,delete
as
begin 
	declare @PersonID int,
			@PersonName varchar(100),
			@Operation varchar(100),
			@UpdateDate datetime

			if exists(select * from deleted)
			begin
				select @PersonID=PersonID,@PersonName=PersonName from deleted
				set @Operation='deleted'
				set @UpdateDate=getdate()

			 end
			else
			begin
				select @PersonID=PersonID,@PersonName=PersonName from inserted
				set @Operation='inserted/updated'
				set @UpdateDate=getdate()
			 end
			 insert into PersonLog(
				 PersonID,
				 PersonName,
				 Operation,
				 UpdateDate
			 )
			 values(
			 @PersonID,
			 @PersonName,
			 @Operation,
			 @UpdateDate
			 )
end

insert into person values(109,'jenil',200.00,'01-01-2023','rajkot',19,'07-03-2005')
delete from person where PersonID=109

--4

create trigger tr_person_convert
on person
after insert
as
begin 
	declare @personname varchar(100)
	select @personname=PersonName from inserted
	update person set PersonName=UPPER(@personname)
end

insert into person values (101,'ansh',35000.00,'2022-01-01','rajkot',18,'2005-01-17')


--5
create trigger tr_person_op3
on person
after insert
as
begin 
		declare @firstdate varchar(100)
		declare @seconddate varchar(100)
		declare @age int
		select @firstdate=BirthDate from inserted
		select @seconddate=getdate()
		set @age=datediff(year,@firstdate,@seconddate)
		update person set age=@age
end

insert into person values(101,'ansh',35000.00,'2022-01-01','rajkot',18,'2005-01-17')

--6
create trigger tr_personLog_delete
on PersonLog
after delete
as
begin  
	print 'Record deleted successfully from PersonLog'
end
