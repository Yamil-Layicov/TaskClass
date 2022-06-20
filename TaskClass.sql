Create Database Academy

Use Academy

Create Table Groups 
(
  Id int constraint PK_Groups_Id Primary Key identity,
  Name nvarchar(155) Constraint UNQ_Groups_Name Unique
)

Create Table Students
(
  Id int constraint PK_Students_Id Primary Key identity,
  Name nvarchar(155),
  Surname nvarchar(155),
  GroupId int Foreign Key References Groups(Id)
)

Alter Table Students 
Add Grade int 

--Groups table-na 3 data(P129,P124,P221), Students table-na 4 data əlavə edin(1 tələbə p221 qrupna, 3 tələbə p129 qrupuna aid olsun) - 5 bal

Insert Into Groups
(Name)
Values
(N'P129'),(N'P124'),(N'P221')


Insert into Students
(Name,Surname,GroupId)
Values
('Vusal'),('Aliyev'),(3),
('Vusal'),('Imanov'),(1),
('Maqsud'),('Seferov'),(1),
('Onur'),('Aliyev'),(1)

--P129 qrupuna aid olan tələbələrin siyahisini gosterin - 10 bal

Select s.Name From Students s
Join Groups g On s.GroupId=g.Id
Group by s.Name

Select s.Count(*),g.COUNT(*) From Students s
Join Groups g On s.GroupId=g.Id
Group by 