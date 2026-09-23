-- =============================================
-- SCRIPT FINAL - BASE DE DATOS MAMAAPOYA
-- Evidencia: GA7-220501096-AA2-EV02
-- =============================================

-- 1. Crear y usar la base de datos
DROP DATABASE IF EXISTS mama_apoya;
CREATE DATABASE mama_apoya;
USE mama_apoya;

-- 2. Tabla de Usuarios
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_completo VARCHAR(100) NOT NULL,
    correo VARCHAR(100) NOT NULL UNIQUE,
    contrasena VARCHAR(255) NOT NULL,
    telefono VARCHAR(20),
    rol VARCHAR(20) DEFAULT 'usuario',
    fecha_registro DATETIME DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 3. Tabla de Ayudas
CREATE TABLE ayudas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre_beneficiario VARCHAR(100) NOT NULL,
    tipo_ayuda VARCHAR(50) NOT NULL,
    descripcion TEXT,
    fecha_entrega DATE,
    estado VARCHAR(20) DEFAULT 'Pendiente',
    usuario_registro INT,
    FOREIGN KEY (usuario_registro) REFERENCES usuarios(id) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 4. Insertar usuario administrador
INSERT INTO usuarios (nombre_completo, correo, contrasena, telefono, rol) 
VALUES ('Administrador', 'admin@mamaapoya.com', '123456', '3000000000', 'admin');

-- 5. Insertar ayuda de ejemplo
INSERT INTO ayudas (
    nombre_beneficiario, tipo_ayuda, descripcion, fecha_entrega, estado
) VALUES (
    'María Pérez',
    'Alimentación',
    'Paquete de alimentos básicos',
    '2026-09-23',
    'Entregada'
);

-- 6. Verificar
SHOW TABLES;
SELECT * FROM usuarios;
SELECT * FROM ayudas;
-- Actualizar para vincular con el usuario administrador
UPDATE ayudas 
SET usuario_registro = 1 
WHERE id = 1;

-- Verificar que quedó bien
SELECT * FROM ayudas;