create schema berethdb;
use berethdb;

create table usuario(
	id_usuario int auto_increment,
	acesso boolean not null default false,
	email varchar(80) not null,
	senha varchar(100) not null,
	cpf varchar(11) not null,
	rg varchar(11)not null,
	nome varchar(255)not null,
	telefone varchar(16),
	idade int,
	numero INT not null,
	bairro VARCHAR(50) not null,
	cidade VARCHAR(50) not null,
	estado VARCHAR(50) not null,
	complemento VARCHAR(255),
	cep VARCHAR(11) not null,
	nascimento date not null,
	dataRegistro datetime default CURRENT_TIMESTAMP() not null,
	primary key(id_usuario)
);

create table veiculo(
	idveiculo INT auto_increment,
	categoria ENUM("Carro", "Moto"),
	tipo ENUM("Sedan", "SUV", "Hatch", "Picape", "Minivan", "Cupê",
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
	primary key(idveiculo)
);
