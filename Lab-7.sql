--Lab 7
--1
update Doctor_Detail
set D_Salary = D_Salary-D_Salary*0.1
select D_ID, D_Name, D_Salary from Doctor_Detail

--2
Update Room_Detail
set R_Charge = R_Charge+R_Charge*0.7
select R_ID, R_Type, R_Charge from Room_Detail 

--3
select P_FirstName from Patient_Detail
where P_Age < 40

--4
select R_Type, R_Charge from Room_Detail
where R_Charge > 2000

--5
Select D_ID, D_Name, D_EmailID from Doctor_Detail
where D_DISCRIPTION <> 'Ortho'

--6
select P_ID, P_FirstName, P_ContactNo, P_City from Patient_Detail
where P_Disease = 'Brain Tumor' or P_Disease = 'Tooth Break'

--7
select * from Hospital_Detail
where H_Type = 'Private Hospital' and H_Canteen_Facility = 1 

--8
Select D_Name, D_City, D_DISCRIPTION from Doctor_Detail
where D_City <> 'Rajkot' and D_City <> 'Jamnagar'

--9
select B_ID, P_ID from Bill_Detail
where P_Total_Amount >= 3000

--10
select D_ID, D_Name, D_City, D_Salary from Doctor_Detail
where D_Salary <= 50000 and D_City = 'Rajkot'