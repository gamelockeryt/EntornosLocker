drop database if exists Reservas_Entornos;
create database Reservas_Entornos;
use Reservas_Entornos;

create table User
(
idUser int not null auto_increment,
user_name varchar (30) not null,
user_pass varchar (30) not null,
unique (user_name),
primary key (idUser)
);

create table Booking
(
idBook int not null,
name varchar (30) not null,
descr varchar (256),
bookdate date,
price dec(9,2),
idUser int not null,
primary key(idBook),
foreign key(idUser) references User(idUser) on delete set null,
unique (idBook)
);

create table Asignation
(
idUser int,
idBook int,
foreign key (idUser) references User (idUser),
foreign key (idBook) references Booking (idBook)
);
