# Modulo3-Ejercicio2
Ejercicio individual 2 BBDD
PARTE 1: EXPLORACIÓN DE MySQL
CREAR UNA BASE DE DATOS, TABLAS Y USUARIOS.
4.- La socia de tu proyecto quiere realizar capacitaciones para los futuros usuarios de tu aplicación. Para
no perder contacto con los futuros usuarios, te pide que elabores una base de datos con los asistentes a
las capacitaciones.
Debes crear un usuario diferente a root que tenga permisos para realizar la tarea.
En tu ambiente local de desarrollo, crea una base de datos con un nombre personalizado según tu
proyecto, la que tenga tres tablas:
OPERADORES: RUN (*), nombre, apellido, dirección, correo electrónico, fecha de creación de la
cuenta.
USUARIOS: id (*), nombre, apellido, correo electrónico, teléfono, fecha de creación de la cuenta.
CAPACITACION: código curso (*), nombre, horario, costo de realización y fecha de realización.

- Debe crear 10 operadores, 10 usuarios y 10 capacitaciones.
- Debe indicar cuánto fue el costo de realización de todos los cursos de capacitación registrados.
- Muestre los 5 operadores más recientemente registrados.
- Muestre los 5 usuarios más recientemente registrados.
- Calcule cuántos días han transcurrido desde que se registró a operadores y clientes. Indague en
la función DATEDIFF() de MySQL.
- Calcule cuántos días transcurrieron desde que se realizó el último curso de capacitación.
- Por último, indique cuál fue el curso de capacitación más costoso y el menos costoso.

Los campos marcados con (*) son la clave primaria de la tabla. Los nombres de los campos en la
tabla y el tipo quedan a libre elección, siempre y cuando tenga coherencia con el tema expuesto.
