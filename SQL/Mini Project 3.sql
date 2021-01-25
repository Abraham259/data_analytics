Create table Videos_table(Users_ID serial PRIMARY KEY,
Title VARCHAR(50)Unique NOT NULL,Lengths CHAR(10) Not Null,
URLs VARCHAR(300) NOT NULL);
select * from Videos_table;
Insert into Videos_table(Title,Lengths,URLs)
Values('Inside the mind of a master procrastinator',14,
'youtube.com/watch?v=arj7oStGLkU');
Insert into Videos_table(Title,Lengths,URLs)
Values('A Beautiful Mind',3,
'youtube.com/watch?v=pYdjNeFh6zw');
Insert into Videos_table(Title,Lengths,URLs)
Values('Phantom of the Opera',3,
'youtube.com/watch?v=pgz6PnHkmpY');

Create table Reviewer_table(Users_ID serial PRIMARY KEY,
Name VARCHAR(50)Unique NOT NULL,Rating interval,
Comments VARCHAR(300) NOT NULL,Title Varchar(50));
select * from Reviewer_table;

select * from Reviewer_table;
Insert into Reviewer_table(Name,Rating,Comments,Title)
Values('John','5',
'Loved it','A Beautiful Mind');
Insert into Reviewer_table(Name,Rating,Comments,Title)
Values('Robert','4',
'Pretty impresive','A Beautiful Mind');
Insert into Reviewer_table(Name,Rating,Comments,Title)
Values('Cesar','1','Meh','Phantom of the Opera');
Insert into Reviewer_table(Name,Rating,Comments,Title)
Values('James','5','WOW','Phantom of the Opera');

Select Videos_table.Title,Reviewer_table.Name,Reviewer_table.Rating,Reviewer_table.Comments,Videos_table.URLs
from Videos_table
inner Join Reviewer_table on Videos_table.Title=Reviewer_table.Title;


