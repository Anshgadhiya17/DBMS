---Lab-12---
--Syntax--

-------Apply Unique Key-----
Alter Table Table_Name
Add  Unique (Column_Name);

-------Apply Primary Key-----
Alter Table Table_Name
Add  Primary Key (Column_Name);

------Apply Foreign Key------
Alter Table Table_Name
Add  Foreign Key (Column_Name) References Table_Name(Column_Name);

--1)
Alter Table Hospital_Detail
Add  Unique (H_EmailID);

Alter Table Doctor_Detail
Add  Unique (D_EmailID);

Alter Table Transaction_Master
Add  Unique (Tr_Number);

--2)
--ALTER TABLE Hospital_Detail alter column H_ID int NOT NULL
Alter Table Hospital_Detail
Add  Primary Key (H_ID);

--ALTER TABLE Room_Detail alter column R_ID int NOT NULL
Alter Table Room_Detail
Add  Primary Key (R_ID);

--ALTER TABLE Doctor_Detail alter column D_ID int NOT NULL
Alter Table Doctor_Detail
Add  Primary Key (D_ID);

--ALTER TABLE Appointment_Detail alter column A_ID int NOT NULL
Alter Table Appointment_Detail
Add  Primary Key (A_ID);

--ALTER TABLE Patient_Detail alter column P_ID int NOT NULL
Alter Table Patient_Detail
Add  Primary Key (P_ID);

--ALTER TABLE Bill_Detail alter column B_ID int NOT NULL
Alter Table Bill_Detail
Add  Primary Key (B_ID);

--ALTER TABLE Transaction_Master alter column Tr_ID int NOT NULL
Alter Table Transaction_Master
Add  Primary Key (Tr_ID);


--3)
Alter Table Room_Detail
Add  Foreign Key (H_ID) References Hospital_Detail(H_ID);

Alter Table Doctor_Detail
Add  Foreign Key (H_ID) References Hospital_Detail(H_ID);

Alter Table Appointment_Detail
Add  Foreign Key (D_ID) References Doctor_Detail(D_ID);

Alter Table Appointment_Detail
Add  Foreign Key (H_ID) References Hospital_Detail(H_ID);

Alter Table Patient_Detail
Add  Foreign Key (A_ID) References Appointment_Detail(A_ID);

Alter Table Patient_Detail
Add  Foreign Key (R_ID) References Room_Detail(R_ID);

Alter Table Patient_Detail
Add  Foreign Key (D_ID) References Doctor_Detail(D_ID);

Alter Table Patient_Detail
Add  Foreign Key (H_ID) References Hospital_Detail(H_ID);

Alter Table Bill_Detail
Add  Foreign Key (P_ID) References Patient_Detail(P_ID);

Alter Table Bill_Detail
Add  Foreign Key (R_ID) References Room_Detail(R_ID);

Alter Table Bill_Detail
Add  Foreign Key (H_ID) References Hospital_Detail(H_ID);

Alter Table Transaction_Master
Add  Foreign Key (B_ID) References Bill_Detail(B_ID);

Alter Table Transaction_Master
Add  Foreign Key (P_ID) References Patient_Detail(P_ID);

Alter Table Transaction_Master
Add  Foreign Key (H_ID) References Hospital_Detail(H_ID);