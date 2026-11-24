CREATE DATABASE IF NOT EXISTS zoologic;
USE zoologic;

-- 1. DEPARTAMENTO
CREATE TABLE Departamento (
    id_departamento INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(255)
);

-- 2. CARGO
CREATE TABLE Cargo (
    id_cargo INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(255),
    salario DECIMAL(12,2) NOT NULL
);

-- 3. EMPLEADO
CREATE TABLE Empleado (
    id_empleado INT AUTO_INCREMENT PRIMARY KEY,
    id_departamento INT NOT NULL,
    id_cargo INT NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    documento VARCHAR(30) NOT NULL UNIQUE,
    telefono VARCHAR(20),
    correo VARCHAR(120),
    fecha_contratacion DATE NOT NULL,

    FOREIGN KEY (id_departamento)
        REFERENCES Departamento(id_departamento),

    FOREIGN KEY (id_cargo)
        REFERENCES Cargo(id_cargo)
);

-- 4. ESPECIE
CREATE TABLE Especie (
    id_especie INT AUTO_INCREMENT PRIMARY KEY,
    nombre_comun VARCHAR(100) NOT NULL,
    nombre_cientifico VARCHAR(150) NOT NULL,
    familia VARCHAR(100),
    estado_conservacion VARCHAR(100)
);

-- 5. HABITAT
CREATE TABLE Habitat (
    id_habitat INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    tipo VARCHAR(100),
    descripcion VARCHAR(255)
);

-- 6. RECINTO
CREATE TABLE Recinto (
    id_recinto INT AUTO_INCREMENT PRIMARY KEY,
    id_habitat INT NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    ubicacion VARCHAR(150),
    capacidad INT NOT NULL,

    FOREIGN KEY (id_habitat)
        REFERENCES Habitat(id_habitat)
);

-- 7. ANIMAL
CREATE TABLE Animal (
    id_animal INT AUTO_INCREMENT PRIMARY KEY,
    id_especie INT NOT NULL,
    id_recinto INT NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    sexo CHAR(1),
    fecha_nacimiento DATE,
    fecha_ingreso DATE NOT NULL,
    estado VARCHAR(50),

    FOREIGN KEY (id_especie)
        REFERENCES Especie(id_especie),

    FOREIGN KEY (id_recinto)
        REFERENCES Recinto(id_recinto)
);

-- 8. ALIMENTO
CREATE TABLE Alimento (
    id_alimento INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    tipo VARCHAR(100),
    unidad_medida VARCHAR(50),
    cantidad_stock DECIMAL(12,2) DEFAULT 0
);

-- 9. PLAN_ALIMENTACION
CREATE TABLE Plan_Alimentacion (
    id_plan INT AUTO_INCREMENT PRIMARY KEY,
    id_animal INT NOT NULL,
    id_empleado INT NOT NULL,
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE,
    observaciones VARCHAR(255),

    FOREIGN KEY (id_animal)
        REFERENCES Animal(id_animal),

    FOREIGN KEY (id_empleado)
        REFERENCES Empleado(id_empleado)
);

-- 10. DIETA_DETALLE
CREATE TABLE Dieta_Detalle (
    id_detalle INT AUTO_INCREMENT PRIMARY KEY,
    id_plan INT NOT NULL,
    id_alimento INT NOT NULL,
    cantidad DECIMAL(10,2) NOT NULL,
    frecuencia VARCHAR(50),

    FOREIGN KEY (id_plan)
        REFERENCES Plan_Alimentacion(id_plan),

    FOREIGN KEY (id_alimento)
        REFERENCES Alimento(id_alimento)
);

-- 11. CONSULTA_VETERINARIA
CREATE TABLE Consulta_Veterinaria (
    id_consulta INT AUTO_INCREMENT PRIMARY KEY,
    id_animal INT NOT NULL,
    id_empleado INT NOT NULL,
    fecha_consulta DATE NOT NULL,
    diagnostico VARCHAR(255),
    observaciones TEXT,

    FOREIGN KEY (id_animal)
        REFERENCES Animal(id_animal),

    FOREIGN KEY (id_empleado)
        REFERENCES Empleado(id_empleado)
);

-- 12. MEDICAMENTO
CREATE TABLE Medicamento (
    id_medicamento INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(255),
    unidad_medida VARCHAR(50),
    cantidad_stock DECIMAL(12,2) DEFAULT 0
);

-- 13. TRATAMIENTO
CREATE TABLE Tratamiento (
    id_tratamiento INT AUTO_INCREMENT PRIMARY KEY,
    id_consulta INT NOT NULL,
    id_medicamento INT NOT NULL,
    dosis VARCHAR(100),
    duracion VARCHAR(50),
    fecha_inicio DATE NOT NULL,
    fecha_fin DATE,

    FOREIGN KEY (id_consulta)
        REFERENCES Consulta_Veterinaria(id_consulta),

    FOREIGN KEY (id_medicamento)
        REFERENCES Medicamento(id_medicamento)
);

-- 14. PROVEEDOR
CREATE TABLE Proveedor (
    id_proveedor INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(150) NOT NULL,
    documento VARCHAR(30) NOT NULL UNIQUE,
    telefono VARCHAR(20),
    correo VARCHAR(120),
    direccion VARCHAR(200)
);

-- 15. COMPRA
CREATE TABLE Compra (
    id_compra INT AUTO_INCREMENT PRIMARY KEY,
    id_proveedor INT NOT NULL,
    id_alimento INT NOT NULL,
    fecha_compra DATE NOT NULL,
    cantidad DECIMAL(10,2) NOT NULL,
    costo_unitario DECIMAL(12,2) NOT NULL,
    total DECIMAL(14,2) NOT NULL,

    FOREIGN KEY (id_proveedor)
        REFERENCES Proveedor(id_proveedor),

    FOREIGN KEY (id_alimento)
        REFERENCES Alimento(id_alimento)
);

-- 16. VISITANTE
CREATE TABLE Visitante (
    id_visitante INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    documento VARCHAR(30) NOT NULL UNIQUE,
    telefono VARCHAR(20),
    correo VARCHAR(120)
);

-- 17. TIPO_ENTRADA
CREATE TABLE Tipo_Entrada (
    id_tipo_entrada INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(255),
    precio DECIMAL(12,2) NOT NULL
);

-- 18. VENTA
CREATE TABLE Venta (
    id_venta INT AUTO_INCREMENT PRIMARY KEY,
    id_visitante INT NOT NULL,
    id_empleado INT NOT NULL,
    id_tipo_entrada INT NOT NULL,
    fecha_venta DATE NOT NULL,
    cantidad INT NOT NULL,
    precio_unitario DECIMAL(12,2) NOT NULL,
    total DECIMAL(14,2) NOT NULL,

    FOREIGN KEY (id_visitante)
        REFERENCES Visitante(id_visitante),

    FOREIGN KEY (id_empleado)
        REFERENCES Empleado(id_empleado),

    FOREIGN KEY (id_tipo_entrada)
        REFERENCES Tipo_Entrada(id_tipo_entrada)
);

-- 19. EVENTO
CREATE TABLE Evento (
    id_evento INT AUTO_INCREMENT PRIMARY KEY,
    id_empleado INT NOT NULL,
    nombre VARCHAR(150) NOT NULL,
    descripcion VARCHAR(255),
    fecha DATE NOT NULL,
    hora TIME NOT NULL,
    cupo_maximo INT NOT NULL,

    FOREIGN KEY (id_empleado)
        REFERENCES Empleado(id_empleado)
);

-- 20. INSCRIPCION_EVENTO
CREATE TABLE Inscripcion_Evento (
    id_inscripcion INT AUTO_INCREMENT PRIMARY KEY,
    id_evento INT NOT NULL,
    id_visitante INT NOT NULL,
    fecha_inscripcion DATE NOT NULL,
    estado VARCHAR(50),

    FOREIGN KEY (id_evento)
        REFERENCES Evento(id_evento),

    FOREIGN KEY (id_visitante)
        REFERENCES Visitante(id_visitante)
);

