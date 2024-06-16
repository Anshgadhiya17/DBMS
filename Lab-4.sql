-- Lab-4

--1)
Alter Table Hospital_Detail 
Add	H_Email varchar(50)

--2)
Update Hospital_Detail
Set H_Email = 'samarpan@gmail.com'
Where H_ID = 101

Update Hospital_Detail
Set H_Email = 'nakshatra@yahoo.in'
Where H_ID = 102

Update Hospital_Detail
Set H_Email = 'civilmorbi@gov.in'
Where H_ID = 103

Update Hospital_Detail
Set H_Email = 'amity@gmail.com'
Where H_ID = 104

Update Hospital_Detail
Set H_Email = 'generalrajkot@gov.in'
Where H_ID = 105

--select * from Hospital_Detail

--3)
Alter Table Room_Detail 
Add	H_ID int

--4)
Update Room_Detail
Set H_ID = 101
Where R_ID = 2001

Update Room_Detail
Set H_ID = 102
Where R_ID = 2002

Update Room_Detail
Set H_ID = 103
Where R_ID = 2003

Update Room_Detail
Set H_ID = 104
Where R_ID = 2004

Update Room_Detail
Set H_ID = 105
Where R_ID = 2005

Update Room_Detail
Set H_ID = 106
Where R_ID = 2006

Update Room_Detail
Set H_ID = 107
Where R_ID = 2007

Update Room_Detail
Set H_ID = 108
Where R_ID = 2008

Update Room_Detail
Set H_ID = 109
Where R_ID = 2009

Update Room_Detail
Set H_ID = 110
Where R_ID = 2010

--select * from Room_Detail

--5)
Update Patient_Detail
Set P_ADDRESS = 'Green city main Road'
Where P_ID = 5009

--6)
Delete From Doctor_Detail
Where D_ID = 3010

--7)
Delete From Appointment_Detail
Where A_ID = 4008

--8)
Alter Table Doctor_Detail Alter Column D_NAME nvarchar(50)
Alter Table Doctor_Detail Alter Column D_DISCRIPTION nvarchar(50)
Alter Table Doctor_Detail Alter Column D_GENDER  nvarchar(50)
Alter Table Doctor_Detail Alter Column D_EMAILID nvarchar(50)
Alter Table Doctor_Detail Alter Column D_ADDRESS nvarchar(50)
Alter Table Doctor_Detail Alter Column D_CITY nvarchar(50)

Alter Table Hospital_Detail Alter Column H_NAME nvarchar(50)
Alter Table Hospital_Detail Alter Column H_ADDRESS nvarchar(50)
Alter Table Hospital_Detail Alter Column H_CITY nvarchar(50)
Alter Table Hospital_Detail Alter Column H_TYPE nvarchar(50)
Alter Table Hospital_Detail Alter Column H_EMAIL nvarchar(50)

Alter Table Patient_Detail Alter Column P_FIRSTNAME nvarchar(50)
Alter Table Patient_Detail Alter Column P_MIDDLENAME nvarchar(50)
Alter Table Patient_Detail Alter Column P_LASTNAME nvarchar(50)
Alter Table Patient_Detail Alter Column P_ADDRESS nvarchar(50)
Alter Table Patient_Detail Alter Column P_CITY nvarchar(50)
Alter Table Patient_Detail Alter Column P_GENDER nvarchar(50)
Alter Table Patient_Detail Alter Column P_DISEASE nvarchar(50)
Alter Table Patient_Detail Alter Column P_DISEASE_REMARKS nvarchar(50)

Alter Table Room_Detail Alter Column R_AVAILIBILTY nvarchar(50)
Alter Table Room_Detail Alter Column R_TYPE nvarchar(50)

Alter Table Transaction_Detail Alter Column TR_AMOUNT_ID nvarchar(50)
Alter Table Transaction_Detail Alter Column TR_TYPE nvarchar(50)

--9)
Alter Table Appointment_Detail Alter Column A_DATE DATE

--10)
Alter Table Patient_Detail Drop Column P_MIDDLENAME

--11)
Alter Table Doctor_Detail Drop Column D_GENDER

--12)
Sp_Rename 'Transaction_Detail.TR_B_AMOUNT','TR_BILL_AMOUNT'


--13)
Select * From Hospital_Detail
Select * From Doctor_Detail

--14)
Select R_ID, R_NUMBER, R_AVAILIBILTY From Room_Detail

--15)
Select H_NAME, H_CONTACTNO From Hospital_Detail
Where H_TYPE = 'Private Hospital'

--16)
Select P_FIRSTNAME,P_LASTNAME,P_CONTACTNO,P_DISEASE From Patient_Detail
Where P_CITY = 'Ahmedabad'

--17)
Select P_ID,P_FIRSTNAME,P_CONTACTNO,P_CITY From Patient_Detail
Where  P_DISEASE = 'Tooth Break'

--18)
Select * From Room_Detail
Where R_TYPE = 'Non-AC'

--19)
Select * From Doctor_Detail
Where D_DISCRIPTION = 'Ortho'

--20)
Sp_Rename 'Transaction_Detail','Transaction_Master'