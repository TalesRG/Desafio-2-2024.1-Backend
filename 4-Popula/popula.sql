INSERT INTO categoria (id_categoria, nome_categoria) VALUES
(1, 'Passeio'),
(2, 'Comercial'),
(3, 'Moto'),
(4, 'Ônibus'),
(5, 'Caminhão');

INSERT INTO modelo (id_modelo, nome_modelo) VALUES
(100000, 'Fiesta'),
(100001, 'Civic'),
(123456, 'Gol'),
(999999, 'S10');

INSERT INTO proprietario (cpf, nome, endereco, bairro, cidade, telefone, estado, sexo, data_nascimento) VALUES
('12345678901', 'João Silva', 'Rua A, 123', 'Centro', 'Brasília', '61 1234-5678', 'DF', 'M', '1980-05-15'),
('23456789012', 'Maria Santos', 'Av B, 456', 'Sul', 'São Paulo', '11 9876-5432', 'SP', 'F', '1990-07-20'),
('34567890123', 'Pedro Oliveira', 'Qd C, 789', 'Leste', 'Rio de Janeiro', '21 4567-8901', 'RJ', 'M', '1985-03-10'),
('45678901234', 'Ana Costa', 'Rua D, 101', 'Oeste', 'Salvador', '71 3344-5566', 'BA', 'F', '1975-09-25'),
('56789012345', 'Carlos Prado', 'Av E, 202', 'Norte', 'Fortaleza', '85 6677-8899', 'CE', 'M', '1965-12-30');

INSERT INTO agente_de_transito (matricula, nome, data_contratacao, tempo_de_servico) VALUES
(1, 'Roberto Dias', '2010-01-10', '03:30:00'),
(2, 'Luciana Freitas', '2015-05-20', '05:45:00'),
(3, 'Marcos Teixeira', '2020-07-15', '01:15:00'),
(4, 'Sandra Gomes', '2005-02-25', '10:00:00'),
(5, 'Ricardo Nunes', '2018-11-30', '02:50:00');

INSERT INTO local (longitude, latitude, velocidade_permitida) VALUES
(-47.892365, -15.793409, 60),
(-46.633309, -23.550520, 50),
(-43.172896, -22.906847, 70),
(-38.501414, -12.971412, 40),
(-38.529648, -3.717220, 30);

INSERT INTO tipo_infracao (id_tipo_infracao, valor, velocidade) VALUES
(1, 195.00, 50),
(2, 150.00, 60),
(3, 250.00, 70),
(4, 130.00, 40),
(5, 100.00, 30);

INSERT INTO veiculo (placa, chassi, cor, ano, id_categoria, id_modelo, cpf_proprietario) VALUES
('JHK1234', '9BWZZZ377VT004251', 'Prata', 2020, 1, 1, '12345678901'),
('GHI5678', '9BWZZZ377VT004252', 'Azul', 2021, 2, 2, '23456789012'),
('DEF9012', '9BWZZZ377VT004253', 'Vermelho', 2019, 3, 3, '34567890123'),
('ABC3456', '9BWZZZ377VT004254', 'Preto', 2018, 4, 4, '45678901234'),
('XYZ7890', '9BWZZZ377VT004255', 'Branco', 2017, 5, 5, '56789012345');

INSERT INTO infracao (data, hora, placa_veiculo, id_local, matricula_agente, id_tipo_infracao) VALUES
('2023-01-01', '10:30:00', 'JHK1234', 1, 1, 1),
('2023-02-01', '11:30:00', 'GHI5678', 2, 2, 2),
('2023-03-01', '12:30:00', 'DEF9012', 3, 3, 3),
('2023-04-01', '13:30:00', 'ABC3456', 4, 4, 4),
('2023-05-01', '14:30:00', 'XYZ7890', 5, 5, 5);