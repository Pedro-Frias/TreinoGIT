CREATE DATABASE QualityBeef;
USE QualityBeef;

-- TABELA DE CADASTRO
create table cadastro(
	id INT PRIMARY KEY AUTO_INCREMENT,
    CNPJ CHAR(18),
    Email VARCHAR(100),
    senha VARCHAR(50),
    Telefone CHAR(14),
    Localidade VARCHAR(50),
    UF char(2)
    );
    

INSERT INTO cadastro VALUES
(null,'11.216.056/0001-03','empresa1@gmail.com','#TESTE1','55124498113256','Rua Oratório,Vila Assunção ', 'SP'),
(null,'66.746.457/0001-58','empresa2@gmail.com','#TESTE2','55112214-1537','Rua Oratório,Parque das Naçoes ', 'MG'),
(null,'84.094.438/0001-76','empresa3@gmail.com','#TESTE3','55112356-8237','Rua Oratório,Vila Carrao ', 'RS'),
(null,'77.902.324/0001-40','empresa4@gmail.com','#TESTE4','55112942-3429','Rua sergipe,Salvador', 'BA');

SELECT * FROM cadastro where UF = 'SP';

SELECT * FROM cadastro where email = 'empresa1@gmail.com';

SELECT * FROM cadastro WHERE telefone LIKE '%9';

SELECT * FROM cadastro ORDER BY id DESC;

-- TABLEA DE SENSORES 

create table Sensores(
	id INT PRIMARY KEY AUTO_INCREMENT,
	Tipo VARCHAR(50),
    Modelo VARCHAR(50),
    StatusSensor VARCHAR(50), CONSTRAINT checkSensor 
		CHECK (StatusSensor IN('manutenção','ativo','inativo')),
	Registro DATETIME DEFAULT CURRENT_TIMESTAMP
    
	);

INSERT INTO Sensores(id, Tipo, Modelo, StatusSensor) VALUES
(NULL,'temperatura','LM35','Ativo'),
(NULL,'temperatura','LM35','Inativo'),
(NULL,'temperatura','LM35','Inativo'),
(NULL,'temperatura','LM35','Manutenção'),
(NULL,'temperatura','LM35','Manutenção'),
(NULL,'temperatura','LM35','Ativo');

SELECT * FROM Sensores;

SELECT * FROM Sensores WHERE StatusSensor = 'Inativo';

SELECT * FROM SENSORES ORDER BY Registro DESC;

SELECT * FROM Sensores WHERE Modelo = 'LM35';
-- TABELA MÉTRICA

CREATE TABLE metrica(
	id INT PRIMARY KEY AUTO_INCREMENT,
    HoraTemperatura DATETIME default current_timestamp,
    TemperaturaReal decimal(3,1)

);


INSERT INTO Metrica(id, TemperaturaReal) VALUES
(NULL, '-1.5'),
(NULL, '-2.5'),
(NULL, '-3.5'),
(NULL, '2.5');

SELECT * FROM Metrica;

SELECT * FROM Metrica ORDER BY temperaturaReal DESC;

SELECT * FROM Metrica ORDER BY temperaturaReal ;

SELECT * FROM Metrica ORDER BY HoraTemperatura DESC;

-- Tabela para Identificação do Caminhao

CREATE TABLE IdentCaminhao(
	id INT PRIMARY KEY AUTO_INCREMENT,
    Modelo varchar(50),
    Placa char(8),
    Funcionario varchar(50),
    RG char(9),
    Rota varchar(50)
);
    

INSERT INTO IdentCaminhao VALUES
(Null,'Mercedes','NEV-7956','Jorge Henrique','323781111','Salvador,Bahia'),
(Null,'VolksWagen','LFV-8395','Mariane Paula','330086947','Pedra Bela,Minas Gerais'),
(Null,'Mercedes','MZX-6517','Matias Pedro','193833323','Santo André,São Paulo'),
(Null,'Iveco','MVA-7529','Rayssa Lopes','178633318','Manaus,Amazonas');

SELECT * FROM IdentCaminhao ;

SELECT * FROM IdentCaminhao WHERE Modelo = 'Mercedes';

SELECT * FROM identcaminhao WHERE Funcionario like 'Mariane%';

SELECT * FROM IdentCaminhao WHERE Rota = 'Santo André,Sao Paulo';




    