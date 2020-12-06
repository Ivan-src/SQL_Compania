#Redacción: Obtener todos los empleados que trabajan en el departamento 4 
SELECT * FROM EMPLEADO WHERE ND = 4; 

#Redacción: Se busca obtener a todos los empleados cuyo sueldo es mayor a $30,000. - 
SELECT * FROM EMPLEADO WHERE SALARIO >30000;

#Redacción: Obtener a todos los empleados que trabajan en el departamento 4 y ganan más   de $25,000 al año, o que trabajan en el departamento 5 y ganan más de $30,000. 
SELECT * FROM EMPLEADO WHERE (SALARIO>25000 AND ND=4) OR (ND=5 AND SALARIO>30000); 

#Redacción: Se busca obtener la dirección del empleado cuya fecha de nacimiento es el 9 de enero de 1955. 
SELECT FECHA_NCTO, DIRECCION FROM EMPLEADO WHERE FECHA_NCTO = “1955-01-09”; 

#Redacción: Obtener el nombre y la dirección de todos los empleados que pertenecen al departamento ‘Investigación’. 
SELECT NOMBRE, DIRECCION FROM EMPLEADO, DEPARTAMENTO WHERE NOMBRED= 'Investigación' AND NUMEROD=ND;

#Redacción:Obtener  el  nombre,  apellido,  dirección,  número  de  departamento  y  nombre  de  departamento  de  todos  los empleados que trabajan en el departamento número 5.
SELECT NOMBRE, APELLIDO, DIRECCION, NUMEROD, NOMBRED FROM (EMPLEADOJOIN DEPARTAMENTO ON ND = NUMEROD) WHERE NUMEROD = 5;

#Redacción:Obtener el nombre, apellido, dirección, número de departamento y nombre de departamento de los empleados que tienen un supervisor.
SELECT NOMBRE, APELLIDO, DIRECCION, ND, NOMBREDFROM EMPLEADO  ENATURAL  JOIN DEPARTAMENTO AS DEPTOWHERE E.ND = DEPTO.NUMERODAND DEPTO.NSSJEFE = E.NSSSUPERV;

#Redacción:Si se requiere la inclusión de todos los empleados, se usará una reunión externa explícita.
SELECT NOMBRE, APELLIDO, DIRECCION, ND, NOMBRED  FROM  EMPLEADOEMPLEADOLEFT  OUTER  JOIN DEPARTAMENTO AS DEPARTAMENTO ON DEPARTAMENTO.NUMEROD = EMPLEADO.NDAND DEPARTAMENTO.NSSJEFE = EMPLEADO.NSS;

#Redacción:Para  cada  proyecto  ubicado  en  “Santiago”,  listar  el  número  del  proyecto  el  número  del  departamento controlador y el apellido, dirección y la fecha de nacimiento del gerente de ese departamento.
SELECT NUMEROP, PROYECTO.ND, APELLIDO, DIRECCION, FECHA_NCTO FROM (PROYECTO JOIN DEPARTAMENTO ON PROYECTO.ND = DEPARTAMENTO.NUMEROD) JOIN EMPLEADO ON DEPARTAMENTO.NSSJEFE = EMPLEADO.NSS WHERE NUMEROD = 4;

#Redacción:Obtener nombre, apellido y numero de departamento de los supervisores que trabajan en cada Departamento; mediante la sentencia LEFT JOIN
SELECT NOMBRE, APELLIDO, NUMEROD FROM EMPLEADO LEFT JOIN DEPARTAMENTO ON NSSSUPERV = NSSJEFE;

#Redacción: Obtener la lista de los nombres y apellidos de la tabla empleados mostrando el número del departamento al cual pertenecen junto con su jefe a cargo, se mostrarán todos los empleados que tengan un jefe, mediante un RIGHT JOIN. 
SELECT NOMBRE, APELLIDO, NUMEROD FROM EMPLEADO RIGHT JOIN DEPARTAMENTO ON NSSSUPERV = NSSJEFE;

#Redacción:Obtener todos los proyectos asignados al departamento “4”.
SELECT * FROM PROYECTO A CROSS JOIN DEPARTAMENTO AS DEPTO ON DEPTO.NUMEROD = A.ND WHERE ND = 4;



