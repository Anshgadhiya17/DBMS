
--aggerete functions

-- this queries are based on my database name and tables name  


--1 select count of students
select COUNT(*) from Student_Marks

--2 select total of marks
select SUM(marks) from Student_Marks

--3 select average of marks
select AVG(marks) from Student_Marks

--4 select lowest marks
select Min(marks)from Student_Marks

--5 select highest marks
select max(marks) from Student_Marks