--- Sprint DQL

USE Locadora;

SELECT * FROM Empresas;
SELECT * FROM Marcas;
SELECT * FROM Veiculos;
SELECT * FROM Cliente;

--INNER JOIN--

SELECT * FROM Aluguel;

SELECT Aluguel.dataPegado, Aluguel.dataDevolucao, Cliente.nomeCliente, Modelos.nomeModelo FROM Aluguel
INNER JOIN Cliente
ON Cliente.idCliente = Aluguel.idCliente
INNER JOIN Veiculos
ON Aluguel.idVeiculo = Veiculos.idVeiculo
INNER JOIN Modelos
ON Modelos.idModelo = Veiculos.idModelo;

SELECT Aluguel.dataPegado, Aluguel.dataDevolucao, Cliente.nomeCliente, Modelos.nomeModelo FROM Aluguel
INNER JOIN Cliente
ON Cliente.idCliente = Aluguel.idCliente
INNER JOIN Veiculos
ON Aluguel.idVeiculo = Veiculos.idVeiculo
INNER JOIN Modelos
ON Modelos.idModelo = Veiculos.idModelo
WHERE Cliente.nomeCliente LIKE 'Fernanda';