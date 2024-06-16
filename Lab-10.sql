--1
select D_ID,len(D_ID) as length_DID,
		D_Name,len(D_Name) as length_DName,
		D_Address,len(D_Address) as length_DAdress
from Doctor_Detail

--2
select H_Name , len(H_Name) as length_HName,
	H_Type,len(H_Type) as length_HType,
	H_City , len(H_City) as length_HCity
from Hospital_Detail

--3
select upper(D_Name) as Upper_DName,
	lower(D_Designation) as Lower_DDesignation
from Doctor_Detail

--4
select P_ContactNo,
SUBSTRING(Cast(P_ContactNo as varchar(20)),1,5)  As Substring_Of_ContactNo
from Patient_Detail

--5
select H_City,RIGHT(H_City , 3)
from Hospital_Detail

--6
select substring('Diploma Computer, DIETDS',9,8) As  Exe

--7
select SUBSTRING('Darshan University, Rajkot',21,6) As Exe

--8
select REPLACE('Darshan College','College','University') As Exe

--9
select H_Name,H_Type,
REPLACE(H_Type,'Govt.','Government') as Replaced_H_Type
from Hospital_Detail

--10
select H_Name,H_Address,
Left(H_Address,CHARINDEX(',',H_Address)-1) As result
from Hospital_Detail

--11
select P_Address,REVERSE(P_Address) from Patient_Detail

--12
select D_Name,D_Address,
Right(D_Address,CHARINDEX(',',REVERSE(D_Address))-2)
from Doctor_Detail