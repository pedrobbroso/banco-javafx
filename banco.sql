DROP DATABASE IF EXISTS javafx_cadastrocursos;
CREATE DATABASE javafx_cadastrocursos;
USE javafx_cadastrocursos;

CREATE TABLE cursos (
  Id int(11) NOT NULL AUTO_INCREMENT,
  Nome varchar(60) DEFAULT NULL,
  Categoria varchar(60) DEFAULT NULL,
  PRIMARY KEY (Id)
);

CREATE TABLE instrutor (
  Id int(11) NOT NULL AUTO_INCREMENT,
  Nome varchar(60) NOT NULL,
  Email varchar(100) NOT NULL,
  Nascimento datetime NOT NULL,
  Graduacao varchar(100) NOT NULL,
  Faculdade varchar(100) NOT NULL,
  cursosId int(11) NOT NULL,
  PRIMARY KEY (Id),
  FOREIGN KEY (cursosId) REFERENCES cursos (id)
);

CREATE TABLE turma (
  Id int(11) NOT NULL AUTO_INCREMENT,
  Periodo varchar(60) NOT NULL,
  Sala varchar(100) NOT NULL,
  cursosId int(11) NOT NULL,
  instrutorId int(11) NOT NULL,
  PRIMARY KEY (Id),
  FOREIGN KEY (cursosId) REFERENCES cursos (id)
);


