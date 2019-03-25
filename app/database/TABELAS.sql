﻿CREATE TABLE funcionario(
	cpf VARCHAR(15) NOT NULL,
	nome VARCHAR(250) NOT NULL,
	email VARCHAR(250) NOT NULL,
	telefone VARCHAR(20) NOT NULL,
	senha VARCHAR(51) NOT NULL,
	PRIMARY KEY (cpf));

CREATE TABLE cliente(
	cpf VARCHAR(15) NOT NULL,
	nome VARCHAR(250) NOT NULL,
	email VARCHAR(250) NOT NULL,
	telefone VARCHAR(20) NOT NULL,
	PRIMARY KEY (cpf));

CREATe Table admin(cpf varchar(15) not null,
	nome varchar(67) not null,
	endereço varchar(200) not null,
	email varchar(200) not null,
	telefone varchar(20) not null,
	primary key (cpf));

create table quartos(
	numero varchar(6) not null,
	m² varchar(10) not null,
	aluguel_por_dia float not null,
	aluguel_por_mes float not null,
	primary key (numero));


create table alugados(
	cpf_funcio VARCHAR(15) NOT NULL,
	numero_quarto varchar(6) not null,
	alugado_em date not null,
	alugado_ate date not null,
	primary key (numero_quarto),
	foreign key (cpf_funcio) references funcionario(cpf),
	foreign key (numero_quarto) references quartos(numero));