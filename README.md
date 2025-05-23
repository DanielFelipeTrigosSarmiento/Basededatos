Este proyecto es una base de datos para una clínica veterinaria. El objetivo es gestionar la información de los dueños de mascotas, las mascotas, los servicios que se ofrecen, las visitas realizadas y los tratamientos aplicados.

Primero se hizo el modelo en MYSQL Workbench, donde se crearon las entidades principales: Dueño, Mascota, Servicio, Visita y Tratamiento. Cada una tiene sus atributos y relaciones con otras entidades. Por ejemplo, una mascota pertenece a un dueño, y una visita está relacionada con una mascota y un servicio.

Después, se generó el archivo de estructura (estructura.sql), que contiene todas las sentencias CREATE TABLE. Ahí se definen las llaves primarias, foráneas y restricciones básicas para que la base de datos sea consistente.

Luego, se hizo el archivo de inserciones (datos.sql), donde se agregaron datos de prueba: cinco dueños, diez mascotas, cinco servicios, diez visitas y cinco tratamientos. Esto permite probar las consultas más adelante.

También se creó un archivo de consultas (consultas.sql) con al menos quince consultas que usan diferentes funciones y características de SQL. Algunas muestran el uso de alias, funciones como COUNT, MAX, AVG, CONCAT, UPPER, LOWER, ROUND, IF, etc. También se aplicaron subconsultas y joins entre varias tablas.

Todo el proyecto fue organizado para que cada parte funcione correctamente y se conecte con las demás. La estructura es clara y sigue buenas prácticas de diseño de bases de datos relacionales. Esta base de datos podría servir como base para una aplicación real de gestión veterinaria.