Create Table Course (id, course_name);
Insert INTO Course Values (1,"Front-end Development");
Insert INTO Course Values (2,"Back-end development");
Insert INTO Course Values (3,"Account Manager");

Create Table Faculty (id, name);
Insert INTO Faculty Values (1,"Computer Science");
Insert INTO Faculty Values (2,"Business-Administration");

Create Table Lecturer (id, user,level,account_number);
Insert INTO Lecturer Values (1,4,"Senior","GE222255BOG");
Insert INTO Lecturer Values (2,5,"Senior","GE00000BG2200");
Insert INTO Lecturer Values (3,6,"Senior","GE7789TBC009978");

Create Table Lectures (id, time,subject_name);
Insert INTO Lectures Values (1,"19:00",1);
Insert INTO Lectures Values (2,"18:00",2);
Insert INTO Lectures Values (3,"21:00",3);

Create Table Manager (id, user);
Insert INTO Manager Values (1,7);
Insert INTO Manager Values (2,8);

Create Table Person (id, name,surname,id_number,adress,second_adress,apart_number,birth_date,gender);
Insert INTO Person Values (1,"Mamuka","Bzhalava","12345678912","Tbilisi","","","1995-03-23","Male");
Insert INTO Person Values (2,"Levan","Natchkebia","12345678912","Tbilisi","","","1999-03-23","Male");
Insert INTO Person Values (3,"Anano","Edzgveradze","12345678912","Tbilisi","","","2001-03-23","Female");
Insert INTO Person Values (4,"Natia	","Salukvadze","12345678912","Tbilisi","","","1996-03-23","Female");
Insert INTO Person Values (5,"Davit","Madzgharashvili","12345678912","Tbilisi","","","1995-03-23","Male");
Insert INTO Person Values (6,"Reziko","Natchkebia","12345678912","Tbilisi","","","2004-03-23","Male");
Insert INTO Person Values (7,"Ani","Jikia","12345678912","Tbilisi","","","1998-03-23","Female");
Insert INTO Person Values (8,"Nino","Metreveli","12345678912","Tbilisi","","","1994-03-23","Female");

Create Table Student (id, user);
Insert INTO Student Values (1,1);
Insert INTO Student Values (2,2);
Insert INTO Student Values (3,3);

Create Table Subject (id, name,Course_id,Faculty_id);
Insert INTO Subject Values (1,"Python",2,1);
Insert INTO Subject Values (2,"C++",2,1);;
Insert INTO Subject Values (3,"React",1,1);
Insert INTO Subject Values (4,"Financial Accounting",4,2);