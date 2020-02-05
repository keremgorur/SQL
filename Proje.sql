use Northwind
select * from Employees

select [EmployeeID], [LastName], [FirstName], [Title], [TitleOfCourtesy], [BirthDate], [HireDate], [Address], [City], [Region], [PostalCode], [Country], [HomePhone], [Extension], [Photo], [Notes], [ReportsTo], [PhotoPath] from Employees
select firstname, LastName from Employees
select  firstname, lastname, birthdate, title from Employees 

 -- Aþaðýdaki açýklamalarý Türkçe yapmak 1. yol

select firstname ad, lastname soyad, Title görev from Employees

 --2. yol 

select FirstName as Ad, LastName as Soyad, BirthDate as 'Doðum Tarihi' from Employees 

 -- Tekil kayýtlarýn listelenmesi (Listede 1 den fazla varsa ve bu þekilde gösterilmek istenmiyorsa sadece 1 er tane gösteriyor) 

select distinct City from Employees

-- Metinleri birleþtirmek
select TitleOfCourtesy kerem, + ' ' + FirstName + ' ' + LastName as Görür from Employees

select  CONCAT(TitleOfCourtesy , ' ' , Firstname , ' ' , Lastname) as Kerem from employees

select * from Categories

insert into Categories (CategoryName , description) values ('Tatlý' , 'Fýstýklý Sarma' ) -- Kaç kere çalýþtýrýrsan o kadar ekleme yapýyor katagoriye 

insert into Categories (Description) values ('Tepsi Baklava') 

Select * from Shippers

insert into Shippers (CompanyName, Phone) Values ('Mng Express' , '503 555 98 31') 

insert into Shippers Values ('Aras Express' , '503 555 98 31')

insert into Customers (CompanyName, CustomerID) values ('Bilge adam', '7841')
Select * from Customers

select * into Calisanlar From Employees
select * from Calisanlar

update Calisanlar set Lastname = 'Vuranok'
update Calisanlar set FirstName = 'Murat' where EmployeeID = 1 

 --Yeni tablo oluþturup fiyata yüzde 5 zam  yaptýk

select * from Products

select ProductID, ProductName, Unitprice as OldPrice, UnitPrice as Newprice into Urunler  from Products

update Urunler set Newprice = Newprice +(Newprice * 0.05)

select * from Urunler

Select * from Calisanlar 
delete from Calisanlar where EmployeeID = 1 

delete from Calisanlar where TitleOfCourtesy IN ( 'Ms.' , 'Mrs.' )

Select EmployeeID, Firstname, Lastname from Employees where EmployeeID >= 5 

select FirstName, LastName, BirthDate from Employees where YEAR(BirthDate) = 1960 


