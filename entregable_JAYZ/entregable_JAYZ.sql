 CREATE DATABASE COPROTECT;

USE COPROTECT;

CREATE TABLE tbl_clientes (
 ID INT PRIMARY KEY,
 nombres VARCHAR(20),
 apellidos VARCHAR(20)
);
CREATE TABLE tbl_usuarios (
ID INT PRIMARY KEY,
nombre VARCHAR(15),
contrasena INT(12),
rol VARCHAR(15),
 IDclientes INT
);
CREATE TABLE tbl_equipos (
ID INT PRIMARY KEY,
 modelo VARCHAR(30),
 descripcion VARCHAR(200),
 estado VARCHAR(25),
 ID_clientes INT,
 ID_usuarios INT,
 CONSTRAINT FOREIGN KEY (ID_clientes) REFERENCES tbl_clientes(ID),
 CONSTRAINT FOREIGN KEY (ID_usuarios) REFERENCES tbl_usuarios(ID)
);


