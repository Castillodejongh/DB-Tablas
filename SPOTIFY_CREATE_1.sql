-- Creación de la base

CREATE DATABASE SPOTIFY;

USE SPOTIFY;

-- tables

-- Table: ARTISTA, sirve para traer informacion detallada de los artistas

CREATE TABLE ARTISTA (

ID_ARTISTA int NOT NULL,

NOMBRE int NOT NULL,

NACIONALIDAD int NOT NULL,

description varchar(200) NOT NULL,

CONSTRAINT PK_ARTISTA PRIMARY KEY (id_ARTISTA)

);

-- Table: ALBUMES, es la tabla que contiene la información sobre los albumes de los diferentes artistas

CREATE TABLE ALBUMES (

id_ALBUM int NOT NULL,

GENERO int NOT NULL,

CONSTRAINT PK_ALBUM PRIMARY KEY (id_ALBUM)

);

-- Table: CANCIONES, sirve para traer información especificas de las canciones de los artistas

CREATE TABLE CANCIONES (

id_CANCION int NOT NULL,

TITULO int NOT NULL,

FECHA date NOT NULL,

commentary varchar(255) NOT NULL,

CONSTRAINT PK_CANCION PRIMARY KEY (id_CANCION)

);

-- Table: USUARIOS, tabla que contiene los diferentes usuarios que escuchan los artistas, canciones y albumes.

CREATE TABLE USUARIOS (

id_USUARIO int NOT NULL,

MAIL int NOT NULL,

NACIONALIDAD int NOT NULL,

CONSTRAINT PK_USUARIO PRIMARY KEY (id_USUARIO)

);

-- Table: HISTORIAL_REPRODUCCION, sirve para tener el almacenamiento de las canciones y albumes escuchados por los usuarios.

CREATE TABLE HISTORIAL (

id_HISTORIAL int NOT NULL,

id_artista int,

id_album int,

id_cancion int,

id_usuario int,

CONSTRAINT PK_HISTORIAL PRIMARY KEY (id_HISTORIAL) ,

FOREIGN KEY (id_ARTISTA) REFERENCES ARTISTA (ID_ARTISTA),

FOREIGN KEY (id_ALBUM) REFERENCES ALBUMES (ID_ALBUM),

FOREIGN KEY (id_CANCION) REFERENCES CANCIONES (ID_CANCION),

FOREIGN KEY (id_CANCION) REFERENCES CANCIONES (ID_CANCION)

);

-- End of file.