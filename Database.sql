create schema berethdb;
use berethdb;

create table usuario(
	id_usuario int auto_increment,
	cpf varchar(11) not null,
	rg varchar(11)not null,
	nome varchar(255)not null,
	dataRegistro datetime default CURRENT_TIMESTAMP() not null,
	idade int,
	nascimento date not null,
		primary key(id_usuario)
);

create table usuarioTelefone(
	id_telefone int auto_increment,
	id_usuario int,
	telefone varchar(16), -- conseiderando formatação exemplo:(61) 91234-5678
		primary key(id_telefone)
);

create table usuarioLogin (
	id_login int auto_increment,
	id_usuario int, -- usuario(id_usuario)
	acesso boolean not null default false,-- ("admin","cliente"),
-- 	id_telefone // possível implementação de método de recuperação de conta por telefone
	email varchar(80) not null,
	senha varchar(100) not null,
	dataRegistro datetime default current_timestamp() not null,
		primary key(id_login),
		foreign key(id_usuario) references usuario(id_usuario)
);

create table usuarioEndereco (
	id_endereco INT auto_increment,
	id_usuario INT,
	numero INT not null,
	bairro VARCHAR(50) not null,
	cidade VARCHAR(50) not null,
	estado VARCHAR(50) not null,
	complemento VARCHAR(255),
	cep VARCHAR(11) not null,
		primary key(id_endereco),
		foreign key(id_usuario) references usuario(id_usuario)
);

create table veiculo(
	idVeiculo INT auto_increment,
	categoria ENUM("Carro", "Moto"),
	tipo enum("Sedan", "SUV", "Hatch", "Picape", "Minivan", "Cupê",
			"Perua", "Roadster", "Utilitário","Esportiva", "Naked", 
			"Custom", "Touring", "Big Trail", "Scooter", "Ciclomotor", 
			"Motocross", "Enduro"),
	marca VARCHAR(30),
	modelo VARCHAR(30),
	cor VARCHAR(30),
	rodas INT,
	motorizacao FLOAT,
	peso_Kg FLOAT,
	capacidadeTanque_L FLOAT,
	assentos INT(11),
	anoFabricacao YEAR(4),
	anoModelo YEAR(4),
	placa VARCHAR(8),
	chassi VARCHAR(17),
		primary key(id_usuario) references usuario(id_usuario)
);
