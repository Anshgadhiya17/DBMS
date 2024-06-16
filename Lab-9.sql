--Syntax:-

-------Change Datatype of a value-----------
Select CAST(Value AS data_type) As Alias ;
Select CONVERT(data_type,Value) As Alias;

-------Change Date/Time Format-------
Select FORMAT(Particular_Date,Formate) As Alias
Select FORMAT(Particular_Column_Name,Formate) as Alias
From Table_Name	

--------Display Current DateTime------
Select GETDATE() As ALias

-------Display DateDiffrence ----
Select DATEDIFF(MONTH/DAY/YEAR,Particular_Date1,Particular_Date2) As Alias
Select DATEDIFF(MONTH/DAY/YEAR,Particular_Column_Name1,Particular_Column_Name2) As Alias
From Table_Name

-------Display Next Date After Month/Year/Day------
Select DATEADD(MONTH/DAY/YEAR,Value_Of_Int,Particular_Date) as date_time


--1)
Select CAST('1234' As INT);

--2)
Select CONVERT(INT,10.58);

--3)
Select GETDATE() As CurrentDate;

--4)
SELECT FORMAT(P_ADMITDATETIME,'mm-dd-yyyy') As Date_Time
From Bill_Detail

--5)
SELECT FORMAT(P_DISCHARGEDATETIME,'mm/dd/yyyy hh:mm:ss') As Date_Time
From Bill_Detail

--6)
SELECT B_ID,FORMAT(P_ADMITDATETIME,'dd mm yyyy hh:mm:ss tt') As Date_Time
From Bill_Detail

--7)
Select DATEDIFF(MONTH,'2023-08-20','2024-06-11') As Month_Count

--8)
Select DATEDIFF(DAY,'2023-05-22','2023-05-31') As Days_Count

--9)
Select DATEDIFF(DAY,P_ADMITDATETIME,P_DISCHARGEDATETIME) As Days_Count 
From Bill_Detail

--10)
Select DATEADD(month,10,GETDATE()) as date_time

--11)
Select DATEADD(day,5,GETDATE()) as date_time

--12)
Select DATEADD(year,3,GETDATE()) as date_time

--13)
Select DATEDIFF(year,'12-08-2004',GETDATE()) as Current_Age

--14)
Select P_FIRSTNAME,P_LASTNAME from Patient_Detail
where P_AGE > 30
 



