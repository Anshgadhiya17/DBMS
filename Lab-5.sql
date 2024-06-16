-- Lab-5
-- Gadhiya Ansh A.

--1)
Select count(*) as Count_Doctor 
From Doctor_Detail

--2)
Select count(P_DISEASE) as Count_Patient_Disease 
From Patient_Detail

--3)
Select count(P_DISEASE_REMARKS) as Count_Patient_Disease_Remark 
From Patient_Detail

--4)
Select sum(P_PENDING_AMOUNT) as Total_Pending_Amount 
From Bill_Detail

--5)
Select avg(R_CHARGE) as Avg_Room_Charges 
From Room_Detail

--6)
Select max(D_SALARY) as Max_Salary, min(D_SALARY) as Min_Salary, avg(D_SALARY) as Avg_Salary 
From Doctor_Detail

