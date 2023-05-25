-- 
create database dbloja;

use dbloja 

create table usuario(
idusuario int identity primary key,
nomeusuario varchar(30) not null,
senha varchar(255) not null,
datacriacao datetime default getDate()
);

select * from sys.tables;

create table cliente(
idcliente int identity primary key,
nomecliente varchar(50) not null,
cpf varchar(15) not null,
idade int not null,
idusuario int foreign key references usuario ("idusuario")
);

create table endereco(
idendereco int identity primary key,
tipo varchar(20) not null,
logradouro varchar(100) not null,
numero varchar(10) not null,
complemento varchar(100),
cep varchar(10) not null,
bairro varchar(30) not null
);


create table cliente(
idcliente int 
)