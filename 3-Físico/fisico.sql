CREATE DATABASE DETRAN;

USE DETRAN;

CREATE TABLE categoria(
                          id_categoria INTEGER,
                          nome_categoria VARCHAR(255),
                          PRIMARY KEY (id_categoria)
);

CREATE TABLE modelo(
                       id_modelo INTEGER(6),
                       nome_modelo VARCHAR(255),
                       PRIMARY KEY (id_modelo)
);

CREATE TABLE proprietario(
                             cpf VARCHAR(11),
                             nome VARCHAR(255),
                             endereco VARCHAR(255),
                             bairro VARCHAR(255),
                             cidade VARCHAR(255),
                             telefone VARCHAR(15),
                             estado VARCHAR(255),
                             sexo CHAR(1),
                             data_nascimento DATE,
                             PRIMARY KEY (cpf)
);

CREATE TABLE agente_de_transito(
                                   matricula INTEGER,
                                   nome VARCHAR(255),
                                   data_contratacao DATE,
                                   tempo_de_servico TIME,
                                   PRIMARY KEY (matricula)
);

CREATE TABLE local(
                      id_local INTEGER AUTO_INCREMENT,
                      longitude DECIMAL(9,6),
                      latitude DECIMAL(9,6),
                      velocidade_permitida INTEGER,
                      PRIMARY KEY (id_local)
);

CREATE TABLE tipo_infracao(
                              id_tipo_infracao INTEGER,
                              valor DECIMAL(10,2),
                              velocidade INTEGER,
                              PRIMARY KEY (id_tipo_infracao)
);

CREATE TABLE veiculo(
                        placa VARCHAR(7) PRIMARY KEY,
                        chassi VARCHAR(255),
                        cor VARCHAR(255),
                        ano INTEGER,
                        id_categoria INTEGER,
                        id_modelo INTEGER,
                        cpf_proprietario VARCHAR(11),
                        FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria),
                        FOREIGN KEY (id_modelo) REFERENCES modelo(id_modelo),
                        FOREIGN KEY (cpf_proprietario) REFERENCES proprietario(cpf)
);

CREATE TABLE infracao(
                         id_infracao INTEGER AUTO_INCREMENT,
                         data DATE,
                         hora TIME,
                         placa_veiculo VARCHAR(7),
                         id_local INTEGER,
                         matricula_agente INTEGER,
                         id_tipo_infracao INTEGER,
                         PRIMARY KEY (id_infracao),
                         FOREIGN KEY (placa_veiculo) REFERENCES veiculo(placa),
                         FOREIGN KEY (id_local) REFERENCES local(id_local),
                         FOREIGN KEY (matricula_agente) REFERENCES agente_de_transito(matricula),
                         FOREIGN KEY (id_tipo_infracao) REFERENCES tipo_infracao(id_tipo_infracao)
);