USE zoologic;
SET NAMES utf8mb4;


-- 1. DEPARTAMENTO
INSERT INTO Departamento (nombre, descripcion) VALUES
('Veterinaria','Atencion medica y bienestar animal'),
('Administracion','Direccion y gestion del zoologico'),
('Educacion y Conservacion','Programas educativos y conservacion'),
('Nutricion y Cuidado','Alimentacion y cuidado diario');

-- 2. CARGO
INSERT INTO Cargo (nombre, descripcion, salario) VALUES
('Director veterinario','Coordina el area veterinaria',5200000),
('Veterinario','Realiza consultas y tratamientos',3800000),
('Auxiliar veterinario','Apoya procedimientos clinicos',2500000),
('Administrador','Gestion administrativa',4200000),
('Contador','Gestion financiera',3600000),
('Cuidador','Cuidado diario de animales',2300000),
('Biologo','Seguimiento biologico',3400000),
('Educador ambiental','Actividades educativas',2700000),
('Taquillero','Venta de entradas',1900000),
('Encargado de compras','Gestion de proveedores',2800000);

-- 3. EMPLEADO: 30 trabajadores
INSERT INTO Empleado
(id_departamento,id_cargo,nombre,apellido,documento,telefono,correo,fecha_contratacion) VALUES
(1,1,'Camila','Ramirez','EMP0001','3005001001','camila@zoologic.com','2022-01-10'),
(1,2,'Andres','Mendoza','EMP0002','3005001002','andres@zoologic.com','2022-02-15'),
(1,2,'Diana','Castro','EMP0003','3005001003','diana@zoologic.com','2022-03-20'),
(1,3,'Felipe','Rojas','EMP0004','3005001004','felipe@zoologic.com','2023-01-12'),
(1,3,'Valentina','Suarez','EMP0005','3005001005','valentina@zoologic.com','2023-04-08'),
(2,4,'Julian','Torres','EMP0006','3005001006','julian@zoologic.com','2021-06-01'),
(2,5,'Natalia','Gomez','EMP0007','3005001007','natalia@zoologic.com','2021-08-16'),
(2,4,'Santiago','Diaz','EMP0008','3005001008','santiago@zoologic.com','2022-09-05'),
(2,10,'Laura','Herrera','EMP0009','3005001009','laura@zoologic.com','2023-02-11'),
(2,9,'Mateo','Vargas','EMP0010','3005001010','mateo@zoologic.com','2023-05-19'),
(2,9,'Sara','Moreno','EMP0011','3005001011','sara@zoologic.com','2023-07-21'),
(2,9,'Daniel','Ortiz','EMP0012','3005001012','daniel@zoologic.com','2024-01-09'),
(3,7,'Isabella','Navarro','EMP0013','3005001013','isabella@zoologic.com','2022-02-02'),
(3,7,'Nicolas','Vega','EMP0014','3005001014','nicolas@zoologic.com','2022-10-10'),
(3,8,'Gabriela','Pineda','EMP0015','3005001015','gabriela@zoologic.com','2023-03-14'),
(3,8,'Samuel','Cortes','EMP0016','3005001016','samuel@zoologic.com','2023-06-17'),
(3,7,'Mariana','Leon','EMP0017','3005001017','mariana@zoologic.com','2024-02-20'),
(3,8,'David','Mora','EMP0018','3005001018','david@zoologic.com','2024-04-03'),
(4,6,'Lucia','Arias','EMP0019','3005001019','lucia@zoologic.com','2021-11-01'),
(4,6,'Esteban','Gil','EMP0020','3005001020','esteban@zoologic.com','2022-01-18'),
(4,6,'Paula','Reyes','EMP0021','3005001021','paula@zoologic.com','2022-05-23'),
(4,6,'Tomas','Silva','EMP0022','3005001022','tomas@zoologic.com','2022-07-30'),
(4,6,'Manuela','Cruz','EMP0023','3005001023','manuela@zoologic.com','2023-02-06'),
(4,6,'Simon','Acosta','EMP0024','3005001024','simon@zoologic.com','2023-04-12'),
(4,6,'Antonella','Mejia','EMP0025','3005001025','antonella@zoologic.com','2023-08-25'),
(4,6,'Emilio','Santos','EMP0026','3005001026','emilio@zoologic.com','2024-01-15'),
(4,6,'Renata','Parra','EMP0027','3005001027','renata@zoologic.com','2024-03-11'),
(4,6,'Martin','Lozano','EMP0028','3005001028','martin@zoologic.com','2024-06-01'),
(4,6,'Elena','Fuentes','EMP0029','3005001029','elena@zoologic.com','2025-01-20'),
(4,10,'Kevin','Cabrera','EMP0030','3005001030','kevin@zoologic.com','2025-02-10');

-- 4. ESPECIE: 20 especies
INSERT INTO Especie (nombre_comun,nombre_cientifico,familia,estado_conservacion) VALUES
('Leon','Panthera leo','Felidae','Vulnerable'),
('Tigre de Bengala','Panthera tigris tigris','Felidae','En peligro'),
('Jaguar','Panthera onca','Felidae','Casi amenazada'),
('Leopardo','Panthera pardus','Felidae','Vulnerable'),
('Elefante africano','Loxodonta africana','Elephantidae','En peligro'),
('Jirafa','Giraffa camelopardalis','Giraffidae','Vulnerable'),
('Cebra','Equus quagga','Equidae','Preocupacion menor'),
('Rinoceronte blanco','Ceratotherium simum','Rhinocerotidae','Casi amenazada'),
('Oso de anteojos','Tremarctos ornatus','Ursidae','Vulnerable'),
('Oso pardo','Ursus arctos','Ursidae','Preocupacion menor'),
('Lobo gris','Canis lupus','Canidae','Preocupacion menor'),
('Zorro rojo','Vulpes vulpes','Canidae','Preocupacion menor'),
('Mono capuchino','Cebus capucinus','Cebidae','Preocupacion menor'),
('Chimpance','Pan troglodytes','Hominidae','En peligro'),
('Flamenco','Phoenicopterus roseus','Phoenicopteridae','Preocupacion menor'),
('Guacamaya roja','Ara macao','Psittacidae','Preocupacion menor'),
('Tortuga verde','Chelonia mydas','Cheloniidae','En peligro'),
('Cocodrilo del Nilo','Crocodylus niloticus','Crocodylidae','Preocupacion menor'),
('Hipopotamo','Hippopotamus amphibius','Hippopotamidae','Vulnerable'),
('Nutria gigante','Pteronura brasiliensis','Mustelidae','En peligro');

-- 5. HABITAT
INSERT INTO Habitat (nombre,tipo,descripcion) VALUES
('Sabana africana','Terrestre','Pastizales abiertos y clima calido'),
('Selva tropical','Tropical','Vegetacion densa y humedad alta'),
('Bosque andino','Montana','Bosque de clima templado y frio'),
('Zona acuatica','Acuatico','Lagunas y cuerpos de agua'),
('Desierto controlado','Arido','Ambiente seco con refugios'),
('Bosque templado','Terrestre','Vegetacion de clima templado'),
('Humedal','Acuatico','Zonas inundables'),
('Aviario tropical','Aereo','Espacio para aves'),
('Pradera','Terrestre','Vegetacion baja'),
('Zona de primates','Arboricola','Estructuras para primates');

-- 6. RECINTO
INSERT INTO Recinto (id_habitat,nombre,ubicacion,capacidad) VALUES
(1,'Sabana de felinos','Sector A1',8),(1,'Pradera de jirafas','Sector A2',10),
(1,'Planicie de elefantes','Sector A3',8),(1,'Llanura de cebras','Sector A4',12),
(1,'Area de rinocerontes','Sector A5',6),(2,'Selva de jaguares','Sector B1',6),
(2,'Selva de leopardos','Sector B2',5),(4,'Refugio acuatico','Sector B3',12),
(3,'Bosque de osos andinos','Sector C1',6),(6,'Bosque de osos pardos','Sector C2',6),
(6,'Territorio de lobos','Sector C3',10),(5,'Zona de zorros','Sector D1',8),
(10,'Isla de capuchinos','Sector E1',12),(10,'Bosque de chimpances','Sector E2',10),
(8,'Aviario principal','Sector F1',30);

-- 7. ANIMAL: 50 animales de distintas especies
-- Se distribuyen entre las 20 especies y 15 recintos.
INSERT INTO Animal
(id_especie,id_recinto,nombre,sexo,fecha_nacimiento,fecha_ingreso,estado)
WITH RECURSIVE nums AS (
 SELECT 1 n UNION ALL SELECT n+1 FROM nums WHERE n<50
)
SELECT
 1+MOD(n-1,20),
 CASE 1+MOD(n-1,20)
  WHEN 1 THEN 1 WHEN 2 THEN 1 WHEN 3 THEN 6 WHEN 4 THEN 7
  WHEN 5 THEN 3 WHEN 6 THEN 2 WHEN 7 THEN 4 WHEN 8 THEN 5
  WHEN 9 THEN 9 WHEN 10 THEN 10 WHEN 11 THEN 11 WHEN 12 THEN 12
  WHEN 13 THEN 13 WHEN 14 THEN 14 WHEN 15 THEN 15 WHEN 16 THEN 15
  WHEN 17 THEN 8 WHEN 18 THEN 8 WHEN 19 THEN 3 ELSE 8 END,
 CONCAT('Animal-',LPAD(n,2,'0')),
 IF(MOD(n,2)=0,'F','M'),
 DATE_ADD('2015-01-01',INTERVAL MOD(n*37,3000) DAY),
 DATE_ADD('2019-01-01',INTERVAL MOD(n*19,1800) DAY),
 'Activo'
FROM nums;

-- 8. ALIMENTO
INSERT INTO Alimento (nombre,tipo,unidad_medida,cantidad_stock) VALUES
('Carne de res','Proteina','Kilogramos',850),
('Pollo','Proteina','Kilogramos',620),
('Pescado','Proteina','Kilogramos',430),
('Heno','Vegetal','Kilogramos',1500),
('Zanahoria','Vegetal','Kilogramos',500),
('Manzana','Fruta','Kilogramos',350),
('Banano','Fruta','Kilogramos',300),
('Hojas verdes','Vegetal','Kilogramos',900),
('Concentrado felinos','Procesado','Kilogramos',400),
('Semillas','Vegetal','Kilogramos',250),
('Insectos','Proteina','Kilogramos',120),
('Alimento acuatico','Procesado','Kilogramos',200);

-- 9. PLAN_ALIMENTACION: 50 planes, uno por animal
INSERT INTO Plan_Alimentacion (id_animal,id_empleado,fecha_inicio,fecha_fin,observaciones)
SELECT id_animal,19+MOD(id_animal-1,12),'2026-01-01','2026-12-31',
       CONCAT('Plan nutricional individual para ',nombre)
FROM Animal;

-- 10. DIETA_DETALLE: 100 detalles
INSERT INTO Dieta_Detalle (id_plan,id_alimento,cantidad,frecuencia)
SELECT id_plan,1+MOD(id_plan-1,12),2+MOD(id_plan,15),'Diaria'
FROM Plan_Alimentacion;
INSERT INTO Dieta_Detalle (id_plan,id_alimento,cantidad,frecuencia)
SELECT id_plan,1+MOD(id_plan+4,12),1+MOD(id_plan,8),'Semanal'
FROM Plan_Alimentacion;

-- 11. CONSULTA_VETERINARIA: 60 consultas
INSERT INTO Consulta_Veterinaria (id_animal,id_empleado,fecha_consulta,diagnostico,observaciones)
WITH RECURSIVE nums AS (SELECT 1 n UNION ALL SELECT n+1 FROM nums WHERE n<60)
SELECT 1+MOD(n-1,50),1+MOD(n-1,5),DATE_ADD('2026-01-05',INTERVAL n DAY),
       ELT(1+MOD(n,6),'Control general sin novedades','Revision de peso',
       'Seguimiento preventivo','Evaluacion de piel y pelaje',
       'Control odontologico','Evaluacion de movilidad'),
       CONCAT('Consulta de seguimiento numero ',n)
FROM nums;

-- 12. MEDICAMENTO
INSERT INTO Medicamento (nombre,descripcion,unidad_medida,cantidad_stock) VALUES
('Amoxicilina veterinaria','Antibiotico veterinario','Mililitros',250),
('Meloxicam','Antiinflamatorio veterinario','Mililitros',180),
('Complejo vitaminico','Suplemento vitaminico','Mililitros',300),
('Antiparasitario','Control de parasitos','Mililitros',220),
('Suero oral','Rehidratacion','Litros',100),
('Antiseptico','Limpieza de heridas','Mililitros',150),
('Pomada dermatologica','Tratamiento topico','Gramos',90),
('Calcio veterinario','Suplemento mineral','Gramos',110),
('Probiotico','Apoyo digestivo','Gramos',80),
('Anestesico veterinario','Uso clinico controlado','Mililitros',50),
('Gotas oftalmicas','Cuidado ocular','Mililitros',60),
('Antifungico','Tratamiento de hongos','Mililitros',75);

-- 13. TRATAMIENTO: 30 tratamientos vinculados a consultas pares
INSERT INTO Tratamiento (id_consulta,id_medicamento,dosis,duracion,fecha_inicio,fecha_fin)
SELECT id_consulta,1+MOD(id_consulta-1,12),
       ELT(1+MOD(id_consulta,3),'5 ml','10 ml','2 ml'),
       '5 dias',fecha_consulta,DATE_ADD(fecha_consulta,INTERVAL 5 DAY)
FROM Consulta_Veterinaria
WHERE MOD(id_consulta,2)=0;

-- 14. PROVEEDOR
INSERT INTO Proveedor (nombre,documento,telefono,correo,direccion) VALUES
('Nutricion Animal SAS','PROV0001','6017001001','ventas@nutricionanimal.co','Bogota'),
('Carnes Selectas','PROV0002','6017001002','pedidos@carnes.co','Medellin'),
('Frutas del Campo','PROV0003','6017001003','contacto@frutascampo.co','Cali'),
('AgroSuministros','PROV0004','6017001004','ventas@agrosuministros.co','Bucaramanga'),
('Veterinaria Central','PROV0005','6017001005','pedidos@vetcentral.co','Bogota'),
('Laboratorios Fauna','PROV0006','6017001006','info@laboratoriosfauna.co','Pereira'),
('Forrajes del Norte','PROV0007','6017001007','ventas@forrajes.co','Cucuta'),
('Distribuciones Ecologicas','PROV0008','6017001008','contacto@distribucioneseco.co','Manizales');

-- 15. COMPRA: 40 compras
INSERT INTO Compra (id_proveedor,id_alimento,fecha_compra,cantidad,costo_unitario,total)
WITH RECURSIVE nums AS (SELECT 1 n UNION ALL SELECT n+1 FROM nums WHERE n<40)
SELECT 1+MOD(n-1,8),1+MOD(n-1,12),DATE_ADD('2026-01-01',INTERVAL n DAY),
       20+MOD(n*3,100),3000+MOD(n*725,12000),
       (20+MOD(n*3,100))*(3000+MOD(n*725,12000))
FROM nums;

-- 16. VISITANTE: exactamente 3000 registros con nombres y apellidos normales
SET SESSION cte_max_recursion_depth = 3100;

INSERT INTO Visitante (nombre,apellido,documento,telefono,correo)
WITH RECURSIVE nums AS (
    SELECT 1 AS n
    UNION ALL
    SELECT n + 1 FROM nums WHERE n < 3000
)
SELECT
    ELT(1 + FLOOR((n - 1) / 60),
        'Juan','Maria','Carlos','Ana','Andres','Laura','Sebastian','Camila',
        'Daniel','Valentina','Jose','Sofia','Miguel','Isabella','David',
        'Gabriela','Alejandro','Daniela','Samuel','Paula','Nicolas','Mariana',
        'Mateo','Lucia','Santiago','Juliana','Felipe','Manuela','Diego','Natalia',
        'Martin','Sara','Javier','Carolina','Emilio','Renata','Tomas','Paola',
        'Esteban','Claudia','Ricardo','Adriana','Oscar','Catalina','Fernando',
        'Angela','Jorge','Viviana','Hector','Monica'
    ),
    ELT(1 + MOD(n - 1, 60),
        'Garcia','Rodriguez','Martinez','Lopez','Hernandez','Gonzalez',
        'Perez','Sanchez','Ramirez','Torres','Diaz','Castro','Rojas','Moreno',
        'Vargas','Jimenez','Ruiz','Ortiz','Mendoza','Silva','Romero','Alvarez',
        'Navarro','Restrepo','Cortes','Rios','Gutierrez','Giraldo','Marin',
        'Cardenas','Velez','Mejia','Ospina','Duque','Aguilar','Pineda',
        'Serrano','Acosta','Molina','Suarez','Reyes','Fuentes','Cabrera',
        'Parra','Leon','Mora','Arias','Vega','Cruz','Santos','Lozano',
        'Herrera','Escobar','Valencia','Quintero','Bermudez','Cardona',
        'Franco','Bautista','Pardo'
    ),
    CONCAT('DOC', LPAD(n, 8, '0')),
    CONCAT('3', LPAD(100000000 + n, 9, '0')),
    CONCAT('visitante', n, '@correo.demo')
FROM nums;

-- 17. TIPO_ENTRADA
INSERT INTO Tipo_Entrada (nombre,descripcion,precio) VALUES
('Adulto','Entrada general para adultos',30000),
('Nino','Entrada para menores',18000),
('Adulto mayor','Tarifa especial',20000),
('Estudiante','Tarifa con identificacion estudiantil',22000),
('Grupo familiar','Tarifa por persona para grupos familiares',25000);

-- 18. VENTA: 500 ventas
INSERT INTO Venta (id_visitante,id_empleado,id_tipo_entrada,fecha_venta,cantidad,precio_unitario,total)
WITH RECURSIVE nums AS (SELECT 1 n UNION ALL SELECT n+1 FROM nums WHERE n<500)
SELECT n,10+MOD(n-1,3),1+MOD(n-1,5),
       DATE_ADD('2026-01-01',INTERVAL MOD(n,300) DAY),
       1+MOD(n,4),
       CASE 1+MOD(n-1,5) WHEN 1 THEN 30000 WHEN 2 THEN 18000
       WHEN 3 THEN 20000 WHEN 4 THEN 22000 ELSE 25000 END,
       (1+MOD(n,4))*CASE 1+MOD(n-1,5) WHEN 1 THEN 30000 WHEN 2 THEN 18000
       WHEN 3 THEN 20000 WHEN 4 THEN 22000 ELSE 25000 END
FROM nums;

-- 19. EVENTO
INSERT INTO Evento (id_empleado,nombre,descripcion,fecha,hora,cupo_maximo) VALUES
(15,'Dia de la biodiversidad','Jornada sobre biodiversidad','2026-06-05','09:00:00',120),
(16,'Conoce a los felinos','Charla sobre grandes felinos','2026-06-12','10:00:00',60),
(18,'Guardianes del agua','Taller sobre cuidado del agua','2026-06-18','14:00:00',45),
(15,'Alimentacion animal','Demostracion de dietas','2026-06-25','11:00:00',50),
(16,'Aves del zoologico','Recorrido por el aviario','2026-07-02','09:30:00',80),
(18,'Conservacion de tortugas','Actividad sobre especies acuaticas','2026-07-09','13:00:00',40),
(15,'Dia de los primates','Charla sobre primates','2026-07-16','10:00:00',60),
(16,'Pequenos exploradores','Actividad infantil','2026-07-23','09:00:00',100),
(18,'Bosques y biodiversidad','Taller de conservacion forestal','2026-08-01','14:00:00',50),
(15,'Conoce a los herbivoros','Recorrido educativo','2026-08-08','10:30:00',70),
(16,'Cuidadores por un dia','Experiencia educativa supervisada','2026-08-15','08:30:00',25),
(18,'Fauna y cambio climatico','Conferencia ambiental','2026-08-22','15:00:00',90);

-- 20. INSCRIPCION_EVENTO: 300 inscripciones
INSERT INTO Inscripcion_Evento (id_evento,id_visitante,fecha_inscripcion,estado)
WITH RECURSIVE nums AS (SELECT 1 n UNION ALL SELECT n+1 FROM nums WHERE n<300)
SELECT 1+MOD(n-1,12),1+MOD((n*7)-1,3000),
       DATE_ADD('2026-05-01',INTERVAL MOD(n,100) DAY),
       IF(MOD(n,10)=0,'Cancelada','Inscrito')
FROM nums;

-- UPDATE de demostracion
UPDATE Alimento SET cantidad_stock = cantidad_stock + 25 WHERE id_alimento = 1;

-- DELETE de demostracion: elimina una inscripcion cancelada, si existe
DELETE FROM Inscripcion_Evento
WHERE id_inscripcion = (
    SELECT id FROM (
        SELECT MIN(id_inscripcion) AS id FROM Inscripcion_Evento
        WHERE estado = 'Cancelada'
    ) AS temporal
);

