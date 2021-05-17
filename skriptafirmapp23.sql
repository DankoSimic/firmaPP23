drop database if exists firmapp23;
create database firmapp23;
use firmapp23;

create table projekt (
	id_projekt int primary key auto_increment not null,
	naziv varchar (50) not null,
	cijena decimal (18,2) not null
);

create table programer (
	id_programer int primary key auto_increment not null,
	ime varchar (50) not null,
	prezime varchar (50) not null,
	datum_rodjenja datetime not null,
	placa decimal (18,2) not null
);

create table sudjeluje (
	projekt int not null,
	programer int not null,
	datum_pocetka datetime not null,
	datum_kraja datetime not null
);

alter table sudjeluje add foreign key (projekt) references projekt (id_projekt);
alter table sudjeluje add foreign key (programer) references programer (id_programer);

# Test