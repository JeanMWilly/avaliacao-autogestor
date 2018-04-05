CREATE DATABASE avaliacao;

USE avaliacao;

CREATE TABLE tbl_categorias (
  cat_id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  cat_nome VARCHAR(30) NOT NULL,
  cat_status INT(11)
);

CREATE TABLE tbl_clientes (
  cli_id INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  cli_id_categoria INT(11) UNSIGNED,
  cli_nome VARCHAR(30) NOT NULL,
  cli_idade INT(11),
  cli_endereco VARCHAR(80),
  cli_telefone VARCHAR(30),
  CONSTRAINT FK_categoria FOREIGN KEY (cli_id_categoria) REFERENCES tbl_categorias(cat_id)
);

INSERT INTO tbl_categorias (cat_nome, cat_status) VALUES ("Amigo", 0);
INSERT INTO tbl_categorias (cat_nome, cat_status) VALUES ("Conhecido", 0);
INSERT INTO tbl_clientes (cli_id_categoria, cli_nome, cli_idade, cli_endereco, cli_telefone) VALUES (1, "Jean Marco", 22, "Rua Tal" ,"+55 (41) 99156-5189");
INSERT INTO tbl_clientes (cli_id_categoria, cli_nome, cli_idade, cli_endereco, cli_telefone) VALUES (2, "Willy Oliveira", 20, "Rua Sei lá", "+55 (41) 98765-4321");
