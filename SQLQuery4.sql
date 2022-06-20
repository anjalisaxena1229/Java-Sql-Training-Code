Select * from Student where ID between 106 and 110   /* 106 and 110 is included */


Select name from Student  where name Like 'A%'
Select name from Student  where name Like '%A'  // Kiyara 
Select name from Student  where name Like '%v%' // Varun and Lavi

/* % - specify 0 or more char     _ specify excatly one character     [] Any char betw bracket      [^] not char betw bracket */
Select name from Student  where name Like '_v%' // null
Select name from Student  where name Like '%v_' // lavi

/*Sorting rows using order by*/

Select name from Student order by name
Select id from Student  order by id desc
Select id from Student order by id asc

/*Selecting Top n or top N % of rows from the table */

Select top 5 name,id from Student
Select top 60 percent name from Student
Select top 60 percent name from Student order by name


Select * from Employee

/* Group by */
Select salary from Employee group by salary 
select city,SUM(Salary) As SUM_SALRY from Employee group by City
select city,SUM(Salary) As SUM_SALRY from Employee group by City having city='NY'
Select SUM(Salary) As SUM_SALRY from Employee where city ='NY'

/*Count */
Select count(*) from Employee
Select count(Salary) from Employee
Select count(Distinct Salary) from Employee 
Select Distinct Salary from Employee order by Salary desc

/*Join*/











