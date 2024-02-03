CREATE DATABASE JJPC;

USE JJPC;

CREATE TABLE tbl_usuarios (
    ID INT PRIMARY KEY,
    Nombre VARCHAR(10),
    Contrasena VARCHAR(10)
);

CREATE TABLE tbl_personas (
    ID INT PRIMARY KEY,
    Nombre VARCHAR(10),
    Apellido VARCHAR(10),
    Edad INT,
    Rol VARCHAR(10)
);

CREATE TABLE tbl_equipos (
    ID INT PRIMARY KEY,
    Nombre VARCHAR(10), 
    Estado VARCHAR(10)
);

CREATE TABLE tbl_reparacion (
    ID INT PRIMARY KEY,
    Detalles VARCHAR(10),
    id_equipos INT,
    id_usuarios INT,
 CONSTRAINT fk_usuarios FOREIGN KEY (id_usuarios) REFERENCES tbl_usuarios(ID),
 CONSTRAINT fk_personas FOREIGN KEY (id_equipos) REFERENCES tbl_equipos(ID)
);
