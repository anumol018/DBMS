Create Table Bank_Exp12(Bankcode Varchar(3) Primary Key,Bankname Varchar(40) Not Null,Headoffice Varchar(30),Branches Int Check(Branches>0));
Insert Into Bank_Exp12 Values('SBT','SBI','New Delhi',33);
Insert Into Bank_Exp12 Values('UNT','Union Bank','Eranakulam',46);
Insert Into Bank_Exp12 Values('FBR','Federal Bank','Kerala',56);
Insert Into Bank_Exp12 Values('AXS','Axis','UP',36);
Insert Into Bank_exp12 Values('HFC','HDFC','Hyderabad',51);
Select * From Bank_exp12;

Create Table Branch(Branchid Varchar(5) Primary Key,Branchname Varchar(30) Default 'New Delhi',Bankid Varchar(3),Foreign Key(Bankid) References Bank_Exp12(Bankcode) On Delete Cascade);
Insert Into Branch Values('BR34',Default,'SBT');
Insert Into Branch Values('BR03','Kottayam','UNT');
Insert Into Branch Values('BR90','Kottayam','AXS');
Insert Into Branch Values('BR45','default','FBR');
select * from Branch;

Delete From Bank_Exp12 Where Bankcode='SBT';
Select * From Bank_Exp12;
Select * From Branch;
Alter Table Branch Drop Primary Key;
Desc Branch;
Select * From Bank_Exp12 Where Headoffice='Eranakulam';
Create View Bank_Headoffice As Select * From Bank_Exp12 Where Headoffice='Eranakulam';
Select * From Bank_Headoffice;
Select * From Branch Where Branchname='Kottayam';
Create View Bank_Branch As Select * From Branch Where Branchname='Kottayam';
Select * From Bank_Branch;
