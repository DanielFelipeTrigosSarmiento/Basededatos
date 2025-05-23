CREATE DATABASE IF NOT EXISTS veterinaria DEFAULT CHARACTER SET utf8;
USE veterinaria;

-- Dueños
CREATE TABLE Dueños (
  id_dueño INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(45) NOT NULL,
  apellido VARCHAR(45) NOT NULL,
  cedula VARCHAR(15) NOT NULL,
  telefono VARCHAR(45) NOT NULL,
  direccion MEDIUMTEXT NOT NULL
) ENGINE=InnoDB;

-- Razas
CREATE TABLE Razas (
  id_raza INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(45) NOT NULL
) ENGINE=InnoDB;

-- Especies
CREATE TABLE Especies (
  id_especie INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(45) NOT NULL
) ENGINE=InnoDB;

-- Mascotas
CREATE TABLE Mascotas (
  id_mascota INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(45) NOT NULL,
  edad INT NOT NULL,
  especie VARCHAR(45) NOT NULL,
  raza VARCHAR(45) NOT NULL,
  sexo VARCHAR(45) NOT NULL,
  vacunado MEDIUMTEXT NOT NULL,
  id_dueño INT NOT NULL,
  id_raza INT NOT NULL,
  id_especie INT NOT NULL,
  FOREIGN KEY (id_dueño) REFERENCES Dueños(id_dueño),
  FOREIGN KEY (id_raza) REFERENCES Razas(id_raza),
  FOREIGN KEY (id_especie) REFERENCES Especies(id_especie)
) ENGINE=InnoDB;

-- Servicios
CREATE TABLE Servicios (
  id_servicio INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(45) NOT NULL,
  descripcion LONGTEXT NOT NULL,
  precio_base INT NOT NULL
) ENGINE=InnoDB;

-- Visitas
CREATE TABLE Visitas (
  id_visita INT AUTO_INCREMENT PRIMARY KEY,
  id_mascota INT NOT NULL,
  id_servicio INT NOT NULL,
  fecha DATE,
  FOREIGN KEY (id_mascota) REFERENCES Mascotas(id_mascota),
  FOREIGN KEY (id_servicio) REFERENCES Servicios(id_servicio)
) ENGINE=InnoDB;

-- Tratamientos
CREATE TABLE Tratamientos (
  id_tratamiento INT AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(45) NOT NULL,
  observaciones VARCHAR(45) NOT NULL,
  id_visita INT NOT NULL,
  FOREIGN KEY (id_visita) REFERENCES Visitas(id_visita)
) ENGINE=InnoDB;
