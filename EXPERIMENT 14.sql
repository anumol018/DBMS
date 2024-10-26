set serveroutput on;
show serveroutput;
Create Or Replace Function Factorial(N Int)
   Return Int As Fact Int;
   Begin
     fact:=1;
     for I In 1..N Loop
        fact:=fact * I;
     end Loop;
   return fact;
end;
/
Declare
   C Integer;
   Result Integer;
Begin
   C:=&c;
   Result:=Factorial(C);
   dbms_output.put_line('The factorial is '||result);
End;
/


Select * From Customer;

CREATE OR REPLACE FUNCTION totalCustomers
Return Number Is
    total number(2) := 0;
Begin
   Select Count(*) Into Total
   From Customer;
   RETURN total;
END;
/ 
Declare 
    c number(2); 
Begin 
    C := Totalcustomers(); 
    dbms_output.put_line('Total no. of Customers: ' || c); 
END; 
/

Create Table Student_Details(Roll_No Int Primary Key,Marks Int,Phone Int);
Insert Into Student_Details Values(1,55,8567123411);
Insert Into Student_Details Values(2,60,8590871233);
Insert Into Student_Details Values(3,85,9176345677);
Insert Into Student_Details Values(4,60,8577651234);
Insert Into Student_Details Values(5,47,6523128945);
Select * From Student_Details;
create or replace procedure pro1 as
Begin
update student_details set marks=marks+(marks*0.05);
End;
/
begin
pro1;
end;
/
Select * From Student_Details;

Create Table Customer_Details(Cust_Id Int Unique,Cust_Name Varchar(30),Address Varchar(50));
create or replace trigger Trigger1
after insert on customer_details
for each row 
Begin
dbms_output.put_line('The row is inserted');
end;
/
Insert Into Customer_Details Values(101,'John Woods','Italy');

Create Table Emp_Details(Empid Varchar(5) Unique,Empname Varchar(30),Salary Int);
Insert Into Emp_Details Values('EP12','Adam John',40000);
Insert Into Emp_Details Values('EP33','Amala Paul',15000);
Insert Into Emp_Details Values('EP11','Aravind James',10000);
Select * From Emp_Details;

Create Or Replace Trigger Trigger2
After Insert or update On Emp_Details
For Each Row 
When (new.Salary>20000)
Begin
Dbms_Output.Put_Line('The salary you have entered is greater than 20000');
End;
/
Insert Into Emp_Details Values('EP30','Arya Mary',60000);
Insert Into Emp_Details Values('EP08','Tom Miller',16000);
Select * From Emp_Details;


Create Table Cust_Count(Count_Row Int);
Insert Into Cust_Count Values(0);
select * from Cust_Count;
Create Or Replace Trigger Trigger3
Before Insert Or Delete On Customer_Details
For Each Row
begin
If Deleting Then Update Cust_Count Set Count_Row=Count_Row-1;
Else Update Cust_Count Set Count_Row=Count_Row+1;
End If;
End;
/
Insert Into Customer_Details Values(102,'Clair Brown','New Orleans');
Insert Into Customer_Details Values(103,'Elena Gilbert','Amsterdam');
Select * From Cust_Count;
Delete From Customer_Details Where Cust_Id=101;
Select * From Cust_Count;

Create Table Insert_Deleted_Row(Empid Varchar(5) Unique,Empname Varchar(30),Salary Int);
create table insert_updated_row(Empid Varchar(5) Unique,Empname Varchar(30),Salary Int);
Create Or Replace Trigger Trigger4
After Delete or update On Emp_Details
For Each Row
Begin
If Deleting Then Insert Into Insert_Deleted_Row Values(:Old.Empid,:Old.Empname,:Old.Salary);
else  insert into insert_updated_row values (:new.empid,:new.empname,:new.salary);
end if;
End;

Select * From Emp_Details;
delete from Emp_Details where empid='EP30';
Select * From Insert_Deleted_Row;
update Emp_Details set empname='Leyla M' where Empid='EP12';
Select * From insert_updated_row;

Commit;


 
