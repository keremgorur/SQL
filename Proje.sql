use Northwind
select * from Employees

select [EmployeeID], [LastName], [FirstName], [Title], [TitleOfCourtesy], [BirthDate], [HireDate], [Address], [City], [Region], [PostalCode], [Country], [HomePhone], [Extension], [Photo], [Notes], [ReportsTo], [PhotoPath] from Employees
select firstname, LastName from Employees
select  firstname, lastname, birthdate, title from Employees 

 -- A�a��daki a��klamalar� T�rk�e yapmak 1. yol

select firstname ad, lastname soyad, Title g�rev from Employees

 --2. yol 

select FirstName as Ad, LastName as Soyad, BirthDate as 'Do�um Tarihi' from Employees 

 -- Tekil kay�tlar�n listelenmesi (Listede 1 den fazla varsa ve bu �ekilde g�sterilmek istenmiyorsa sadece 1 er tane g�steriyor) 

select distinct City from Employees

-- Metinleri birle�tirmek
select TitleOfCourtesy kerem, + ' ' + FirstName + ' ' + LastName as G�r�r from Employees

select  CONCAT(TitleOfCourtesy , ' ' , Firstname , ' ' , Lastname) as Kerem from employees

select * from Categories

insert into Categories (CategoryName , description) values ('Tatl�' , 'F�st�kl� Sarma' ) -- Ka� kere �al��t�r�rsan o kadar ekleme yap�yor katagoriye 

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

 --Yeni tablo olu�turup fiyata y�zde 5 zam  yapt�k

select * from Products

select ProductID, ProductName, Unitprice as OldPrice, UnitPrice as Newprice into Urunler  from Products

update Urunler set Newprice = Newprice +(Newprice * 0.05)

select * from Urunler

Select * from Calisanlar 
delete from Calisanlar where EmployeeID = 1 

delete from Calisanlar where TitleOfCourtesy IN ( 'Ms.' , 'Mrs.' )

Select EmployeeID, Firstname, Lastname from Employees where EmployeeID >= 5 

select FirstName, LastName, BirthDate from Employees where YEAR(BirthDate) = 1960 


