-- gadhiya ansh a.
--Hospital_Detail
insert into Hospital_Detail 
values(101,'samarpan hospital',7895420548,'Rajkot-Morbi Highway rajkot','rajkot','private hospital',1,1)

insert into Hospital_Detail values(
	102,'Nakshatra Hospital',9856247130,'Jam Tower Road, Jamnagar','Jamnagar','private hospital',0,1
)
insert into Hospital_Detail values(
	103,'Civil Hospital',7695302145,'Limda Chowk, Morbi2','morbi','govt. hospital',1,0
)







insert into Hospital_Detail
(H_ID,H_NAME,H_CONTACTNO,H_ADDRESS,H_CITY,H_TYPE,H_FIRE_SAFETY,H_CANTEEN_FACILITY)
values(101,'Samrpan Hospital',7895420548,'Rajkot-Morbi Highway,Rajkot','Rajkot','Private Hospital',1,1);
 













Select * From Hospital_Detail









insert into Hospital_Detail 
values(104, 'Amity Multispecialist Hosptial', 9012345678, 'Ravapar Raod, Morbi', 'Morbi', 'Private Hospital', 0, 0), 
	  (105, 'General Hospital', 7215698430, 'Rajkot-Jamangar Highway, Rajkot', 'Rajkot', 'Govt. Hospital', 1, 1)


-- Room_Detail
insert into Room_Detail
values(2001, 201, 'Yes', 'AC', 2000), 
(2002, 201, 'No', 'Non-AC', 1500), 
(2003, 501, 'Yes', 'ICU', 4500), 
(2004, 302, 'No', 'ICU', 3000), 
(2005, 505, 'Yes', 'Genral', 1500), 
(2006, 307, 'Yes', 'ICU', 4500), 
(2007, 205, 'No', 'AC', 2500), 
(2008, 211, 'Yes', 'Non-AC', 2000), 
(2009, 406, 'No', 'Non-AC', 1200), 
(2010, 801, 'Yes', 'Genral', 500)


--Doctor_Detail
insert into Doctor_Detail
values(3001, 'Mayur', 'Ortho', 'M', 72000, 'mayur@gmail.com', 9045781540, 'Kothariya road, Block 11', 'Rajkot', 102),
(3002, 'Krishna', 'Dentist', 'F', 50000, 'krishna@gmail.com', 9012345679, 'Ravapar road, Block 701', 'Morbi', 101), 
(3003, 'Ekta', 'MD','F', 45300, 'ekta@gov.in', 6012345787, '150 ft ring road, Block 301', 'Rajkot', 103), 
(3004, 'Nikhil', 'Neurologist', 'M', 32500, 'nikhil@gov.in', 8102365479, 'Sanala road, Block 501', 'Morbi', 103), 
(3005, 'Shrey', 'Cardiologist', 'M', 180000, 'shrey@gmail.com', 9154786230, 'Bhaktinagar street 3, Block 251', 'Jamnagar', 104), 
(3006, 'Rahul', 'Surgeon', 'M', 70800, 'rahul@gov.in', 4487552201, 'Near KKV Hall, Block A-101', 'Bhavnagar', 105), 
(3007, 'Shyam', 'MD', 'M', 50000, 'shyam@yahoo.in', 6524879560, 'Housing Same Kanthe, Block 100', 'Morbi', 102), 
(3008, 'Mukesh', 'Dentist', 'M', 62000, 'mukesh@gmail.com', 7784562139, 'Near ST Street 2, Block 203', 'Jamnagar', 104), 
(3009, 'Anil', 'Ortho', 'M', 55000, 'anil@yahoo.in', 8765123490, 'Lal Darwaja, Block 555', 'Rajkot', 101),
(3010, 'Milan', 'MD', 'M', 45500, 'milan@gov.in', 9874563210, 'Near Green garden, Block 350', 'Rajkot', 105)

--Appointment_Detail

insert into Appointment_Detail
values(4001, 100, '2023-12-10', '12:25:50:000', 3002, 101),
(4002, 40, '2023-11-15', '17:02:10:002', 3001, 102), 
(4003, 200, '2024-01-11', '16:30:30:030', 3005, 104), 
(4004, 120, '2023-12-23', '10:30:45:001', 3004, 103), 
(4005, 45, '2024-02-03', '09:45:00:000', 3003, 103), 
(4006, 30, '2023-04-20', '12:30:45:001', 3007, 102), 
(4007, 120, '2022-08-04', '10:35:20:004', 3009, 101), 
(4008, 100, '2024-02-03', '16:45:00:000', 3002, 101)

--Patient_Detail
insert into Patient_Detail
values(5001, 'Khushbu', 'G', 'Patel', 9043781540, 38, 55.25, 'Chokidhani road', 'Rajkot', 'G', 'Shoulder Pain', 'Ice Therapy', 9043468140, 4002, 2005, 3007, 102),
(5002, 'Amit', 'R', 'Parmar', 9022345679, 45, 62.30, 'Bhaktinagar bypass', 'Surat', 'M', 'Brain Tumor', 'Brain Surgery', 9022344679, 4001, 2001, 3009, 101), 
(5003, 'Priti', 'A', 'Ambani', 2012365787, 7, 56.23, 'Hill station road', 'Surat', 'G', 'Brain Tumor', 'Brain Surgery', 2012365777, NULL, 2002, 3004, 103), 
(5004, 'Payal', 'S', 'Vora', 8302325477, 36, 90.50, 'Near madhapar chowk', 'Ahmedabad', 'G', 'Knee joint', 'Ice Therapy', 8302225477, 4005, 2004, 3003, 103), 
(5005, 'Nikhil', 'D', 'Patel', 9125476230, 72, 60.00, 'Gokul krishn hospital road', 'Jamnagar', 'M', 'Tooth Break', NULL, 9995476230, 4004, 2001, 3002, 101), 
(5006, 'Bhavya', 'A', 'Jani', 4480552201, 22, 45.28, 'SP road', 'Ahmedabad', 'M', 'Back Pain', 'Do Exercise', 4480552200, NULL, 2001, 3009, 101), 
(5007, 'Het', 'J', 'Varotariya', 3562479560, 18, 50.67, 'Meera road', 'Morbi', 'M', 'Heart Attack', 'Need Heart Surgery', 3562789560, 4006, 2006, 3005, 104), 
(5008, 'Jay', 'T', 'Patel', 7284562019, 69, 62.15, 'Chandani chowk', 'Morbi', 'M', 'Migraine', NULL, 7009562019, NULL, 2010, 3002, 101), 
(5009, 'Mehul', 'M', 'Joshi', 7765124490, 20, 50.00, 'Taj road', 'Ahmedabad', 'M', 'Tooth Break', 'Extraction', 7765554490, 4003, 2003, 3008, 104), 
(5010, 'Priya', 'H', 'Parmar', 2597891999, 49, 76.25, 'Alap villa', 'Morbi', 'G', 'Migraine', 'Improve sleep habit', 9090891999, 4007, 2002, 3004, 103)

--Bill_Detail
insert into Bill_Detail
values(6001, 5001, 2005, 102, '2023-12-10 12:25:50:000', '2023-12-11 12:25:50:000', 3255.25, 1500, 500.25, 5255.5, 2500), 
(6002, 5002, 2001, 101, '2023-11-17 17:02:10:002', '2023-11-20 17:02:10:002', 5600, 6000, 1050, 12650, 1000),
(6003, 5003, 2002, 103, '2024-01-15 17:30:30:030', '2024-01-25 17:30:30:030', 100.56, 15000, 820, 15920.56, 0),
(6004, 5004,2004, 103, '2022-01-10 11:11:00:020', '2022-01-16 11:11:00:020', 1005.2, 18000, 720.56, 19725.76, 2500.25),
(6005, 5005,2001, 101, '2023-12-25 11:30:45:001', '2023-12-30 11:30:45:001', 754, 10000, 1500, 12254, 4000.6),
(6006, 5006, 2001, 101, '2021-02-22 14:15:20:004', '2021-02-24 14:15:20:004', 6000, 4000, 320, 10320, 0),
(6007, 5007, 2006, 104, '2024-02-07 10:45:00:000', '2024-02-10 10:45:00:000', 4570, 13500, 600.35, 18670.35, 6000), 
(6008, 5008, 2010, 101, '2023-04-21 13:30:20:000', '2023-04-27 13:30:20:000', 1600.45, 3000, 250, 4850.45, 1500.71), 
(6009, 5009, 2003, 104, '2022-08-04 10:45:20:004', '2022-08-13 10:45:20:004', 2600, 40500, 2000, 45100, 5000), 
(6010, 5010, 2002, 103, '2024-02-04 18:25:10:001', '2024-02-06 18:25:10:001', 3500, 3000, 400, 6900, 3500)
--Transaction_Detail
insert into Transaction_Detail
values(7001, '100021', 2755.5, '2023-12-11 12:25:50:000', 'Cheque', 6001, 5001, 102),
(7002, NULL, 11650, NULL, 'Cash', 6002, 5002, 101), 
(7003, 'F14O2RD', 15920.56, '2024-01-25 17:30:30:030', 'Online', 6003, 5003, 103),
(7004, '250001', 17225.51, '2022-01-15 11:11:00:020', 'Cheque', 6004, 5004, 103), 
(7005, '100001', 8253.4, '2023-12-27 11:30:45:001', 'Cheque', 6005, 5005, 101), 
(7006, 'eQ632aB', 10320, '2021-02-24 14:15:20:004', 'Online', 6006, 5006, 101), 
(7007, NULL, 12670.35, NULL, 'Cash', 6007, 5007, 104), 
(7008, 'KHT98AJ', 3349.74, '2023-04-27 10:30:20:000', 'Online', 6008, 5008, 101), 
(7009, '500006', 40100, '2022-08-12 10:45:20:004', 'Cheque', 6009, 5009, 104), 
(7010, 'Xze57CK', 3400, '2024-02-07 18:25:10:001', 'Online', 6010, 5010, 103)
