ATTACH DATABASE 'db/recetas.db' As 'RECETAS';

DROP TABLE TB_RECETA_TINGREDIENTES;

CREATE TABLE TB_RECETA_TINGREDIENTES (
	ID_TIPO INTEGER PRIMARY KEY AUTOINCREMENT,
  STRNOMBRE  CHAR(100)
);

DROP TABLE TB_RECETA_INGREDIENTES;

CREATE TABLE TB_RECETA_INGREDIENTES (
	ID_INGREDIENTE INTEGER PRIMARY KEY AUTOINCREMENT,
  STRNOMBRE      CHAR(100)    NOT NULL,
  ID_TIPO        INT     NOT NULL
);

DROP TABLE TB_RECETA_PROCESO;

CREATE TABLE TB_RECETA_PROCESO (
	ID_PROCESO INTEGER PRIMARY KEY AUTOINCREMENT,
  STRNOMBRE         CHAR(100)    NOT NULL
);

INSERT INTO TB_RECETA_TINGREDIENTES (STRNOMBRE) VALUES ('Salsa');
INSERT INTO TB_RECETA_TINGREDIENTES (STRNOMBRE) VALUES ('Fruta');
INSERT INTO TB_RECETA_TINGREDIENTES (STRNOMBRE) VALUES ('Hortaliza/Verdura');

INSERT INTO TB_RECETA_INGREDIENTES (STRNOMBRE, ID_TIPO) VALUES ('Mahonesa', (SELECT ID_TIPO FROM TB_RECETA_TINGREDIENTES WHERE STRNOMBRE='Salsa'));
INSERT INTO TB_RECETA_INGREDIENTES (STRNOMBRE, ID_TIPO) VALUES ('Naranja', (SELECT ID_TIPO FROM TB_RECETA_TINGREDIENTES WHERE STRNOMBRE='Fruta'));
INSERT INTO TB_RECETA_INGREDIENTES (STRNOMBRE, ID_TIPO) VALUES ('Manzana', (SELECT ID_TIPO FROM TB_RECETA_TINGREDIENTES WHERE STRNOMBRE='Fruta'));
INSERT INTO TB_RECETA_INGREDIENTES (STRNOMBRE, ID_TIPO) VALUES ('Pera', (SELECT ID_TIPO FROM TB_RECETA_TINGREDIENTES WHERE STRNOMBRE='Fruta'));
INSERT INTO TB_RECETA_INGREDIENTES (STRNOMBRE, ID_TIPO) VALUES ('Lechuga', (SELECT ID_TIPO FROM TB_RECETA_TINGREDIENTES WHERE STRNOMBRE='Hortaliza/Verdura'));

INSERT INTO TB_RECETA_PROCESO (STRNOMBRE) VALUES ('Macerar');
INSERT INTO TB_RECETA_PROCESO (STRNOMBRE) VALUES ('Batir');
INSERT INTO TB_RECETA_PROCESO (STRNOMBRE) VALUES ('Hervir');
INSERT INTO TB_RECETA_PROCESO (STRNOMBRE) VALUES ('Freir');
INSERT INTO TB_RECETA_PROCESO (STRNOMBRE) VALUES ('Cocer');
