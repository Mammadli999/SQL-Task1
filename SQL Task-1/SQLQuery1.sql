CREATE DATABASE Blog

USE Blog

CREATE TABLE Users
(
 Id INT PRIMARY KEY IDENTITY,Name NVARCHAR(30),Surname NVARCHAR(30),Email NVARCHAR(50) NOT NULL CONSTRAINT CK_Email CHECK(LEN(Email)>=4 and LEN(Email)<=100)
)

ALTER TABLE Users
ADD UNIQUE (Email)

CREATE TABLE Posts 
(
Id INT PRIMARY KEY IDENTITY,LikeCount INT, CreatedAt DATE,Title NVARCHAR(100),PostText NVARCHAR(500) NOT NULL,UserId INT FOREIGN KEY REFERENCES Users(Id)
)

INSERT INTO Users
VALUES('abbas','mammadli','mammadliabbas444@gmail.com'),
('adil','kazimov','kazimovadil215@mail.ru'),
('samid','semedzade','samidsemezdaze@vk.ru'),
('zaman','seferov','zamanseferov44@mail.ru'),
('seyfi','necefli','seyfinecefli224@gmail.com'),
('revan','agayev','agayevrevan701@gmail.com')

INSERT INTO Posts
VALUES(80,'2-2-2018','News','Bugun Bizim Futbol Komandamiz Qalib oldu!!!!',1),
(104,'4-6-2020','Phone','Yeni Iphone Qarwinizdadir',1),
(444,'8-6-2021','Restaurants','HardRock Restoranimiz artiq yeni unvanda',1),
(20,'12-12-2012','News','Dunyanin sonuna son 9 gun qalid!!!!!!',5),
(100,'12-7-2022','News','F-1 yariwinin qalibi melum oldu!!!!',3)