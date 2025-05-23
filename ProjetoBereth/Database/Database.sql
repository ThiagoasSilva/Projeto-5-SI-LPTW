create schema berethdb;
use berethdb;

create table usuario(
	id_usuario int auto_increment,
	acesso boolean not null default false,
	email varchar(80) not null,
	senha varchar(100) not null,
	cpf varchar(11) not null,
	nome varchar(255),
	telefone varchar(16),
	endereco varchar(255),
	primary key(id_usuario)
);

create table veiculo(
	id_veiculo INT auto_increment,
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
		primary key(id_veiculo)
);

create table venda(
	id_venda int auto_increment,
    id_usuario int, -- comprador
    id_veiculo int,
    formaPagamento enum("Débito","Crédito","Dinheiro","Bitcoin"),
    parcelas int,
    valor decimal(15,2),
    dataVenda datetime,
		primary key (id_venda),
        foreign key (id_usuario) references usuario(id_usuario),
        foreign key (id_veiculo) references veiculo(id_veiculo)
);
