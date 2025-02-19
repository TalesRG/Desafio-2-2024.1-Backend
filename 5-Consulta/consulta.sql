-- A) Apresentar todos os dados dos veículos de um determinado proprietário (informado pelo usuário através do CPF);
SELECT *
from veiculo
where cpf_proprietario = '12345678901';

-- B) Consultar proprietário(s) por qualquer parte do nome;
SELECT * FROM proprietario WHERE nome LIKE '%Santos%';

-- C) Mostrar os dados da infração e do veículo que tiveram infrações cadastradas no Detran em um período (ou data) no padrão DE... ATÉ...;
SELECT
    i.id_infracao,
    i.data,
    i.hora,
    v.placa,
    v.chassi,
    v.cor,
    v.ano,
    v.id_categoria,
    v.id_modelo,
    v.cpf_proprietario
FROM infracao i
JOIN veiculo v ON i.placa_veiculo = v.placa
WHERE i.data BETWEEN '2023-01-01' AND '2023-04-01';


-- D) Pesquisar o número de veículos que foram cadastrados em cada modelo, ordenando pelo número de veículos em ordem decrescente;
SELECT
    m.nome_modelo,
    COUNT(v.id_modelo) AS quantidade_veiculos
FROM modelo m
JOIN veiculo v ON m.id_modelo = v.id_modelo
GROUP BY m.nome_modelo
ORDER BY quantidade_veiculos DESC;