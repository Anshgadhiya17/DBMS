--Date Functions

-- this queries are based on my database name and tables name  

--1. Write a query to display the current date & time. Label the column Today_Date.
Select GETDATE() AS 'TODAY_DATE'

--2. Write a query to find new date after 365 day with reference to today.
Select GETDATE() + 365

--3. Display the current date in a format that appears as may 5 1994 12:00AM.
Select CONVERT(VARCHAR, GETDATE())

--4. Display the current date in a format that appears as 03 Jan 1995.
Select CONVERT(VARCHAR, GETDATE(),106)

--5. Display the current date in a format that appears as Jan 04, 96.
Select CONVERT(VARCHAR(20), GETDATE(),7)

--6. Write a query to find out total number of months between 31-Dec-08 and 31-Mar-09.
Select DATEDIFF(MONTH,'2008-12-31','2009-03-31')

--7. Write a query to find out total number of years between 25-Jan-12 and 14-Sep-10.
Select DATEDIFF(YEAR, '2012/01/25','2010/09/14')

--8. Write a query to find out total number of hours between 25-Jan-12 7:00 and 26-Jan-12 10:30.
Select DATEDIFF(HOUR, '2012-01-25 07:00', '2012-01-26 10:30')

--9. Write a query to extract Day, Month, Year from given date 12-May-16.
Select DAY('2016/05/12'), MONTH('2016/05/12'), YEAR('2016/05/12')

--10. Write a query that adds 5 years to current date.
Select DATEADD(YEAR, 5, GETDATE())

--11. Write a query to subtract 2 months from current date.
Select DATEADD(month, -2, GETDATE())

--12. Extract month from current date using datename () and datepart () function.
Select DATENAME(MONTH,GETDATE())
Select DATEPART(MONTH, GETDATE())

--13. Write a query to find out last date of current month.
Select EOMONTH(GETDATE())

--14. Write a query to display date & time after 30 days from today.
Select DATEADD(DAY, 30, GETDATE())

--15. Calculate your age in years and months.
 Select DATEDIFF(YEAR,'2002-01-25',GETDATE())
 Select DATEDIFF(MONTH,'2002-01-25',GETDATE())
