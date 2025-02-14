-- Geração de Modelo físico
-- Sql ANSI 2003 - brModelo.



CREATE TABLE Clientes (
idCliente INTEGER PRIMARY KEY,
nome VARCHAR(100),
telefone VARCHAR(20),
email VARCHAR(100),
Cidade VARCHAR(50),
Estado VARCHAR(2)
)

CREATE TABLE Destinos (
idDestino INTEGER PRIMARY KEY,
imagem VARCHAR(255),
descritivo CHAR(10),
nome VARCHAR(100)
)

CREATE TABLE Reservas (
idReserva INTEGER PRIMARY KEY,
status VARCHAR(10),
idCliente INTEGER,
dataReserva DATETIME,
idDestino INTEGER,
FOREIGN KEY(idCliente) REFERENCES Clientes (idCliente),
FOREIGN KEY(idDestino) REFERENCES Destinos (idDestino)
)

CREATE TABLE Mensagens (
idMensagem INTEGER PRIMARY KEY,
dataEnvio SMALLDATETIME,
mensagem VARCHAR(10),
idCliente INTEGER,
assunto VARCHAR(20),
FOREIGN KEY(idCliente) REFERENCES Clientes (idCliente)
)

