Create table STUDENT
 (  
Roll_No int ,    
Name Varchar (20) , 
Marks Int  ,   
Grade varchar(2) 
     );
select *from STUDENT;
INSERT INTO STUDENT
VALUES(1,"madhav",90,"A");
INSERT INTO STUDENT
VALUES(2,"lakshmi",99,"A");
INSERT INTO STUDENT
VALUES(3,"Ammu",50,"C");
INSERT INTO STUDENT
VALUES(4,"Zamin",80,"B");
INSERT INTO STUDENT
VALUES(5,"Ammu",50,"C");
select *from STUDENT;
alter table STUDENT
add primary key (Roll_No);
alter table STUDENT
add Contact int;
select *from STUDENT;
alter table STUDENT
drop column Grade;
select *from STUDENT;
Alter table STUDENT
Rename to CLASSTEN;
select *from CLASSTEN;
TRUNCATE TABLE CLASSTEN; 
select *from CLASSTEN;
Drop table CLASSTEN;
select *from CLASSTEN;