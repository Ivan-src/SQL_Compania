#QUERY PARA LLENAR LOS DATOS DE LA BD 'COMPANIA'

INSERT INTO DEPARTAMENTO (NOMBRED, NUMEROD, NSSJEFE, FECHAINICJEFE) VALUES
('Investigación', 5, 333445555, '1978-05-22 00:00:00'),
('Administración', 4, 987654321, '1985-01-01 00:00:00'),
('Dirección', 1, 888665555, '1971-06-19 00:00:00');

INSERT INTO DEPENDIENTE (NSSE, NOMBRE_DEPENDIENTE, SEXO, FECHA_NCTO,
PARENTESCO) VALUES
(333445555, 'Alicia', 'F', '1976-04-05 00:00:00', 'HIJA'),
(333445555, 'Teodoro', 'M', '1973-10-25 00:00:00', 'HIJO'),
(333445555, 'Jobita', 'F', '1948-05-03 00:00:00', 'CONYUGE'),
(987654321, 'Abdiel', 'M', '1932-02-29 00:00:00', 'CONYUGE'),
(123456789, 'Miguel', 'M', '1978-01-01 00:00:00', 'HIJO'),
(123456789, 'Alicia', 'F', '1978-12-31 00:00:00', 'HIJA'),
(123456789, 'Elizabeth', 'F', '1957-05-05 00:00:00', 'CONYUGE');

INSERT INTO EMPLEADO (NOMBRE, INIC, APELLIDO, NSS, FECHA_NCTO, DIRECCION, SEXO,
SALARIO,
NSSSUPERV, ND) VALUES
('José', 'B', 'Silva', 123456789, '1955-01-09 00:00:00', 'Fresnos 731', 'M', 30000, 333445555, 5),
('Federico', 'T', 'Vizcarra', 333445555, '1945-12-08 00:00:00', 'Valle 638', 'M', 40000, 888665555, 5),
('Alicia', 'J', 'Zapata', 999887777, '1958-07-19 00:00:00', 'Catillo 3321', 'F', 25000, 987654321, 4),
('Jazmín', 'S', 'Valdés', 987654321, '1931-06-20 00:00:00', 'Bravo 291', 'F', 43000, 888665555, 4),
('Ramón', 'K', 'Nieto', 666884444, '1952-09-15 00:00:00', 'Espiga 875', 'M', 38000, 333445555, 5),
('Josefa', 'A', 'Esparza', 453453453, '1962-07-31 00:00:00', 'Rosas 5631', 'F', 25000, 333445555, 5),
('Ahmed', 'V', 'Jabbar', 987987987, '1959-03-29 00:00:00', 'Dallas 980', 'M', 25000, 987654321, 4),
('Jaime', 'E', 'Botello', 888665555, '1927-11-10 00:00:00', 'Sorgo 450', 'M', 55000, NULL, 1);

INSERT INTO LOCALIZACIONES_DEPT (NUMEROD, LOCALIZACION) VALUES
(1, 'Higueras'),
(4, 'Santiago'),
(5, 'Belén'),
(5, 'Higueras'),
(5, 'Sacramento');

INSERT INTO PROYECTO (NOMBREP, NUMEROP, LOCALIZACIONP, ND) VALUES
('ProductoX', 1, 'Belén', 5),
('ProductoY', 2, 'Sacramento', 5),
('ProductoZ', 3, 'Higueras', 5),
('Automatización', 10, 'Santiago', 4),
('Reorganización', 20, 'Higueras', 1),
('Nuevasprestaciones', 30, 'Santiago', 4);

INSERT INTO TRABAJA_EN (NSSE, NP, HORAS) VALUES
(123456789, 1, 33),
(123456789, 2, 8),
(666884444, 3, 40),
(453453453, 1, 20),
(453453453, 2, 20),
(333445555, 2, 10),
(333445555, 3, 10),
(333445555, 10, 10),
(333445555, 20, 10),
(999887777, 30, 30),
(999887777, 10, 10),
(987987987, 10, 35),
(987987987, 30, 5),
(987654321, 30, 20),
(987654321, 20, 15),
(888665555, 20, 0);
