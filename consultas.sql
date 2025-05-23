-- Mostrar todos los dueños de mascotas
SELECT * FROM `Dueños de mascotas`;

-- Mostrar todas las mascotas con sus dueños
SELECT 
  m.Nombre AS nombre_mascota,
  m.Edad,
  m.Sexo,
  d.Nombre AS nombre_dueño,
  d.Apellido
FROM Mascotas m
JOIN `Dueños de mascotas` d ON m.`Dueños de mascotas_idDueños de mascotas` = d.`id_Dueños de mascotas`;

-- Mostrar todas las visitas con nombre de mascota y servicio realizado
SELECT 
  v.fecha,
  m.Nombre AS mascota,
  s.Nombre AS servicio
FROM Visitas v
JOIN Mascotas m ON v.`Mascotas_id_Mascota` = m.`id_Mascota`
JOIN Servicios s ON v.`Servicio_id_Servicio` = s.`id_Servicio`;

-- Mostrar tratamientos aplicados con fecha y nombre de la mascota
SELECT 
  t.nombre AS tratamiento,
  t.observaciones,
  v.fecha,
  m.Nombre AS mascota
FROM Tratamientos t
JOIN Visitas v ON 
    t.Visitas_id_Visitas = v.id_Visitas AND
    t.Visitas_id_Mascota = v.id_Mascota AND
    t.Visitas_id_Servicio = v.id_Servicio AND
    t.Visitas_Servicio_id_Servicio = v.Servicio_id_Servicio
JOIN Mascotas m ON v.Mascotas_id_Mascota = m.id_Mascota;

-- Mostrar cuántas visitas ha tenido cada mascota
SELECT 
  m.Nombre AS mascota,
  COUNT(v.id_Visitas) AS cantidad_visitas
FROM Mascotas m
JOIN Visitas v ON m.id_Mascota = v.Mascotas_id_Mascota
GROUP BY m.Nombre;

-- Mostrar mascotas que han recibido el servicio 'Vacunación'
SELECT 
  m.Nombre AS mascota,
  s.Nombre AS servicio
FROM Visitas v
JOIN Mascotas m ON v.Mascotas_id_Mascota = m.id_Mascota
JOIN Servicios s ON v.Servicio_id_Servicio = s.id_Servicio
WHERE s.Nombre = 'Vacunación';

-- Mostrar todos los servicios y su precio
SELECT Nombre, Precio_base FROM Servicios;

-- Mostrar las mascotas que no están vacunadas
SELECT Nombre FROM Mascotas WHERE Vacunado = 'No';

-- Mostrar las razas y cuántas mascotas pertenecen a cada una
SELECT 
  r.Nombre AS raza,
  COUNT(m.id_Mascota) AS cantidad
FROM Razas r
JOIN Mascotas m ON m.Razas_id_Razas = r.id_Razas
GROUP BY r.Nombre;

-- Mostrar todas las visitas ordenadas por fecha descendente
SELECT * FROM Visitas ORDER BY fecha DESC;
