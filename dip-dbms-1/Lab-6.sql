--group by

select column_name/aggregate_fn from table_name
where condition
group by column_name(s)

--order by(by default asc order)

select column_name/aggregate_fn from table_name
where condition
order by column_name asc/desc

--group by with having
select column_name/aggregate_fn from table_name
where condition
group by column_name(s)
having condition
order by column_name asc/desc


--LAB - 6

--1
select R_Type,count(*) from Room_Detail
group by R_Type

--2
select P_City,count(*) from Patient_Detail
group by P_City

--3
select count(*),H_Canteen_Facility from Hospital_Detail
group by H_Canteen_Facility
having H_Canteen_Facility = 1

--where
select count(*) from Hospital_Detail
where H_Canteen_Facility = 1

--4
select P_Disease,count(*) from Patient_Detail
group by P_Disease

--5
select D_DISCRIPTION , count(*) from Doctor_Detail
where D_DISCRIPTION='Dentist'
group by D_DISCRIPTION


select D_DISCRIPTION , count(*) from Doctor_Detail
group by D_DISCRIPTION
having D_DISCRIPTION='Dentist'

--6
select Tr_Type,count(*) from Transaction_Master
group by Tr_Type

--7
select H_Name from Hospital_Detail
order by H_Name desc

--8
select D_Name from Doctor_Detail
order by D_Name

--9
select D_Name,D_EmailID,H_ID from Doctor_Detail
order by D_Salary desc

--10
select * from Room_Detail
order by R_Charge

--11
select * from Patient_Detail
order by P_Age desc
