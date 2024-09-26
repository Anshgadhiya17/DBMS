---Lab-13---
------------Syntax--------
Select Column_Name From Tbl_Name
Where Column_Name =/IN 
		(
			Select Column_Name From Table_Name
			Where Condition;
		);

--1)
Select D_NAME,D_SALARY From Doctor_Detail
Where D_SALARY = 
		( 
			Select Min(D_SALARY) From Doctor_Detail
		);

--2)
Select P_ID,P_FIRSTNAME From Patient_Detail
Where P_ID =
		(
			Select P_ID From Bill_Detail
			Where P_TOTAL_AMOUNT = 
					(
						Select Max(P_TOTAL_AMOUNT) From Bill_Detail
					)
		);

--3)
Select * From Doctor_Detail
Where H_ID IN 
		(
			Select H_ID From Hospital_Detail
			Where H_TYPE = 'Private Hospital'
		);

--4)
Select P_FIRSTNAME From Patient_Detail 
Where A_ID IN
	(
		Select A_ID From Appointment_Detail
		Where A_DATE Between '11-15-2023' AND '02-25-2024'
	);

--5)
Select D.D_Name,P.P_FIRSTNAME,D.D_CITY,P.P_CITY
From Doctor_Detail As D Inner Join Patient_Detail As P
On D.D_ID=P.D_ID
Where D.D_CITY In
	(
		Select P.P_City From Patient_Detail
		Where D.D_CITY=P.P_CITY
	);

-------------------------Or-------------------------

SELECT D.D_Name, D.D_City,P.P_FirstName, P.P_City 
FROM Doctor_Detail D, Patient_Detail P 
WHERE D.D_City IN 
		(
			SELECT P_City from Patient_Detail 
			group by P_City 
		) 
AND P.P_City=D.D_City 
AND P.D_ID=D.D_ID;


--6)
Select P_FIRSTNAME From Patient_Detail 
Where P_ID In 
		(
			Select P_ID From Bill_Detail
			Where P_PENDING_AMOUNT = 0
		);


