select * from Employee

/* indexing */
create index IX_Employee_salary on Employee(salary Asc)
sp_Helpindex Employee

/*create index IX_Employee_salary1 on Employee(salary Asc)
drop index Employee.IX_Employee_salary1 */


/* Create clustered index IX_Student_Name on Student(name Asc) this will give error becoz we cant create 2 cluster index */
Create clustered index IX_Student_Name on Employee(Gender Desc , Salary Asc)


/*Views*/
Create view FilteredData as Select name,city from Employee where gender ='f'
select * from FilteredData

sp_helptext FilteredData


/*Updating the View */
Update FilteredData Set name='AligarhWale' where city='Aligarh'
Insert into FilteredData values('Yuqin','china')


/*Procedure */
Create Procedure AnjaliProc
AS
Begin
Select name,gender from Employee
order by salary asc;
End;

Exec AnjaliProc

/*Modify Procedure */
Alter Procedure AnjaliProc
As
Begin
Select name,gender from Employee
order by Gender;
End;

/* Stored Procedure with Parameter */
/*Every Parameter must start with @ sign */
ALTER PROCEDURE AnjaliProc(@min_list_price AS DECIMAL)
AS
BEGIN
    SELECT
        name , gender 
    FROM 
	    Employee
     WHERE
        Salary>= @min_list_price;
   
END;

Exec AnjaliProc 50000


/* Declaring and setting the variable */
Declare @count int ;
Set @count=65000;
Select name, salary from employee where salary=@count
order by Gender

/*https://www.sqlservertutorial.net/sql-server-stored-procedures/variables/*/


