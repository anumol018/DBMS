Create Table Bank(Bank_Id Number(3) Primary Key,Bank_Name Varchar(20),Headoffice Varchar(20),Branch Varchar(20),Branchcode Varchar(5));
Insert Into Bank Values(101,'SBI','Delhi','Pala','SP12');
Insert Into Bank Values(102,'Union Bank','Mumbai','Ramapuram','UBR78');
Insert Into Bank Values(103,'SBI','Delhi','Paika','SP098');
Insert Into Bank Values(104,'Axis','UP','Chennai','AC564');
Insert Into Bank values(105,'HDFC','Hyderabad','KOllam','HDK87');
Select * From Bank;
Commit;
Savepoint A;
Delete From Bank Where Bank_Id=103;
Select * From Bank;
Rollback To Savepoint A;
Select * From Bank;

Commit;
Savepoint A;
Update Bank Set Headoffice='Rajastan' Where Bank_Name='SBI';
Select * From Bank;
Rollback To Savepoint A;
Select * From Bank;

Commit;
Savepoint B;
Delete From Bank Where Branch='Chennai';
Select * From Bank;
Rollback To Savepoint B;
Select * From Bank;

Commit;
