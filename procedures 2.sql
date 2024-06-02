--lab 3
--1
create proc pr_person_selecttop3
as
begin 
	select top 3* from person
end

--2
alter proc pr_person_selectbydept
		@department varchar(100)
	as
	begin
		select firstname,lastname from person
		left outer join department
		on person.departmentid=department.departmentid
		where departmentname=@department	
	 end

	 exec pr_person_selectbydept 'IT'

	 --3
	 create proc pr_pr_person_selectbydeptdesignation
		@department varchar(100),
		@designation varchar(100)

		as
		begin 
			select firstname,joiningdate,salary,departmentname from person
			left outer join department
			on person.departmentid=department.departmentid
			left outer join designation
			on person.designationid=designation.designationid
			where departmentname=@department
			and designationname=@designation

		end

		exec pr_pr_person_selectbydeptdesignation 'admin1','ceo'

		--4
		 create proc pr_pr_person_selectbyname
		  @firstname varchar(100)
		  as

		  begin

		  select person.*,departmentname,designationname from person
		  left outer join department
		  on person.departmentid=department.departmentid
		  left outer join designation
		  on person.designationid=designation.designationid
		  where firstname=@firstname

		  end

		  exec pr_pr_person_selectbyname 'bhavin'

		  --5
		  create proc selectbydepartment
		  as 
		  begin
			select max(salary),min(salary),sum(salary),departmentname from person
			 left outer join department
			 on person.departmentid=department.departmentid
			 group by departmentname
		   end

		   exec selectbydepartment

		   --6
		    create proc selectbydesignation
			  as 
		  begin
			select max(salary),min(salary),sum(salary),designationname from person
			 left outer join designation
			 on person.designationid=designation.designationid
			 group by designationname
			end
			
			exec selectbydesignation


