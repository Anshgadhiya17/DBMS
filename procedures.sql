--lab 2
--1 insert procedure

create procedure pr_person_insert
       @FirstName varchar(100)
      ,@LastName varchar(100)
      ,@Salary  decimal(8,2)
      ,@JoiningDate datetime
      ,@DepartmentID int
      ,@DesignationID int
	  as 
	  begin 
			insert into person(
			[FirstName]
           ,[LastName]
           ,[Salary]
           ,[JoiningDate]
           ,[DepartmentID]
           ,[DesignationID]
			)
		values(
		  @FirstName, 
          @LastName,
          @Salary  ,
          @JoiningDate,
          @DepartmentID,
          @DesignationID 
		  )		

	  end

exec pr_person_insert 'ansh','gadhiya',50000.00,'01-01-2023',3,15

alter procedure pr_department_insert
      @DepartmentName varchar(100),
	  @departmentid int

	  as
	  begin
	  insert into department(
	 
      [DepartmentName],
	  [departmentid]
	  )
	  values(
	  @departmentname,
	  @departmentid
	  )
	  end

exec pr_department_insert 'admin',7
exec pr_department_insert 'cse',9


alter procedure pr_designation_insert
		@designationid int,
      @DesignationName varchar(100)
	 

	  as
	  begin
	  insert into designation(
	  [designationid],
      [designationname]
	  )
	  values(
	  @designationid,
	  @designationname
	  )
	  end
exec pr_designation_insert 5, 'banker'

--2 tables update
alter procedure pr_person_update
       @workerid int
	  ,@FirstName varchar(100)
      ,@LastName varchar(100)
      ,@Salary  decimal(8,2)
      ,@JoiningDate datetime
      ,@DepartmentID int
      ,@DesignationID int
	  as 
	  begin 
	  update person
			  set
	      FirstName= @FirstName ,
          LastName =@LastName,
          Salary =@Salary,
          JoiningDate=@JoiningDate,
          DepartmentID=@DepartmentID,
          DesignationID =@DesignationID
		    where workerid=@workerid
	  
	  end

	  exec pr_person_update 101,'sahil','parmar',50000.00,'01-01-2023',1,15

	  alter proc pr_department_update
	  @departmentid int,
	  @departmentname varchar(100)
	  as
	  begin 
	  update department 
		set departmentname= @departmentname
		where departmentid=@departmentid
	  end

	    exec pr_department_update 3,'cs'
		 exec pr_department_update 2,'it'
		  exec pr_department_update 9,'hr'

		  create proc pr_designation_update
		    @designationid int,
			@designationname varchar(100)
			as
			begin 
				update designation 
				set designationname= @designationname
				where designationid=@designationid
			end

			exec pr_designation_update 11,'jobber'


--3 all tables delete

create proc pr_person_delete
@workerid int
as
begin 
	delete from person
	where workerid=@workerid
end 
exec pr_person_delete 101


create proc pr_department_delete
@departmentid int
as
begin 
	delete from department
	where departmentid=@departmentid
end 

exec pr_department_delete 2

create proc pr_designation_delete
@designationid int
as
begin 
	delete from designation
	where designationid=@designationid
end 

exec pr_designation_delete 15


--4 selectbypk
create proc pr_person_selectbypk
@workerid int
as
begin 
	select * from person
	where workerid=@workerid
end

exec pr_person_selectbypk 102

create proc pr_department_selectbypk
@departmentid int
as
begin 
	select * from department
	where departmentid=@departmentid
end

exec pr_department_selectbypk 7
 
 create proc pr_designation_selectbypk
@designationid int
as
begin 
	select * from designation
	where designationid=@designationid
end

exec pr_designation_selectbypk 13

--5 selectall

create proc pr_person_selectall
as 
begin 
		select firstname,lastname,salary,joiningdate,departmentname,designationname from person
			left outer join department
			on person.departmentid=department.departmentid
			left outer join designation
			on person.designationid=designation.designationid
end

exec pr_person_selectall




