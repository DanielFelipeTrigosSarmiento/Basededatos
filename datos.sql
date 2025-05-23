-- Insertar Dueños
INSERT INTO Dueños (nombre, apellido, cedula, telefono, direccion) VALUES
('Carlos', 'Pérez', '12345678', '04141234567', 'Calle A, Caracas'),
('María', 'López', '87654321', '04241234567', 'Av. B, Valencia'),
('Luis', 'Martínez', '45678912', '04161112222', 'Calle C, Maracaibo'),
('Ana', 'González', '32145678', '04145556666', 'Av. D, Mérida'),
('Pedro', 'Ramírez', '98765432', '04147778888', 'Calle E, Barquisimeto');

-- Insertar Razas
INSERT INTO Razas (nombre) VALUES
('Labrador'),
('Persa'),
('Golden Retriever'),
('Siamés'),
('Bulldog');

-- Insertar Especies
INSERT INTO Especies (nombre) VALUES
('Perro'),
('Gato'),
('Conejo'),
('Ave'),
('Reptil');

-- Insertar Mascotas
INSERT INTO Mascotas (nombre, edad, especie, raza, sexo, vacunado, id_dueño, id_raza, id_especie) VALUES
('Max', 3, 'Perro', 'Labrador', 'Macho', 'Sí', 1, 1, 1),
('Luna', 2, 'Gato', 'Persa', 'Hembra', 'Sí', 2, 2, 2),
('Rocky', 4, 'Perro', 'Golden Retriever', 'Macho', 'No', 3, 3, 1),
('Mia', 1, 'Gato', 'Siamés', 'Hembra', 'Sí', 4, 4, 2),
('Toby', 5, 'Perro', 'Bulldog', 'Macho', 'Sí', 5, 5, 1),
('Nina', 2, 'Perro', 'Labrador', 'Hembra', 'Sí', 1, 1, 1),
('Simba', 3, 'Gato', 'Persa', 'Macho', 'No', 2, 2, 2),
('Bella', 1, 'Perro', 'Golden Retriever', 'Hembra', 'Sí', 3, 3, 1),
('Coco', 2, 'Gato', 'Siamés', 'Macho', 'Sí', 4, 4, 2),
('Bruno', 4, 'Perro', 'Bulldog', 'Macho', 'No', 5, 5, 1);

-- Insertar Servicios
INSERT INTO Servicios (nombre, descripcion, precio_base) VALUES
('Consulta general', 'Revisión médica básica', 100),
('Vacunación', 'Aplicación de vacunas', 50),
('Desparasitación', 'Tratamiento contra parásitos', 40),
('Cirugía menor', 'Procedimiento quirúrgico simple', 300),
('Peluquería', 'Baño y corte de pelo', 80);

-- Insertar Visitas
INSERT INTO Visitas (id_mascota, id_servicio, fecha) VALUES
(1, 1, '2024-01-10'),
(2, 2, '2024-01-15'),
(3, 3, '2024-01-20'),
(4, 4, '2024-01-25'),
(5, 5, '2024-01-30'),
(6, 1, '2024-02-05'),
(7, 2, '2024-02-10'),
(8, 3, '2024-02-15'),
(9, 4, '2024-02-20'),
(10, 5, '2024-02-25');

-- Insertar Tratamientos
INSERT INTO Tratamientos (nombre, observaciones, id_visita) VALUES
('Antibióticos', 'Infección leve tratada con antibióticos', 1),
('Vacuna triple felina', 'Aplicada correctamente', 2),
('Desparasitación interna', 'Completada sin reacciones', 3),
('Cirugía hernia', 'Paciente en recuperación', 4),
('Corte de pelo completo', 'Buen comportamiento', 5);
