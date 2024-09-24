Create Table Customer(Customer_Id Int Primary Key,Customer_Name Varchar(30),Contact_Number Number(10),Address Varchar(30),City Varchar(20),Postal_Code Int,Country Varchar(20));
Create Table Employees(Employee_Id Int Primary Key,Lastname Varchar(20),Firstname Varchar(20),Birthdate Date,Photo Varchar(20));
Create Table Orders(Order_Id Int Primary Key,Customer_Id Int,Employee_Id Int,Orderdate Date,Shipperid Int,Foreign Key(Customer_Id)References Customer,Foreign Key(Employee_Id) References Employees);  

Insert Into Customer Values(100,'Prada','4567831212','487 West street','Milan',64734,'Italy');
Insert Into Customer Values(101,'Versace','456381232','456 West Street','New York',73553,'USA');
Insert Into Customer Values(102,'Allen Solly','6543218998','Pala','Pala',686661,'India');
Insert Into Customer Values(103,'Zara','8765432198','Hill Road','Mumbai',867353,'India');
Insert Into Customer Values(104,'Zara','6543217865','Mary Street','New York',878548,'USA');
Insert Into Customer Values(106,'Hermès','8765436543','Melbon Street','New York',85891,'USA');
Insert Into Customer Values(107,'Ralph Lauren','8765436790','Broadway','New York',88765,'USA');
Select * From Customer;

Insert Into Employees Values(1,'Menon','Abhishek','09-10-1976',Null);
Insert Into Employees Values(2,'Yildiz','Serra','23-09-2000',Null);
Insert Into Employees Values(3,'Mary','Anita','02-08-2001',Null);
Insert Into Employees Values(4,'Woods','Bob','23-04-1999',Null);
Insert Into Employees Values(5,'Tomson','Rebecca','23-05-1979',Null);
Select * From Employees;

Insert Into Orders Values(1,100,1,'12-09-2022',32569);
Insert Into Orders Values(2,102,4,'28-10-2024',56567);
Insert Into Orders Values(3,101,5,'01-11-2023',78634);
Insert Into Orders Values(4,100,1,'12-06-2024',58126);
Insert Into Orders Values(5,107,4,'31-05-2024',8765);
Insert Into Orders Values(6,100,2,'23-01-2023',67893);
Select * From Orders;

Select * From Customer Order By Customer_Name Asc;
Select * From Orders Order By Orderdate Asc;
Select * From Employees Where Birthdate>To_Date('31-12-1980','DD_MM_YYYY') Order By Birthdate Asc;
Select * From Orders Where Customer_Id In (Select Customer_Id From Customer Where Country='USA')Order By Orderdate Desc;
Select Customer_Id,Count(Order_Id) From Orders Group By Customer_Id;
Select City,Count(Customer_Id)From Customer Group By City;
Select * From Customer Where Customer_Id In(Select Customer_Id From Orders Group By Customer_Id Having Count(*)>2);
select city,count(*) as customer_count from customer group by city having count(*)>3;
Commit;
