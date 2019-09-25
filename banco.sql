create database bdProjeto_PI;

use bdProjeto_PI;

create table tbEndereco(
id_Endereco int primary key auto_increment,
cep varchar(11),
estado varchar (50),
bairro varchar(50),
numero int,
rua varchar (50),
cidade varchar (50)
);

create table tbEsporte(
id_Esporte int primary key auto_increment,
modalidade varchar(50)
);

create table tbClima(
id_Clima int primary key auto_increment,
temperatura varchar(30),
DH datetime,
fk_Local int,
foreign key (fk_Local) references tbEndereco(id_Endereco)
);


create table tbPreferencia(
id_Preferencia int primary key auto_increment,
temperatura varchar(40),
fk_Endereco int,
fk_esporte int,
foreign key (fk_Endereco) references tbEndereco(id_Endereco),
foreign key (fk_Esporte) references tbEsporte(id_Esporte)
);



create table tbUsuario(
id_Usuario int primary key auto_increment,
nome varchar (40),
cpf varchar (15),
telefone varchar (15),
sexo int,
fk_Endereco int,
fk_Clima int,
fk_Esporte int,
fk_Preferencia int,

foreign key (fk_Endereco) references tbEndereco(id_Endereco),
foreign key (fk_Esporte ) references tbEsporte(id_Esporte),
foreign key (fk_Preferencia) references tbPreferencia(id_Preferencia)

);

insert into tbEsporte value 
(null,'Futebol'),
(null,'Basquete'),
(null,'Volei'); -- Inserindo valores na tabela esporte

insert into tbEndereco value 
(null,'1232442','São Paulo','Jardim Moises','323','Silvera','Guianases'); -- Inserindo valores na tabela endereço

insert into tbClima value
(null,'20,0','2019-05-30 11:11:11',1), -- Inserindo valores na tabela clima 
(null,'25,0','2019-08-05 12:00:00',2);


insert into tbPreferencia value -- Inserindo valores a tabela Preferencia 
(null,'10,9',2,2);


insert into tbUsuario value -- Inserindo valores na tabela usuario
(null,'Andre','446565665','(11)97777-5885','Masculino',2,2,2,2);

drop database bdProjeto_PI;

