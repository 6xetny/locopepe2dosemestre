-- Crea base de datos 'empresa'

DROP DATABASE IF EXISTS empresa;

CREATE DATABASE empresa;

USE empresa;

CREATE TABLE personal
    (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    email VARCHAR(320),
    ciudad VARCHAR(50),
    sueldo DECIMAL(10,2),
    departamento VARCHAR(30),
    fecha_ingreso DATE
    );

CREATE TABLE ventas
    (
    id INT PRIMARY KEY AUTO_INCREMENT,
    producto VARCHAR(50),
    categoria VARCHAR(30),
    cantidad INT,
    precio DECIMAL(10,2),
    fecha DATE,
    vendedor int
    );

CREATE TABLE productos
    (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR (100),
    categoria VARCHAR (100),
    precio INT,
    stock INT
    );

CREATE TABLE pedidos
    (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cliente VARCHAR(100),
    fecha_pedido DATE,
    total_pedido INT,
    estado_pedido VARCHAR(20)
    );

-- Ingresa registros a la tabla personal

INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Román', 'Roca', 'reyes93@yahoo.com', 'Segovia', 1255392, 'Ventas', '2023-06-21');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Heraclio', 'Alberola', 'nicolas26@gmail.com', 'Almería', 414924, 'Finanzas', '2022-07-04');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Leandra', 'Mateo', 'olimpiarivera@zorrilla.net', 'Cádiz', 1294942, 'RRHH', '2023-08-22');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Enrique', 'Sola', 'wllopis@hotmail.com', 'Guipúzcoa', 685970, 'Finanzas', '2025-02-28');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Victor Manuel', 'Pedrero', 'ebenavent@gmail.com', 'Córdoba', 338403, 'TI', '2020-09-08');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Patricio', 'Marco', 'obenito@penalver-calvo.es', 'Guipúzcoa', 1942854, 'Finanzas', '2022-06-29');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Rosendo', 'Valencia', 'pepita81@yahoo.com', 'Cuenca', 1677247, 'Finanzas', '2021-03-07');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Jordán', 'Jara', 'qreina@gmail.com', 'Las Palmas', 1636191, 'Finanzas', '2021-06-27');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Felix', 'Casals', 'monicabello@villa-diego.com', 'Burgos', 524548, 'Logística', '2025-06-05');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Rafaela', 'Baquero', 'emadrid@laguna-abascal.com', 'Lugo', 1929434, 'RRHH', '2023-12-07');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Jose Ignacio', 'Hervás', 'acevedoporfirio@hotmail.com', 'La Rioja', 2170970, 'Ventas', '2022-01-18');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Román', 'Bru', 'panchocanales@reig.org', 'Ávila', 803453, 'TI', '2022-09-29');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Vidal', 'Pablo', 'manolollorente@yahoo.com', 'Las Palmas', 1871251, 'TI', '2024-11-20');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Isidro', 'Tapia', 'pugaluisa@diez.com', 'Melilla', 329999, 'Logística', '2022-04-06');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Jerónimo', 'Roselló', 'alejandro87@gmail.com', 'Jaén', 1795673, 'Marketing', '2022-07-22');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Nélida', 'Torrecilla', 'conesaciro@gmail.com', 'Toledo', 375248, 'Finanzas', '2023-05-05');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Josefa', 'Amigó', 'santamariadamian@anguita.es', 'Tarragona', 741577, 'TI', '2022-10-23');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Victorino', 'Rocamora', 'candelascarpio@hotmail.com', 'Huesca', 454323, 'Marketing', '2022-01-30');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Ricarda', 'Peiró', 'wmorera@sarmiento.org', 'Ceuta', 2090532, 'RRHH', '2022-03-14');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Artemio', 'Heredia', 'zacarias28@pages-pujol.es', 'Guadalajara', 1834238, 'TI', '2023-03-06');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Rufina', 'Ugarte', 'chelo43@borras.es', 'Cantabria', 1234103, 'Marketing', '2025-05-28');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Petrona', 'Dominguez', 'marita21@juan.es', 'Cádiz', 784991, 'Logística', '2021-06-17');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Baldomero', 'Aguado', 'salvaismael@yahoo.com', 'Soria', 720774, 'Ventas', '2021-08-23');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Sofía', 'Royo', 'elena99@cabello.org', 'Guipúzcoa', 774796, 'Logística', '2024-10-03');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Estrella', 'Cardona', 'calistopalmer@gomez.com', 'Valencia', 1525374, 'RRHH', '2021-12-14');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Lucio', 'Coronado', 'noemi47@carvajal-bermejo.org', 'Lugo', 2422443, 'Ventas', '2024-10-23');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Salvador', 'Guerra', 'rafaelainiesta@lujan.org', 'Baleares', 373460, 'TI', '2022-10-24');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Cruz', 'Carretero', 'nicolas43@adadia.es', 'Cantabria', 1934921, 'RRHH', '2025-04-19');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Leyre', 'Pelayo', 'cvilaplana@guerra-llanos.com', 'Valencia', 1645730, 'Marketing', '2021-07-30');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Lilia', 'Corominas', 'blancasalud@llanos.net', 'Jaén', 574172, 'Marketing', '2021-04-28');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Toni', 'Robledo', 'tbatalla@esparza.es', 'Cádiz', 834635, 'Logística', '2022-08-23');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Olivia', 'Casals', 'teotolosa@cueto.org', 'Palencia', 1139343, 'Marketing', '2023-04-03');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Chema', 'Agustín', 'evizcaino@gmail.com', 'León', 1922745, 'Logística', '2024-04-21');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Agustín', 'Lasa', 'jose-ignacio31@guillen.com', 'Palencia', 2338665, 'RRHH', '2025-01-16');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Ale', 'Corral', 'ariasmarina@yahoo.com', 'Zaragoza', 940589, 'Ventas', '2025-07-16');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Ramona', 'Llorente', 'amolucho@yahoo.com', 'Córdoba', 1825209, 'Marketing', '2024-12-13');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Eufemia', 'Arrieta', 'ctorrent@hotmail.com', 'Vizcaya', 1671179, 'Marketing', '2023-03-12');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Delfina', 'Palmer', 'pacifica73@lumbreras-luque.es', 'Huelva', 2158666, 'Marketing', '2023-03-01');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Adela', 'Calvet', 'nacio74@yahoo.com', 'Almería', 1290226, 'Finanzas', '2023-07-30');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Narcisa', 'Sancho', 'ferminmontesinos@franco.net', 'Ourense', 1303529, 'Logística', '2024-09-27');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Alfredo', 'Blanch', 'navaspurificacion@gmail.com', 'Barcelona', 495583, 'RRHH', '2020-12-12');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Camila', 'Palomino', 'pastor05@morillo.es', 'Segovia', 2038130, 'Logística', '2024-08-25');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Vinicio', 'Casado', 'uriartezaida@yahoo.com', 'Madrid', 1723934, 'RRHH', '2023-05-24');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Adriana', 'Escrivá', 'montserratfelicia@izquierdo.com', 'León', 1543939, 'Ventas', '2025-01-19');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Loida', 'Tormo', 'ibanarroyo@perea.com', 'Las Palmas', 446484, 'RRHH', '2022-09-12');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Iker', 'Blanco', 'ferreroalondra@gmail.com', 'Tarragona', 1835952, 'Finanzas', '2024-01-16');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Valeria', 'Navarro', 'belenferrandez@yahoo.com', 'Girona', 1569913, 'Ventas', '2021-03-04');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Gaspar', 'Cañellas', 'candida05@escribano-rios.es', 'Guadalajara', 421382, 'TI', '2023-05-18');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Cesar', 'Pulido', 'nazaret21@gmail.com', 'Madrid', 724085, 'Logística', '2021-04-07');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Lalo', 'Roldán', 'agapito90@llorens.net', 'Valencia', 2214770, 'TI', '2024-05-03');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Cruz', 'Fabra', 'ines97@rojas-rueda.net', 'Cáceres', 1718276, 'Marketing', '2021-01-03');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Soledad', 'Casals', 'amada35@calzada.es', 'Valencia', 751636, 'Finanzas', '2025-05-14');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Amor', 'Rico', 'khervia@saenz.com', 'Almería', 455519, 'Marketing', '2024-10-05');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Anselma', 'Sierra', 'sebastianpalacios@yahoo.com', 'Álava', 2206159, 'TI', '2020-11-30');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Noemí', 'Mayoral', 'priscila46@hotmail.com', 'Barcelona', 476031, 'TI', '2025-04-06');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Prudencia', 'Coello', 'neiracarmelo@gual.es', 'Valladolid', 648217, 'RRHH', '2024-02-07');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Rosalina', 'Blanes', 'soledadsaez@yahoo.com', 'Cuenca', 772403, 'Finanzas', '2022-11-18');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Paz', 'Lamas', 'alicia31@gonzalo.com', 'Pontevedra', 2482316, 'Marketing', '2023-03-11');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Eusebia', 'Frutos', 'judithcalderon@figuerola-santamaria.com', 'La Coruña', 1169837, 'Finanzas', '2021-04-19');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Dora', 'Álvaro', 'dafne11@hotmail.com', 'Huesca', 1389123, 'Ventas', '2024-01-18');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Juan Antonio', 'Coca', 'aarnaiz@lopez.es', 'León', 2167437, 'RRHH', '2025-03-03');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Leandra', 'Otero', 'brueda@vega-machado.com', 'Santa Cruz de Tenerife', 2453089, 'RRHH', '2021-08-10');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Javiera', 'Aroca', 'gilsebastian@prat.org', 'Álava', 2119743, 'Ventas', '2021-03-10');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Reyes', 'Beltrán', 'valeria00@vera.net', 'Murcia', 930909, 'Marketing', '2022-10-28');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Paco', 'Mayoral', 'ynunez@cantero.net', 'Cáceres', 2430413, 'Logística', '2020-10-02');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Amando', 'Gallart', 'expositoblanca@hotmail.com', 'Cuenca', 1459891, 'Finanzas', '2022-07-10');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Paca', 'Batalla', 'callorena@sanjuan.com', 'Jaén', 1918025, 'Logística', '2021-08-12');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Toribio', 'Ramis', 'vascofrias@hotmail.com', 'Navarra', 349988, 'Ventas', '2023-12-05');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Isaías', 'Barrio', 'mayte14@hotmail.com', 'Valladolid', 1510594, 'RRHH', '2021-06-25');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('José', 'Ros', 'pazoslupe@gmail.com', 'Palencia', 1832083, 'Marketing', '2024-01-25');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Mamen', 'Ibáñez', 'maria-manuelajerez@aragon-valls.net', 'Valladolid', 845293, 'TI', '2024-05-31');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Susana', 'Mate', 'ycalatayud@dominguez.com', 'Barcelona', 2461693, 'Ventas', '2020-08-29');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Candelario', 'Jerez', 'ariel69@santiago.org', 'Madrid', 864283, 'Logística', '2024-10-18');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Vicenta', 'Moles', 'zmunoz@arroyo.es', 'Vizcaya', 1312173, 'RRHH', '2021-02-23');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Hector', 'Chaparro', 'dionisiotamayo@gascon-madrid.com', 'Salamanca', 843984, 'RRHH', '2023-08-21');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Sebastian', 'Tur', 'sierramartirio@gmail.com', 'Ourense', 1192452, 'Ventas', '2022-10-25');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Nidia', 'Bernad', 'javieradominguez@gmail.com', 'Córdoba', 1134586, 'TI', '2025-05-13');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Enrique', 'Cobo', 'maxiaranda@castillo.net', 'Guadalajara', 2462549, 'RRHH', '2023-05-20');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Román', 'Gimenez', 'loretogalindo@hervia.es', 'Lugo', 1470197, 'Finanzas', '2023-01-10');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Anselma', 'Ripoll', 'candelario45@hotmail.com', 'Teruel', 935901, 'RRHH', '2025-03-03');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Kike', 'Lucena', 'lmontalban@cases.es', 'Baleares', 2238024, 'RRHH', '2022-05-21');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Trini', 'Nogueira', 'kcasanovas@sancho-gamez.com', 'Zaragoza', 1546630, 'Logística', '2023-06-17');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Samuel', 'Colom', 'vgarces@baez-aguirre.es', 'Soria', 2017301, 'Logística', '2022-07-11');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Leandra', 'Cárdenas', 'asensiobernarda@carrera.net', 'Jaén', 1894072, 'Finanzas', '2021-12-07');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Rosario', 'Pablo', 'tejeroantonio@blanco-alamo.es', 'Soria', 369346, 'Finanzas', '2025-03-22');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Susana', 'Olmo', 'danimorante@ugarte-guardiola.com', 'Cuenca', 660601, 'Logística', '2022-10-30');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Leocadio', 'Morell', 'taniaamador@marques.es', 'Melilla', 323894, 'Logística', '2021-12-04');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Luna', 'Gutiérrez', 'montalbannerea@hotmail.com', 'Segovia', 1412796, 'TI', '2023-08-13');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Carmelita', 'Seguí', 'teclamorata@hotmail.com', 'Baleares', 1227021, 'TI', '2023-02-02');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Valerio', 'Barragán', 'yiborra@montana-ferrer.com', 'Salamanca', 1521909, 'Finanzas', '2023-07-20');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Piedad', 'Ordóñez', 'virgilioreguera@garcia.org', 'Lugo', 1048624, 'Marketing', '2023-12-06');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Heriberto', 'Cuéllar', 'pinagil@avila.net', 'Tarragona', 1440443, 'Marketing', '2023-02-08');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Angelita', 'Ugarte', 'peraltaalmudena@domenech-gras.com', 'Ourense', 1697711, 'Marketing', '2023-04-11');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Timoteo', 'García', 'kperales@gmail.com', 'Zaragoza', 374292, 'RRHH', '2021-12-28');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Luciana', 'Espinosa', 'regina60@maza.es', 'Zamora', 303984, 'Marketing', '2023-12-10');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Faustino', 'Benet', 'jafet58@ruiz-bellido.es', 'Zamora', 358784, 'Finanzas', '2022-06-16');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Blanca', 'Izquierdo', 'marcosrosalva@ocana-arce.com', 'Lleida', 2197099, 'TI', '2022-05-21');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Poncio', 'Zapata', 'jose-antonioolivares@yahoo.com', 'Teruel', 996773, 'Marketing', '2021-09-15');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Griselda', 'Martin', 'rogeliohidalgo@campo.es', 'Badajoz', 418799, 'Logística', '2021-07-15');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Pepita', 'Cabezas', 'barrosoeligia@llano-fabregat.com', 'Santa Cruz de Tenerife', 1566790, 'Marketing', '2023-08-02');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Atilio', 'Real', 'alegreolga@calleja.com', 'Las Palmas', 2238603, 'Marketing', '2023-04-19');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Magdalena', 'Villalobos', 'zamoranovalerio@hotmail.com', 'Las Palmas', 932395, 'Finanzas', '2021-03-23');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Lope', 'Jara', 'currobenavent@yahoo.com', 'Navarra', 1546642, 'Finanzas', '2024-10-25');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Juan Manuel', 'Arias', 'qhigueras@yahoo.com', 'Valladolid', 1155645, 'Finanzas', '2021-09-11');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Perla', 'Flores', 'porfirio91@hotmail.com', 'Pontevedra', 671082, 'Marketing', '2025-07-13');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Aureliano', 'Armas', 'mayoralfabian@hotmail.com', 'Murcia', 2229978, 'Ventas', '2021-11-22');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Marcela', 'Tejera', 'zbecerra@escamilla-pont.com', 'Murcia', 1286490, 'Marketing', '2025-02-04');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Roque', 'Pazos', 'brocha@davila.com', 'León', 1508443, 'Finanzas', '2024-08-08');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Paco', 'Fabregat', 'hernandezmanuelita@salmeron.es', 'La Coruña', 1207084, 'Marketing', '2023-10-22');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Felipa', 'Arce', 'tseco@porcel.es', 'Vizcaya', 1539014, 'Logística', '2022-01-29');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Cándido', 'Valentín', 'zvalenzuela@hernandez.es', 'Burgos', 2358712, 'Ventas', '2022-01-06');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Lilia', 'Domínguez', 'perlita65@ibarra.es', 'Guadalajara', 530832, 'RRHH', '2024-01-29');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Germán', 'Martínez', 'carromarco@quevedo-milla.es', 'Las Palmas', 435654, 'RRHH', '2025-04-08');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Yéssica', 'Briones', 'vaqueropelayo@duarte.net', 'Alicante', 2159003, 'Marketing', '2024-05-03');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Almudena', 'Capdevila', 'teruelmaria@giron-pinto.es', 'Cáceres', 1721132, 'RRHH', '2021-11-10');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Saturnina', 'Domingo', 'estebansalas@rivero-borrell.com', 'Alicante', 2122383, 'RRHH', '2024-04-20');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Filomena', 'Coello', 'vangel@gmail.com', 'Valencia', 801732, 'TI', '2022-03-28');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Febe', 'Aramburu', 'hjaen@gmail.com', 'Albacete', 1432587, 'Ventas', '2021-07-07');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Ignacio', 'Montenegro', 'anselmafiol@hotmail.com', 'Ávila', 973426, 'Logística', '2023-06-03');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Eloy', 'Cabello', 'mramirez@yahoo.com', 'Barcelona', 1137298, 'Marketing', '2023-04-20');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('María Dolores', 'Gallo', 'pallaresrosario@pineda.com', 'Baleares', 619889, 'Ventas', '2021-12-23');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Mamen', 'Lopez', 'santiagoalvaro@farre-coll.es', 'Almería', 747562, 'Marketing', '2024-05-28');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Onofre', 'Echevarría', 'ayllondorita@hotmail.com', 'Huelva', 507285, 'Marketing', '2022-04-05');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Morena', 'Cantero', 'salomon78@roman.com', 'Almería', 690466, 'Ventas', '2020-10-19');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Donato', 'López', 'mateo04@tirado-blazquez.com', 'Guipúzcoa', 2445445, 'TI', '2023-09-22');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Nando', 'Borrego', 'boadaporfirio@yahoo.com', 'Cáceres', 2268216, 'Marketing', '2023-09-20');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Trinidad', 'Blazquez', 'cecilioibarra@duque.es', 'Baleares', 975013, 'RRHH', '2021-08-28');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Andrés Felipe', 'Cortés', 'isabel07@llorens.net', 'Guadalajara', 919603, 'Ventas', '2024-08-16');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Américo', 'Acosta', 'palmirasandoval@cespedes.com', 'Lleida', 1316020, 'Logística', '2024-08-15');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Ale', 'Anguita', 'gabrielcuellar@yahoo.com', 'Navarra', 918643, 'Ventas', '2025-07-07');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Anita', 'Villegas', 'vdiez@hotmail.com', 'Tarragona', 506436, 'RRHH', '2023-05-04');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Hugo', 'Espejo', 'manuelayala@hotmail.com', 'Vizcaya', 1826750, 'TI', '2024-10-06');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Jacinta', 'Castrillo', 'berta75@gmail.com', 'Teruel', 1747913, 'Ventas', '2024-04-04');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Gloria', 'Nevado', 'jose-miguel50@yahoo.com', 'Almería', 685548, 'Logística', '2024-02-27');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Vicenta', 'Bauzà', 'reyestellez@hotmail.com', 'Pontevedra', 2260963, 'Marketing', '2021-09-20');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Mateo', 'Tovar', 'alexandragallart@tejero-gibert.net', 'Tarragona', 1590901, 'Logística', '2025-01-14');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Isaías', 'Armengol', 'apolinararias@malo.org', 'Soria', 590921, 'Ventas', '2020-09-10');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Rosalinda', 'Almazán', 'xgiron@clemente.org', 'Almería', 1893833, 'RRHH', '2021-09-11');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Julio', 'Seguí', 'juan-bautista39@yahoo.com', 'Pontevedra', 1114764, 'RRHH', '2024-12-13');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Rosa María', 'Gelabert', 'casanovaeli@lasa.com', 'Málaga', 804016, 'TI', '2024-10-01');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Edelmira', 'Simó', 'jenaro63@gmail.com', 'Teruel', 572889, 'Finanzas', '2024-11-23');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Valero', 'Salinas', 'rcabeza@pereira.com', 'Salamanca', 405996, 'RRHH', '2023-03-27');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Gisela', 'Vicente', 'berta50@yahoo.com', 'Murcia', 779434, 'RRHH', '2024-01-12');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Zoraida', 'Tomás', 'martinacoloma@gmail.com', 'Vizcaya', 1676298, 'Logística', '2022-09-01');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Isaac', 'Tomas', 'teofilo44@barrena.com', 'Jaén', 900828, 'TI', '2025-01-23');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Ovidio', 'Cabañas', 'manuelita90@gmail.com', 'Girona', 690845, 'Logística', '2024-04-19');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Rodolfo', 'Izquierdo', 'lledohaydee@hotmail.com', 'Zaragoza', 1074341, 'RRHH', '2024-02-14');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Eufemia', 'Camps', 'lobatomaxi@palma.es', 'Teruel', 1027357, 'Logística', '2023-10-15');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Severiano', 'Saez', 'violeta72@hotmail.com', 'Lleida', 1828475, 'RRHH', '2024-07-23');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Maricruz', 'Vallejo', 'xcerdan@hotmail.com', 'Lleida', 793810, 'Finanzas', '2022-03-25');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Pablo', 'Sevilla', 'fsureda@trujillo-costa.net', 'Barcelona', 1875791, 'Ventas', '2024-10-15');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Rosalía', 'Vilanova', 'munozefrain@moreno.es', 'Navarra', 586846, 'Ventas', '2024-01-25');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Florina', 'Casals', 'julianlidia@hotmail.com', 'Córdoba', 1987768, 'Marketing', '2021-02-14');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Eric', 'Gimenez', 'valentin23@hotmail.com', 'Albacete', 1951923, 'RRHH', '2023-05-01');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Aurelia', 'Gras', 'yayllon@gmail.com', 'La Rioja', 1264884, 'Ventas', '2022-09-18');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Vinicio', 'Ibáñez', 'celiaalcazar@yahoo.com', 'Guipúzcoa', 431765, 'Ventas', '2023-01-24');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Norberto', 'Calatayud', 'xmarti@marin.es', 'Albacete', 1165721, 'RRHH', '2023-03-15');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Aurora', 'Macias', 'natividadaguilar@gmail.com', 'Melilla', 1922162, 'TI', '2024-07-16');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Manu', 'Salom', 'claudia28@gmail.com', 'Huesca', 1388383, 'TI', '2023-04-19');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Guiomar', 'Rueda', 'isaura90@rios.com', 'Cuenca', 379912, 'Finanzas', '2023-12-27');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Débora', 'Calderón', 'gutierreznereida@aragones-riera.es', 'León', 2050306, 'Logística', '2024-09-30');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Íñigo', 'Tenorio', 'gacevedo@quiroga.com', 'Segovia', 553863, 'RRHH', '2022-08-06');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Herminia', 'Mur', 'borregodonato@franch-zabaleta.es', 'Guipúzcoa', 1169868, 'Finanzas', '2025-01-03');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('César', 'Ochoa', 'gimenezjacinta@yahoo.com', 'Pontevedra', 1956563, 'Ventas', '2023-08-15');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Goyo', 'Segura', 'rleiva@hotmail.com', 'Valladolid', 1942063, 'Marketing', '2025-06-16');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Hermenegildo', 'Palma', 'miguela00@yahoo.com', 'Badajoz', 906393, 'Logística', '2021-01-22');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Clara', 'Nebot', 'adalberto00@yahoo.com', 'Zamora', 1511551, 'RRHH', '2021-03-02');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Desiderio', 'Cuesta', 'alicia14@gmail.com', 'Granada', 1701094, 'Finanzas', '2025-02-17');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Carmelo', 'Heras', 'nborras@portillo.es', 'Huesca', 675324, 'Finanzas', '2021-12-26');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Yéssica', 'Montalbán', 'rogelio94@gmail.com', 'Santa Cruz de Tenerife', 1070135, 'Logística', '2025-02-06');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Soledad', 'Bermúdez', 'lalo05@gmail.com', 'Cáceres', 2181802, 'Logística', '2020-11-15');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Pepe', 'Anguita', 'qgonzalez@segovia.es', 'La Rioja', 391123, 'Finanzas', '2020-09-30');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Anastasio', 'Piñol', 'cirinoropero@cuellar-requena.org', 'León', 2072446, 'Ventas', '2022-12-02');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Olivia', 'Benavides', 'crosell@hotmail.com', 'Jaén', 415993, 'RRHH', '2025-06-24');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Dan', 'Mulet', 'zcarreno@folch.org', 'Álava', 1061512, 'Logística', '2021-10-29');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Irene', 'Losada', 'benaventeufemia@hotmail.com', 'Sevilla', 386278, 'Marketing', '2021-01-27');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Anselma', 'Alonso', 'juanita53@hotmail.com', 'Lugo', 2017227, 'RRHH', '2020-09-19');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Angelita', 'Almagro', 'peiroreyes@hotmail.com', 'Segovia', 468829, 'Finanzas', '2025-05-07');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('René', 'Chamorro', 'sanabriaisa@espinosa.net', 'La Coruña', 330278, 'RRHH', '2022-07-28');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Cecilio', 'Llorens', 'upinilla@infante.es', 'Ciudad', 635233, 'TI', '2024-11-05');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Serafina', 'Mesa', 'vsarabia@gmail.com', 'Guipúzcoa', 2046806, 'Marketing', '2024-03-11');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Cloe', 'Marcos', 'alvarolamas@malo.net', 'Cáceres', 1228697, 'Ventas', '2022-02-28');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Paula', 'Valenciano', 'eyanez@yahoo.com', 'Castellón', 1526189, 'TI', '2021-11-28');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Chucho', 'Casares', 'barcooriana@fernandez.org', 'Cádiz', 638299, 'TI', '2023-08-20');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Jessica', 'Feijoo', 'frutosmelchor@quintana.com', 'Tarragona', 1881607, 'TI', '2020-11-09');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Noé', 'Piña', 'martaabellan@hotmail.com', 'Pontevedra', 1414754, 'RRHH', '2023-08-19');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Jordán', 'Carretero', 'griselda60@yahoo.com', 'Girona', 1838404, 'Logística', '2023-10-07');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Matilde', 'Roma', 'qguardiola@dominguez-marquez.net', 'Murcia', 1748597, 'Finanzas', '2024-10-28');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Rodrigo', 'Valera', 'teofilovizcaino@hotmail.com', 'La Coruña', 1572351, 'Finanzas', '2022-03-06');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Chus', 'Iriarte', 'teodora49@yahoo.com', 'Cuenca', 1262591, 'Finanzas', '2020-10-15');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Beatriz', 'Seguí', 'mblasco@hotmail.com', 'Cantabria', 1703733, 'Finanzas', '2023-09-08');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Cristina', 'Portillo', 'feijootoni@yahoo.com', 'Huesca', 492135, 'RRHH', '2023-12-20');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Georgina', 'Laguna', 'zbas@yahoo.com', 'Lleida', 1154146, 'RRHH', '2022-08-25');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Fermín', 'Amo', 'jose-ramon08@gmail.com', 'Cáceres', 634310, 'Marketing', '2021-02-12');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Zoraida', 'Guerra', 'valerio97@hotmail.com', 'Alicante', 1776964, 'RRHH', '2024-05-03');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Nereida', 'Almazán', 'ingrid83@jauregui.org', 'Cáceres', 463760, 'Finanzas', '2022-09-19');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Leyre', 'Dueñas', 'florindamolina@yahoo.com', 'Cantabria', 1176401, 'Logística', '2020-11-01');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Jennifer', 'Daza', 'malena33@borja.com', 'Vizcaya', 2187688, 'Finanzas', '2024-05-12');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Juan Carlos', 'Cañas', 'zbello@jorda.es', 'Palencia', 1717011, 'TI', '2025-05-07');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Irma', 'Sandoval', 'joan20@lujan.org', 'Guadalajara', 757145, 'Logística', '2022-12-12');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Luís', 'Torrens', 'valverdereyes@hotmail.com', 'Cáceres', 1463328, 'Logística', '2024-10-02');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Florentino', 'Galván', 'rojasambar@briones-sanz.com', 'Huelva', 2109324, 'TI', '2023-08-28');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Tadeo', 'Priego', 'kikeandres@hotmail.com', 'Valladolid', 1715713, 'Logística', '2023-05-17');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Inmaculada', 'Garrido', 'escamillamarisol@bernal.com', 'Zamora', 1516728, 'TI', '2020-12-19');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Melchor', 'Carbonell', 'eliasmenendez@rodriguez.org', 'Segovia', 416960, 'TI', '2023-10-14');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Toño', 'Pizarro', 'andreaaguilera@yahoo.com', 'Málaga', 2191792, 'TI', '2023-03-02');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Jeremías', 'Escrivá', 'virgilio66@santamaria.com', 'Asturias', 431251, 'Ventas', '2021-11-28');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Antonia', 'Mata', 'xramirez@yahoo.com', 'Las Palmas', 1785543, 'Ventas', '2024-12-09');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Estela', 'Manjón', 'camposgerardo@gmail.com', 'Asturias', 1043323, 'Finanzas', '2023-10-07');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Jenny', 'Ferrán', 'zamoros@tamayo.es', 'Cádiz', 2089009, 'Logística', '2022-07-13');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Domingo', 'Marí', 'scontreras@fuentes-batalla.org', 'Baleares', 574454, 'Finanzas', '2021-04-04');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Remigio', 'Torre', 'mirjose-angel@hotmail.com', 'Almería', 1893294, 'TI', '2023-04-29');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Fernando', 'Téllez', 'paloma41@rueda-moll.org', 'Toledo', 308649, 'Marketing', '2023-10-25');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Nacio', 'Nicolás', 'maria39@acedo.com', 'Ceuta', 2114728, 'TI', '2025-04-24');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Onofre', 'Amor', 'fbejarano@serrano.es', 'Álava', 2163103, 'Marketing', '2024-07-16');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Amado', 'Mateu', 'hilario45@yahoo.com', 'La Coruña', 648257, 'Ventas', '2023-10-07');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Danilo', 'Cañellas', 'garmendiawalter@yahoo.com', 'Asturias', 1763707, 'Ventas', '2024-10-27');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Bruno', 'Costa', 'xblazquez@valencia.com', 'Las Palmas', 1522755, 'RRHH', '2024-03-15');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Jacobo', 'Garay', 'miriam30@yahoo.com', 'Las Palmas', 1793720, 'Finanzas', '2023-07-30');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Chus', 'Peñalver', 'juanitacordero@mayol-ibarra.com', 'Jaén', 1304050, 'TI', '2024-10-24');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Lupita', 'Adadia', 'cristobaltorrecilla@martin.com', 'León', 1827944, 'TI', '2024-03-06');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Aitor', 'Rocha', 'zmiralles@gargallo.es', 'Valencia', 633399, 'TI', '2022-11-17');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Germán', 'Merino', 'callejanidia@casares.es', 'Pontevedra', 775277, 'TI', '2024-05-28');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Juanita', 'Vaquero', 'ariel18@gmail.com', 'Pontevedra', 739656, 'Ventas', '2022-10-09');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Juanita', 'Mora', 'arenasmaria-belen@hotmail.com', 'Huesca', 2481009, 'Ventas', '2023-12-01');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Trinidad', 'Bertrán', 'lupe44@hotmail.com', 'La Coruña', 690161, 'Marketing', '2024-01-10');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Emelina', 'Viñas', 'lidia59@gmail.com', 'Granada', 593591, 'Ventas', '2021-08-15');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Amalia', 'Valbuena', 'opombo@pomares-viana.net', 'Guipúzcoa', 2416587, 'Logística', '2021-07-31');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Joaquina', 'Pineda', 'mascaroelvira@gmail.com', 'Cáceres', 660732, 'TI', '2020-12-08');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Maura', 'Alemany', 'eusebio59@yahoo.com', 'Barcelona', 2324434, 'Marketing', '2022-07-10');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Socorro', 'Pinto', 'rufina13@hotmail.com', 'Soria', 439051, 'RRHH', '2022-09-29');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Irene', 'Perelló', 'feliciana05@gmail.com', 'Córdoba', 1419828, 'Ventas', '2021-06-02');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Calista', 'Macias', 'acunafrancisco-javier@gmail.com', 'Cantabria', 710034, 'Logística', '2025-01-25');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Andrea', 'Cortes', 'vilarjose-francisco@yahoo.com', 'Ávila', 1174465, 'Ventas', '2021-07-16');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Emelina', 'Aguiló', 'fcatala@yahoo.com', 'Cuenca', 814920, 'Ventas', '2022-06-05');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Elba', 'Corbacho', 'dan97@rey.es', 'Málaga', 474050, 'Finanzas', '2022-12-05');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Encarnita', 'Alcolea', 'mohamed37@peral.com', 'Albacete', 1515157, 'Logística', '2023-08-22');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Clímaco', 'Querol', 'amado56@yahoo.com', 'Albacete', 837792, 'Ventas', '2022-04-28');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Prudencia', 'Gonzalez', 'wegea@hotmail.com', 'Segovia', 1836388, 'Logística', '2023-10-03');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Gustavo', 'Trujillo', 'edgardo77@hotmail.com', 'La Rioja', 826429, 'TI', '2023-11-24');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Arturo', 'Vallés', 'rrios@yahoo.com', 'Badajoz', 1362861, 'Marketing', '2025-05-30');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Rosa', 'Higueras', 'jjove@hotmail.com', 'Zaragoza', 1616770, 'RRHH', '2025-07-16');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Pepita', 'Narváez', 'chuchogirona@campo.com', 'Soria', 1158892, 'TI', '2024-04-24');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Mercedes', 'Ribas', 'filomenamontoya@huguet-torrecilla.com', 'Ourense', 970466, 'TI', '2021-10-23');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Vicenta', 'Narváez', 'jmiranda@yahoo.com', 'Asturias', 779267, 'RRHH', '2023-06-28');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Basilio', 'Jerez', 'aguilacandida@barreda.com', 'Valladolid', 1719152, 'RRHH', '2024-10-30');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Horacio', 'Cifuentes', 'arocamora@gmail.com', 'La Rioja', 1944434, 'TI', '2023-10-10');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Heraclio', 'Corominas', 'parragabriela@gmail.com', 'Soria', 847574, 'RRHH', '2020-10-10');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Lope', 'Corbacho', 'qsanabria@vigil-estevez.net', 'Zamora', 2017916, 'RRHH', '2023-12-07');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Jessica', 'García', 'khidalgo@yahoo.com', 'Guadalajara', 1370246, 'Finanzas', '2024-07-25');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Poncio', 'Lloret', 'gomisheliodoro@yahoo.com', 'Tarragona', 992333, 'Finanzas', '2021-07-27');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Tecla', 'Crespi', 'bmarquez@hotmail.com', 'Girona', 1083484, 'TI', '2022-04-29');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Cándido', 'Vélez', 'espadagil@hotmail.com', 'Valladolid', 1448907, 'Finanzas', '2022-10-02');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Maxi', 'Tejedor', 'ngalvan@camps.es', 'Huelva', 1550260, 'RRHH', '2021-07-17');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Luz', 'Batlle', 'noavizcaino@gmail.com', 'Albacete', 377704, 'RRHH', '2022-04-05');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Javiera', 'Sáenz', 'agustin35@mendez-tome.com', 'Santa Cruz de Tenerife', 2288100, 'RRHH', '2024-04-14');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Luna', 'Palomares', 'salesgriselda@garces.com', 'Alicante', 2372325, 'TI', '2024-05-01');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Febe', 'Acero', 'vaquerolupita@cabanillas-llano.org', 'Soria', 1057695, 'Logística', '2025-01-24');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Marita', 'Catalán', 'zarnal@arcos-garate.com', 'Tarragona', 1534879, 'Ventas', '2023-06-12');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Zaida', 'Amores', 'jodarmoreno@castell-guillen.org', 'León', 620409, 'Marketing', '2024-08-18');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Lupe', 'Perales', 'aceroprudencia@frias-escudero.com', 'Huesca', 2227744, 'RRHH', '2024-12-09');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Nidia', 'Coronado', 'rodrigojuan-manuel@rico-sanjuan.es', 'Segovia', 917416, 'RRHH', '2022-05-25');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Rosario', 'Baena', 'cintiagonzalez@yahoo.com', 'Zaragoza', 1014498, 'RRHH', '2023-08-10');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Hernando', 'Esteve', 'tecla78@vazquez.net', 'Granada', 881170, 'TI', '2022-12-11');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Javi', 'Sala', 'ripollagustina@velez.es', 'Cáceres', 1698205, 'Logística', '2020-08-12');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Eloísa', 'Varela', 'mugicaisidoro@cornejo.es', 'Murcia', 2097218, 'Finanzas', '2022-12-13');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Paula', 'Galiano', 'zchaparro@fuster.com', 'Vizcaya', 1474323, 'TI', '2024-09-09');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Paloma', 'Velázquez', 'kike60@hotmail.com', 'León', 1930033, 'Marketing', '2022-12-20');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Ale', 'Cortés', 'qgimenez@cobo.com', 'Madrid', 2155718, 'RRHH', '2023-02-24');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Sebastián', 'Español', 'rogelio64@hotmail.com', 'Huelva', 1993228, 'Ventas', '2022-01-19');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Chucho', 'Pinto', 'angelflavio@yahoo.com', 'Huesca', 1860822, 'Logística', '2021-08-04');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Fabián', 'Domínguez', 'wpi@hotmail.com', 'Sevilla', 1045945, 'Marketing', '2024-02-23');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Josué', 'Tejada', 'duquemarciano@vilalta.net', 'Melilla', 1853924, 'Logística', '2022-01-18');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Emilio', 'Avilés', 'qadan@herrero.net', 'Cuenca', 1241377, 'Marketing', '2024-02-04');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Abel', 'Estrada', 'camilo33@yahoo.com', 'Vizcaya', 1046998, 'Logística', '2021-05-23');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Joaquín', 'Bauzà', 'priba@yahoo.com', 'Barcelona', 2032192, 'Ventas', '2023-02-01');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Aníbal', 'Real', 'colomaesteban@torrents-duran.com', 'Ceuta', 661336, 'Logística', '2021-08-29');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Rosendo', 'Perea', 'agullomanuelita@falco.net', 'Toledo', 2431921, 'Ventas', '2024-03-26');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Jeremías', 'Cuéllar', 'jimeneznoemi@bertran.es', 'Castellón', 1455836, 'Finanzas', '2021-03-11');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Elodia', 'Santiago', 'luperueda@peiro-llanos.net', 'Córdoba', 2227469, 'Marketing', '2022-07-05');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Marcial', 'Cisneros', 'jeremias35@gamez.com', 'Asturias', 1110125, 'Finanzas', '2021-10-11');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Constanza', 'Cánovas', 'emelinabenitez@tovar.com', 'Huesca', 1248421, 'Logística', '2024-10-19');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Sosimo', 'Cabanillas', 'regueramacarena@pintor.com', 'Albacete', 2148962, 'RRHH', '2023-02-25');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Asunción', 'Beltrán', 'falconisidora@gmail.com', 'Asturias', 717344, 'Ventas', '2024-09-04');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Marcio', 'Escamilla', 'barralfederico@hotmail.com', 'Navarra', 2240500, 'Ventas', '2022-03-24');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Esteban', 'Villaverde', 'cmillan@infante-rincon.com', 'Tarragona', 1896999, 'Logística', '2021-11-27');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('David', 'Arrieta', 'domingoarsenio@juan.es', 'Teruel', 813678, 'Finanzas', '2023-12-05');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Pedro', 'Rueda', 'patricioportero@hotmail.com', 'León', 561503, 'Ventas', '2021-12-17');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Javiera', 'Valle', 'wzorrilla@gmail.com', 'Tarragona', 2375997, 'RRHH', '2024-02-15');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Adelina', 'Verdú', 'vito53@hotmail.com', 'Girona', 1897712, 'Ventas', '2023-11-10');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Eloísa', 'España', 'barbaracortina@grau.com', 'Sevilla', 919876, 'RRHH', '2023-06-25');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Carmelo', 'Díez', 'claudia93@campos.org', 'Ciudad', 1535382, 'RRHH', '2023-05-11');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('María Fernanda', 'Lastra', 'mariabarba@arce.es', 'Teruel', 2125273, 'Finanzas', '2021-10-01');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Macario', 'Viana', 'ramona60@hotmail.com', 'Tarragona', 2402022, 'Finanzas', '2021-08-04');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Félix', 'Losada', 'ricardo56@ibanez-aranda.com', 'Salamanca', 607892, 'Logística', '2024-09-12');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Santos', 'Solsona', 'ialmeida@gmail.com', 'Guadalajara', 2479896, 'Finanzas', '2025-07-12');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Saturnino', 'Murillo', 'dguerrero@anglada.net', 'Sevilla', 2191501, 'Finanzas', '2024-11-27');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Cayetano', 'Borrego', 'ferrerroxana@yahoo.com', 'Cáceres', 2189196, 'RRHH', '2025-01-06');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Haroldo', 'Aznar', 'rayagloria@ferrero.com', 'Asturias', 2106317, 'RRHH', '2022-08-17');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Eli', 'Tur', 'colomerhortensia@cabello.es', 'Lleida', 2249737, 'TI', '2023-08-24');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Clara', 'Gordillo', 'salud77@gmail.com', 'Segovia', 1530858, 'Logística', '2025-07-19');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Rolando', 'Pino', 'whierro@yahoo.com', 'Vizcaya', 675441, 'Logística', '2023-12-02');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Alfredo', 'Rincón', 'vfigueras@feliu.net', 'Palencia', 2245598, 'RRHH', '2025-05-21');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Luciano', 'Valera', 'hbertran@guardiola.net', 'Toledo', 2497746, 'RRHH', '2022-02-01');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Micaela', 'Pedrero', 'ocordoba@gmail.com', 'Lugo', 2191908, 'TI', '2022-09-07');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Jorge', 'Arenas', 'heracliopoza@bertran.es', 'Álava', 2111884, 'TI', '2025-01-22');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Milagros', 'Barberá', 'olallapombo@yahoo.com', 'La Rioja', 1648782, 'RRHH', '2023-01-24');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Eulalia', 'Valls', 'taniaalcolea@moya-ocana.es', 'Soria', 1789465, 'Logística', '2021-09-05');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Isabel', 'Pujol', 'macaria27@albero-pineiro.es', 'Badajoz', 1427581, 'Logística', '2023-12-23');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Nicolás', 'Cañas', 'salud12@hotmail.com', 'Las Palmas', 2423746, 'TI', '2023-01-31');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Leire', 'Bermúdez', 'vmarin@yahoo.com', 'Guadalajara', 1186755, 'Ventas', '2023-06-08');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Jose Manuel', 'Zamora', 'galanpaula@gmail.com', 'Ciudad', 1976566, 'RRHH', '2023-03-27');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Francisco Jose', 'Pineda', 'pageseutropio@casas.es', 'Girona', 2497295, 'Ventas', '2024-09-29');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Eligia', 'Calderon', 'bertranana@hotmail.com', 'Cantabria', 2030436, 'Marketing', '2022-07-15');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Iván', 'Crespi', 'luis-miguel78@hotmail.com', 'La Coruña', 1044080, 'Finanzas', '2024-06-13');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Luisina', 'Grande', 'robledomaximo@hotmail.com', 'Badajoz', 1423865, 'Logística', '2022-12-20');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Tania', 'Ugarte', 'ainara89@hotmail.com', 'Girona', 393848, 'Marketing', '2024-01-03');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Valentina', 'Arco', 'uduarte@gmail.com', 'Baleares', 810411, 'RRHH', '2022-06-21');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Joaquina', 'Canales', 'teofilarosales@yahoo.com', 'Almería', 1947213, 'Logística', '2023-12-13');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Olegario', 'Díaz', 'gabrielaarregui@arnaiz.es', 'Huelva', 2294692, 'Logística', '2023-02-26');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Leyre', 'Cueto', 'lolamontes@yahoo.com', 'Cádiz', 488682, 'RRHH', '2020-09-16');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Lázaro', 'Valenciano', 'guijarrocelia@pelayo-valles.com', 'Girona', 784623, 'Finanzas', '2021-04-03');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Leocadio', 'Heras', 'lricart@valenciano.es', 'Teruel', 2365219, 'TI', '2023-08-14');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Jose Miguel', 'Suarez', 'juanbermudez@lerma.net', 'Pontevedra', 1441940, 'RRHH', '2023-01-11');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Eli', 'Montesinos', 'rafacueto@terron.com', 'Ciudad', 1685294, 'TI', '2021-12-11');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Abigaíl', 'Sanjuan', 'aznaromar@gomez.com', 'Albacete', 1159517, 'RRHH', '2023-02-22');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Candelas', 'Fiol', 'cervantesaranzazu@huguet.com', 'Ciudad', 2474826, 'Logística', '2022-02-16');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Miriam', 'Barco', 'pepe05@bas.es', 'Granada', 1197328, 'Ventas', '2023-03-24');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Amarilis', 'Mas', 'jessicaperalta@yahoo.com', 'Guadalajara', 999667, 'Finanzas', '2023-09-28');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Sarita', 'Moliner', 'gustavoisern@fajardo.es', 'Valencia', 1831434, 'Finanzas', '2021-03-09');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Elvira', 'Jódar', 'blas36@gmail.com', 'Segovia', 1408525, 'TI', '2024-02-11');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Selena', 'Agudo', 'fabiolagamez@gmail.com', 'Navarra', 1279476, 'Finanzas', '2023-10-11');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Eufemia', 'Noguera', 'murillonidia@machado-araujo.com', 'Girona', 1261774, 'TI', '2025-06-29');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('René', 'Soler', 'andres-felipe69@gmail.com', 'Burgos', 2278454, 'TI', '2023-12-07');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Irene', 'Garmendia', 'boixmaria-dolores@cervera-marti.com', 'Girona', 1150715, 'TI', '2023-12-20');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Juan Pablo', 'Valentín', 'ramonaalcaraz@barrio.com', 'Jaén', 355077, 'Finanzas', '2022-01-01');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Eligia', 'Galindo', 'hectoraznar@yahoo.com', 'Toledo', 920327, 'Ventas', '2022-02-15');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Sigfrido', 'Tapia', 'quiquellanos@yahoo.com', 'La Rioja', 1034132, 'RRHH', '2022-08-06');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Esperanza', 'Castañeda', 'zcerezo@yahoo.com', 'Cáceres', 1229249, 'RRHH', '2022-11-23');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Godofredo', 'Paz', 'albertohaydee@portero.com', 'Huesca', 1466095, 'Logística', '2023-06-26');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Carmen', 'Sacristán', 'piatejero@gmail.com', 'Burgos', 1388905, 'TI', '2023-01-23');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Américo', 'Tamarit', 'alfredo36@hotmail.com', 'Zamora', 1648545, 'TI', '2025-05-22');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Claudia', 'Palmer', 'lfalcon@gmail.com', 'Guipúzcoa', 589364, 'RRHH', '2024-01-13');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Danilo', 'Enríquez', 'escobarhugo@gmail.com', 'Soria', 1262974, 'RRHH', '2021-02-09');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Flor', 'Salgado', 'reguloalmeida@busquets.net', 'Melilla', 1126499, 'Finanzas', '2022-12-07');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Martin', 'Busquets', 'carlaguillen@santos-ayllon.es', 'Córdoba', 1779627, 'RRHH', '2022-02-28');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Cloe', 'Vilar', 'falbero@yahoo.com', 'Badajoz', 1656916, 'TI', '2023-10-10');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Jenny', 'Cornejo', 'wroca@herrero.es', 'Cáceres', 868478, 'Logística', '2025-07-04');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Iker', 'Echeverría', 'npascual@peinado-tormo.es', 'Cáceres', 720076, 'TI', '2022-07-23');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Priscila', 'Cepeda', 'rosalia33@gmail.com', 'Ávila', 991772, 'Logística', '2022-10-16');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Pablo', 'Ángel', 'oballesteros@luque.com', 'Teruel', 1378602, 'Finanzas', '2021-02-14');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Anastasia', 'Fiol', 'sastreleonor@tudela-villalba.es', 'Ávila', 626802, 'Logística', '2021-06-22');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Bruno', 'Maestre', 'smata@ferrandez.es', 'Sevilla', 2467616, 'Finanzas', '2022-07-03');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Casandra', 'Prado', 'olegariobarral@yahoo.com', 'Castellón', 345732, 'Marketing', '2020-10-19');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Marciano', 'Martin', 'yagocasanovas@llobet-pellicer.es', 'Guipúzcoa', 2142473, 'Logística', '2023-11-11');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Cayetano', 'Ramos', 'rosalindagargallo@murcia-corbacho.net', 'Vizcaya', 1950835, 'Ventas', '2022-10-29');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Nacho', 'Menéndez', 'alfredoenriquez@suarez.com', 'Huesca', 634978, 'RRHH', '2025-02-09');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('José Antonio', 'Moraleda', 'angel89@yahoo.com', 'Zamora', 720797, 'Finanzas', '2025-07-02');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Ernesto', 'Marco', 'llorenscarmen@yahoo.com', 'Sevilla', 2158965, 'Logística', '2025-07-03');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Morena', 'Riera', 'anastasiasolsona@anglada.net', 'Guadalajara', 1088573, 'Ventas', '2022-12-20');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Fermín', 'Jordá', 'ximenaalberto@canete.es', 'Zaragoza', 2128035, 'Marketing', '2020-10-23');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Ramona', 'Ramos', 'nievesburgos@sosa-aliaga.com', 'Lleida', 439904, 'Finanzas', '2024-11-29');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Anunciación', 'Benavides', 'sarroyo@marin.com', 'Toledo', 937379, 'Logística', '2023-10-13');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Eutropio', 'Granados', 'valeriaferrandiz@vidal.org', 'Huelva', 356370, 'RRHH', '2021-01-14');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Concepción', 'Alvarado', 'santosbarbero@alemany-cortes.com', 'Guipúzcoa', 1083913, 'Ventas', '2024-06-10');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Feliciano', 'Arteaga', 'maricruzsales@yahoo.com', 'Ourense', 2251514, 'Finanzas', '2025-01-29');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Óscar', 'Vergara', 'lladoobdulia@gmail.com', 'La Coruña', 1786534, 'Logística', '2021-08-16');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Tomasa', 'Morcillo', 'torrentsagueda@pintor-castellanos.org', 'Baleares', 1283420, 'Ventas', '2021-12-17');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Lucho', 'Morales', 'obas@olive.es', 'Lugo', 1767525, 'Marketing', '2023-06-04');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Mauricio', 'Diaz', 'inesraya@puig.org', 'Granada', 712248, 'TI', '2023-04-10');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Piedad', 'Leiva', 'lbarrios@escolano.es', 'La Rioja', 1368000, 'Marketing', '2024-04-08');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Juan Antonio', 'Palau', 'requenatamara@salazar.com', 'Santa Cruz de Tenerife', 1199254, 'TI', '2023-06-16');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Víctor', 'Rosales', 'kquintanilla@hotmail.com', 'Huelva', 2306976, 'Logística', '2025-06-28');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Rosalva', 'Cases', 'felix33@yahoo.com', 'Álava', 2234051, 'TI', '2022-03-08');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Eulalia', 'Nuñez', 'cecilio87@yanez.net', 'Huesca', 1173539, 'Ventas', '2021-09-17');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Eustaquio', 'Sierra', 'fcardona@rivas.org', 'Guadalajara', 1447138, 'Marketing', '2021-09-08');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Ismael', 'Goicoechea', 'timoteo40@yahoo.com', 'Las Palmas', 2108892, 'RRHH', '2023-10-06');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Isidoro', 'Marcos', 'gema98@hotmail.com', 'Málaga', 1019178, 'TI', '2023-02-09');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Manu', 'Cifuentes', 'lvargas@valverde.es', 'Huelva', 1477271, 'Marketing', '2025-06-14');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Gabriela', 'Osorio', 'mercaderalbina@sanmartin.es', 'Valladolid', 2089683, 'Finanzas', '2024-03-14');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Carlito', 'Villalba', 'feliumacario@mir.es', 'Cádiz', 728751, 'Logística', '2025-05-08');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Chucho', 'Clemente', 'florina04@hotmail.com', 'Lleida', 909559, 'Finanzas', '2022-08-29');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Alfonso', 'Peña', 'giselaherrero@roura.es', 'Ourense', 716095, 'Finanzas', '2020-09-21');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Florinda', 'Arjona', 'fnieto@pages.net', 'Segovia', 1553944, 'Marketing', '2021-06-23');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Celso', 'Crespo', 'nebotelvira@ribas-cervera.com', 'La Rioja', 390409, 'Finanzas', '2022-05-31');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('María Manuela', 'Gabaldón', 'virgilioyanez@isern-torres.org', 'Lugo', 1944867, 'RRHH', '2021-10-06');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Dora', 'Lasa', 'palomarruben@gmail.com', 'Cádiz', 1421324, 'TI', '2024-12-27');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Cruz', 'Sanmartín', 'ngalindo@clemente-pedrosa.com', 'Jaén', 2146829, 'Finanzas', '2025-06-26');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Octavio', 'Bonilla', 'madrigaladela@ballesteros.es', 'Asturias', 1261339, 'Ventas', '2024-10-11');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Rodolfo', 'Borrás', 'ygranados@canellas-villegas.com', 'Jaén', 2332627, 'Logística', '2022-03-29');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Segismundo', 'Martorell', 'mfajardo@yahoo.com', 'Ourense', 568859, 'RRHH', '2023-03-28');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Trinidad', 'Aranda', 'rubenllobet@yahoo.com', 'Pontevedra', 1842636, 'TI', '2024-11-19');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Epifanio', 'Mateu', 'jeronimosalmeron@gmail.com', 'Guipúzcoa', 1892793, 'Ventas', '2020-12-31');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Erasmo', 'Aguirre', 'alfarocintia@bravo.com', 'Burgos', 1805166, 'Finanzas', '2023-07-05');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Lisandro', 'Tejera', 'panchoesteve@hotmail.com', 'Ceuta', 2303073, 'Logística', '2021-10-06');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Patricia', 'Palomares', 'tomaselpidio@marin-daza.org', 'Córdoba', 2478491, 'RRHH', '2024-02-13');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Jerónimo', 'Sanmartín', 'cletodelgado@yahoo.com', 'Las Palmas', 2176872, 'Marketing', '2020-10-15');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Jordi', 'Mena', 'sabinaalamo@lobo-patino.com', 'Teruel', 774103, 'RRHH', '2021-06-19');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Andrés Felipe', 'Ponce', 'tereferreras@jara-duran.net', 'Albacete', 838685, 'RRHH', '2023-07-11');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Benigno', 'Mendizábal', 'gaston99@flor-castejon.es', 'Ourense', 1523652, 'Finanzas', '2024-06-27');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Rosalinda', 'Osuna', 'kgomez@marmol.com', 'Alicante', 2135590, 'RRHH', '2021-05-09');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Herminia', 'Batlle', 'prodriguez@tejero.es', 'Lugo', 1028943, 'TI', '2024-02-04');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Aurelia', 'Baeza', 'titosegura@feliu-sanz.com', 'Santa Cruz de Tenerife', 1314340, 'Logística', '2025-03-03');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Reina', 'Aguilera', 'ucasado@gmail.com', 'Burgos', 679230, 'Ventas', '2021-02-28');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Santos', 'Pizarro', 'monrealflorentina@alsina-arranz.es', 'Guadalajara', 1353239, 'Finanzas', '2021-06-11');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Severiano', 'Nadal', 'galvannoe@gmail.com', 'Lleida', 649774, 'TI', '2025-05-19');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Ernesto', 'Adadia', 'aroig@yahoo.com', 'La Rioja', 1008220, 'Marketing', '2021-08-28');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Juan Carlos', 'Arnau', 'nogueirajoaquin@atienza-calzada.org', 'Álava', 871884, 'Ventas', '2024-07-09');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Javi', 'Cerdán', 'carmelasalazar@gmail.com', 'Alicante', 2411820, 'Ventas', '2024-02-04');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Herminio', 'Almansa', 'candelaria90@hotmail.com', 'Barcelona', 1139815, 'TI', '2020-12-06');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Adelardo', 'Landa', 'anayaaureliano@yahoo.com', 'Las Palmas', 902652, 'Finanzas', '2021-02-21');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Carlos', 'Saldaña', 'cesarsanchez@yahoo.com', 'Tarragona', 1228590, 'RRHH', '2025-04-10');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Íñigo', 'Amigó', 'gonitatiana@yahoo.com', 'Salamanca', 2011941, 'RRHH', '2020-11-25');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Ágata', 'Fuentes', 'noguerablanca@coca.es', 'Almería', 2310148, 'Marketing', '2021-04-16');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Rosaura', 'Valverde', 'acarmona@molins-redondo.net', 'Granada', 1196773, 'Ventas', '2020-08-20');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Emiliano', 'Ferrández', 'pacifica43@hotmail.com', 'La Coruña', 428728, 'Logística', '2020-12-27');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Amado', 'Leal', 'gutierrezsamuel@santiago-colomer.org', 'Cantabria', 772058, 'Marketing', '2024-06-25');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Inocencio', 'Barroso', 'jmacias@gmail.com', 'Burgos', 1214450, 'RRHH', '2021-05-26');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Rosario', 'Arana', 'torrecillaeulalia@hotmail.com', 'Almería', 1102602, 'Logística', '2022-11-26');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Isaura', 'Puga', 'falconjuan-francisco@yahoo.com', 'La Coruña', 2253058, 'Finanzas', '2022-04-27');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Cecilio', 'Cantón', 'cesarheras@gmail.com', 'Cádiz', 1262613, 'RRHH', '2024-05-25');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Manu', 'Silva', 'almeidajose-manuel@bosch.net', 'Santa Cruz de Tenerife', 2348542, 'Marketing', '2021-06-07');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Jeremías', 'Cantón', 'leocadio30@mateu.org', 'Guadalajara', 1137235, 'Finanzas', '2021-07-22');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Eligia', 'Roca', 'inocenciopuig@marino.net', 'Navarra', 676676, 'Ventas', '2024-04-03');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Sol', 'Alfonso', 'carminasans@hotmail.com', 'Huesca', 987612, 'TI', '2024-10-30');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Mariano', 'Gelabert', 'bchaves@yahoo.com', 'Toledo', 1534191, 'Ventas', '2022-01-23');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Estela', 'Moreno', 'buenaventura62@gmail.com', 'Teruel', 969010, 'Marketing', '2021-05-14');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Alicia', 'Carvajal', 'eulalia94@pazos-hoyos.es', 'Segovia', 1206778, 'RRHH', '2022-05-12');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Adelardo', 'Ramis', 'irene58@arino-castilla.com', 'Sevilla', 2344567, 'Finanzas', '2022-06-10');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Eric', 'Prado', 'madridlorenzo@donaire.com', 'Ciudad', 1897228, 'Ventas', '2025-07-30');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Alonso', 'Niño', 'xpont@escamilla-casal.com', 'Murcia', 1226552, 'RRHH', '2023-11-25');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Rosa', 'Giralt', 'gisbertsegismundo@gmail.com', 'Valladolid', 1581340, 'Ventas', '2023-09-03');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Ruy', 'Asensio', 'rpedraza@arnau-palomino.com', 'Guadalajara', 544919, 'Marketing', '2024-04-25');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Silvia', 'Herrera', 'bernardino60@gmail.com', 'Castellón', 1891464, 'Logística', '2024-10-07');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Ruperto', 'Olmedo', 'jodargoyo@martinez.net', 'Lleida', 1282075, 'Ventas', '2021-02-20');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Gilberto', 'Cámara', 'vsantana@baron.es', 'Jaén', 1604539, 'Marketing', '2024-07-04');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Lucas', 'Tenorio', 'chita12@gmail.com', 'Burgos', 1170113, 'Ventas', '2025-05-22');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Marcial', 'Ortiz', 'silvia90@ferran.es', 'Lleida', 1002296, 'TI', '2022-02-05');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Gloria', 'Lopez', 'pia29@garcia.es', 'La Rioja', 1412543, 'Marketing', '2023-07-09');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Baltasar', 'Barón', 'amosquera@ramirez.com', 'Girona', 590157, 'RRHH', '2024-12-28');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Ruben', 'Iñiguez', 'joaquin61@gmail.com', 'Murcia', 866905, 'Logística', '2022-11-21');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Benigna', 'Campo', 'benigna05@gmail.com', 'Pontevedra', 1503824, 'Finanzas', '2023-07-16');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Rubén', 'Manso', 'guadalupe63@yahoo.com', 'Granada', 642221, 'Logística', '2025-02-19');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Epifanio', 'Diéguez', 'isales@acosta.es', 'León', 1935584, 'Logística', '2021-06-30');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Aránzazu', 'Godoy', 'rupertasola@taboada.es', 'Barcelona', 687144, 'RRHH', '2022-07-06');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Maximino', 'Criado', 'mosquerainmaculada@yahoo.com', 'Asturias', 1985416, 'Logística', '2022-12-29');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Eutropio', 'Campillo', 'bellidoadriana@simo.com', 'Jaén', 1878851, 'Logística', '2024-06-12');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Rosalía', 'Gelabert', 'eutimioblanco@otero.com', 'Almería', 1722673, 'Ventas', '2023-02-20');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Ildefonso', 'Abril', 'lucilagiralt@yahoo.com', 'Valencia', 1536660, 'Ventas', '2023-05-24');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Diego', 'Viña', 'pascualbautista@hotmail.com', 'Zamora', 2114665, 'Ventas', '2023-07-05');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Erasmo', 'Benavent', 'gallarthernando@plana-torrens.es', 'Albacete', 1010213, 'Logística', '2022-11-24');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Teodosio', 'Castrillo', 'diana21@gmail.com', 'Asturias', 783721, 'Finanzas', '2022-08-01');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Pastora', 'Sevillano', 'marquezcorona@yahoo.com', 'Zamora', 2191245, 'TI', '2023-05-07');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Melania', 'Garmendia', 'pparra@hotmail.com', 'Guipúzcoa', 1373414, 'Finanzas', '2022-12-23');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Alejandro', 'Miró', 'eusebio45@yahoo.com', 'Valladolid', 1064241, 'Logística', '2024-05-24');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('José Luis', 'Tejera', 'zmiralles@berenguer.com', 'Salamanca', 1010834, 'Marketing', '2024-01-13');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Eligio', 'Peña', 'andresantonio@bonilla-marti.es', 'Guipúzcoa', 1024275, 'Ventas', '2022-07-05');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Carina', 'Puig', 'franciscafuentes@yahoo.com', 'Segovia', 2231445, 'Marketing', '2023-03-01');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Domitila', 'Salcedo', 'natividad90@yahoo.com', 'Córdoba', 874786, 'Marketing', '2021-04-26');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Miriam', 'Gomis', 'paniaguaruben@clavero.es', 'Cádiz', 2414004, 'Marketing', '2021-11-13');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Luis Ángel', 'Coll', 'etelvinamuro@hotmail.com', 'Pontevedra', 2333854, 'Finanzas', '2024-11-26');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Ema', 'Girón', 'galvaro@blanca-bilbao.com', 'Badajoz', 1147007, 'TI', '2021-02-16');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Ignacia', 'Baeza', 'ericgodoy@garmendia.com', 'Guadalajara', 2493719, 'Ventas', '2023-03-06');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Herminio', 'Giralt', 'felipa37@bermudez.net', 'Sevilla', 542373, 'Ventas', '2024-05-13');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Conrado', 'Casado', 'amandataboada@zamorano-gimenez.com', 'Huesca', 1027061, 'Marketing', '2022-03-10');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Marcos', 'Toledo', 'mborras@alegria-aguilar.es', 'Ávila', 1614876, 'Marketing', '2024-03-13');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('René', 'Solsona', 'luquemaria-del-carmen@yahoo.com', 'Palencia', 1696410, 'TI', '2021-11-12');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Carolina', 'Isern', 'salamancadario@pina.com', 'Teruel', 1192230, 'TI', '2022-10-29');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Primitivo', 'Martin', 'dariogimenez@yahoo.com', 'Toledo', 2400397, 'RRHH', '2023-01-29');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Selena', 'Palomares', 'genovevagomez@hotmail.com', 'Málaga', 1752534, 'Finanzas', '2022-02-01');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Cristian', 'Borrego', 'marcelino76@espejo.com', 'Jaén', 714039, 'Finanzas', '2020-08-10');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Ana Belén', 'Carnero', 'zsanmartin@yahoo.com', 'Huelva', 1090871, 'Marketing', '2021-10-27');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Aurelio', 'Canet', 'gorozco@gmail.com', 'Córdoba', 693529, 'TI', '2020-12-23');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Adriana', 'Llopis', 'alberovirginia@yahoo.com', 'Jaén', 1956926, 'Logística', '2024-12-10');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Marco', 'Roma', 'ainoa62@yahoo.com', 'Girona', 1415373, 'Ventas', '2021-09-23');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Georgina', 'Sosa', 'pacollobet@bermudez-diez.org', 'Toledo', 925423, 'RRHH', '2023-08-26');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Dora', 'Salamanca', 'gosorio@yahoo.com', 'Córdoba', 1203981, 'Finanzas', '2024-01-04');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Maura', 'Lasa', 'maxima47@gmail.com', 'La Coruña', 393438, 'Ventas', '2024-07-07');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Blanca', 'Ojeda', 'efalco@hotmail.com', 'Tarragona', 2220421, 'Marketing', '2022-04-23');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Eli', 'Ferrán', 'qcervera@tapia.com', 'Cantabria', 1974413, 'RRHH', '2022-03-14');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Isabela', 'Malo', 'bgonzalez@salva-berrocal.org', 'Huesca', 2255892, 'Finanzas', '2023-01-03');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Berto', 'Real', 'bbenitez@baro.com', 'Asturias', 2117011, 'Ventas', '2020-09-29');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Amor', 'Céspedes', 'vpou@duran.org', 'Soria', 2032526, 'RRHH', '2025-06-05');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Eugenia', 'Fonseca', 'jose-luis73@gmail.com', 'Soria', 544655, 'Marketing', '2024-12-05');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Gracia', 'Viña', 'modestaalberto@gmail.com', 'Las Palmas', 2102051, 'TI', '2024-11-22');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Daniela', 'Bejarano', 'hortuno@hotmail.com', 'Barcelona', 1889740, 'Logística', '2023-02-22');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Jesusa', 'Villalonga', 'rodriguezalexandra@gmail.com', 'Las Palmas', 1870944, 'Ventas', '2022-02-28');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Carmela', 'Castillo', 'lealadriana@yahoo.com', 'Guipúzcoa', 803117, 'Ventas', '2024-02-16');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Zacarías', 'Guerrero', 'talfaro@yahoo.com', 'Pontevedra', 1979995, 'Finanzas', '2025-01-26');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Elisa', 'Ramos', 'jennifer49@lloret-farre.com', 'Almería', 1026077, 'Finanzas', '2021-02-04');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Cruz', 'Conde', 'losasantiago@tejedor-uriarte.com', 'Cantabria', 342643, 'TI', '2024-04-04');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Rolando', 'Carreño', 'juan-carlosbermudez@bru.net', 'Pontevedra', 1467601, 'Logística', '2025-03-17');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Cecilia', 'Ferrández', 'uolivera@gmail.com', 'Valladolid', 2430647, 'Ventas', '2023-08-01');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Dolores', 'Giralt', 'duranemiliano@hotmail.com', 'León', 808143, 'RRHH', '2020-12-09');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Natalia', 'Ojeda', 'viviana66@alvarez.com', 'Baleares', 1219928, 'Ventas', '2024-05-10');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Bernabé', 'Feijoo', 'cmorillo@gmail.com', 'Valencia', 1263234, 'RRHH', '2023-01-24');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Teodora', 'Nicolás', 'rafaelasoler@peinado.com', 'Guadalajara', 1710474, 'Logística', '2024-11-02');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Lucio', 'Oliva', 'olimpiaalfonso@gmail.com', 'Ávila', 1468010, 'TI', '2024-04-15');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Amanda', 'Rios', 'clarisaarnau@fajardo-corominas.es', 'Pontevedra', 585009, 'RRHH', '2021-04-16');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Francisco Javier', 'Castells', 'lupe28@hotmail.com', 'Toledo', 1944851, 'Ventas', '2024-12-25');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Lalo', 'Ayllón', 'escalonaarturo@ayllon.es', 'Asturias', 761379, 'Finanzas', '2021-06-28');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Felipa', 'Padilla', 'agudoanita@aguado-bermudez.es', 'Salamanca', 752628, 'TI', '2023-10-13');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Kike', 'Artigas', 'delgadonacio@valle.com', 'Valencia', 1786816, 'Ventas', '2020-12-17');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Heriberto', 'Sáenz', 'tristan28@gmail.com', 'Segovia', 1558625, 'Finanzas', '2020-09-15');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Adán', 'Moraleda', 'gisbertgraciela@garces.org', 'Tarragona', 2484112, 'Ventas', '2025-04-01');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Juana', 'Benet', 'pepe04@yahoo.com', 'Las Palmas', 328692, 'Marketing', '2022-04-18');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Américo', 'Cuéllar', 'bernardo25@hotmail.com', 'Tarragona', 1833007, 'Marketing', '2020-11-09');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Regina', 'Plaza', 'vicentedionisia@aragones-pomares.com', 'León', 1271076, 'TI', '2020-10-20');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Azucena', 'Aller', 'ribassalome@yahoo.com', 'Pontevedra', 455732, 'Ventas', '2021-11-29');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Fernanda', 'Pablo', 'gloria92@quevedo.com', 'Navarra', 709297, 'Marketing', '2023-01-20');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Nieves', 'Andres', 'porfirioalvaro@hierro.es', 'Cáceres', 2122814, 'Ventas', '2022-08-24');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Domitila', 'Palomares', 'rfeliu@pedrosa.es', 'Ceuta', 2049423, 'Ventas', '2022-08-31');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Roque', 'Clemente', 'prudencia70@real.com', 'Segovia', 2239184, 'TI', '2023-03-03');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Maura', 'Mesa', 'mmateos@nieto.net', 'Valencia', 1457055, 'RRHH', '2025-02-25');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Mamen', 'Lumbreras', 'benjamin54@yahoo.com', 'Guadalajara', 1112882, 'Marketing', '2022-04-19');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Jorge', 'Peña', 'tpena@gmail.com', 'Guipúzcoa', 1437191, 'Finanzas', '2021-02-24');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Lara', 'Garzón', 'tejeradimas@angulo-paez.es', 'Baleares', 1271813, 'TI', '2024-09-23');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Rosalina', 'Vives', 'felicianoalfonso@hotmail.com', 'Lleida', 799941, 'Finanzas', '2021-11-28');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Obdulia', 'Redondo', 'mohamed50@hotmail.com', 'Tarragona', 1983951, 'TI', '2023-07-09');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Iker', 'Conde', 'brivas@hotmail.com', 'Granada', 2193959, 'Finanzas', '2024-08-30');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Violeta', 'Ferrando', 'samuprada@chaves.com', 'Cantabria', 1261619, 'RRHH', '2023-03-13');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Dolores', 'Tenorio', 'sigfridoortega@hotmail.com', 'Ciudad', 1816255, 'Logística', '2021-02-14');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Violeta', 'Rico', 'caballerolorenzo@canas.com', 'Álava', 478249, 'Logística', '2022-04-17');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Iker', 'Iglesias', 'kmanjon@escalona.com', 'Baleares', 1735595, 'Logística', '2024-02-25');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Baltasar', 'Torrens', 'roberta58@hotmail.com', 'Girona', 893925, 'TI', '2022-05-06');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Primitivo', 'Izaguirre', 'iguerrero@yahoo.com', 'Álava', 566139, 'Logística', '2023-06-18');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Lidia', 'Roselló', 'demetrio58@grau.es', 'Albacete', 1199009, 'Marketing', '2023-03-03');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Juan Carlos', 'Vergara', 'mmatas@gmail.com', 'Toledo', 1861679, 'Logística', '2023-02-18');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Dionisio', 'Oliveras', 'lupita55@pla.es', 'Segovia', 1250709, 'Marketing', '2022-05-12');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Pía', 'Álamo', 'barbaapolinar@losada-robledo.com', 'Madrid', 2275509, 'Ventas', '2022-06-16');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Saturnina', 'Donaire', 'marctaboada@yahoo.com', 'Lleida', 576303, 'TI', '2024-06-25');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Laura', 'Pastor', 'irisrios@pinilla.org', 'Córdoba', 1824637, 'Finanzas', '2024-10-26');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Cecilio', 'Peña', 'adrian98@hotmail.com', 'Santa Cruz de Tenerife', 1819869, 'RRHH', '2024-02-17');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Andrea', 'Seco', 'karce@gmail.com', 'La Coruña', 847916, 'Finanzas', '2022-06-21');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Rocío', 'Robles', 'paniaguajavier@manrique.net', 'Guipúzcoa', 2025847, 'Marketing', '2024-09-09');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Chucho', 'Abad', 'dionisiotoro@hotmail.com', 'Ceuta', 539961, 'RRHH', '2025-01-19');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Evaristo', 'Coloma', 'joanadadia@hotmail.com', 'Valencia', 1048248, 'Marketing', '2025-06-24');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Isabel', 'Talavera', 'dllano@yahoo.com', 'La Coruña', 2138585, 'Logística', '2023-06-08');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Marisol', 'Pelayo', 'hectormurcia@valderrama.net', 'Ávila', 1875715, 'TI', '2024-08-24');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Graciela', 'Bravo', 'fidelasalvador@quintero.es', 'Málaga', 944705, 'Marketing', '2022-08-15');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Abel', 'Montalbán', 'sfiol@pedro.com', 'Madrid', 1279348, 'Ventas', '2023-03-13');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Amador', 'Benavent', 'osvaldo95@rodenas.com', 'Las Palmas', 2138001, 'Ventas', '2022-04-22');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Ramón', 'Manuel', 'valerio40@yahoo.com', 'La Rioja', 1392794, 'TI', '2024-10-19');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Amelia', 'Bayo', 'juanabatalla@gmail.com', 'Madrid', 435365, 'Logística', '2022-01-18');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Rocío', 'Diego', 'juliana70@yahoo.com', 'Málaga', 1615629, 'Ventas', '2023-02-10');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Víctor', 'Gimenez', 'qelorza@garrido.es', 'Cantabria', 990834, 'RRHH', '2025-03-03');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Macario', 'Noguera', 'escrivaulises@hotmail.com', 'Soria', 1883303, 'TI', '2024-10-05');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Alondra', 'Nevado', 'pintorale@nadal.es', 'Toledo', 2281133, 'RRHH', '2021-03-16');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Fortunata', 'Gomila', 'rodolfoordonez@yahoo.com', 'Cádiz', 665650, 'Logística', '2021-09-12');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Carlota', 'Vilar', 'lalomarquez@muro.net', 'Santa Cruz de Tenerife', 1877658, 'TI', '2023-06-22');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Aristides', 'Maestre', 'deboraabril@yahoo.com', 'Baleares', 1254153, 'Ventas', '2025-04-18');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Jose', 'Soler', 'vicentecespedes@hotmail.com', 'Melilla', 2095256, 'Logística', '2020-12-29');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Socorro', 'Carbonell', 'marihugo@tomas-miralles.es', 'Melilla', 1041955, 'Logística', '2024-07-31');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('César', 'Piñol', 'virgilio79@canton.com', 'Melilla', 807691, 'Marketing', '2023-02-25');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Ale', 'Cadenas', 'yuriarte@vendrell-rius.net', 'Tarragona', 1375505, 'Marketing', '2022-02-21');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Máxima', 'Sanz', 'alejandraaznar@hotmail.com', 'Asturias', 2214803, 'TI', '2020-08-13');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Curro', 'Andrade', 'mgamez@gmail.com', 'Huelva', 925778, 'Ventas', '2023-08-03');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Emperatriz', 'Echevarría', 'vinasfortunata@gmail.com', 'Tarragona', 2204470, 'Logística', '2024-06-12');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Evita', 'Aznar', 'lorena61@barrios.es', 'La Rioja', 2361498, 'Logística', '2024-05-18');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Baltasar', 'Echevarría', 'acevedochelo@gmail.com', 'Navarra', 1112873, 'TI', '2024-05-16');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Cristian', 'Benavent', 'jcanton@hotmail.com', 'Ceuta', 2226571, 'Finanzas', '2023-06-07');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Graciela', 'Vives', 'olledo@gmail.com', 'Segovia', 1439148, 'Logística', '2022-10-21');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Alondra', 'Azcona', 'vilaltabernabe@campo.es', 'Zamora', 1496663, 'Finanzas', '2023-09-29');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Carmela', 'Peralta', 'diegolucas@serra.com', 'Sevilla', 400925, 'TI', '2021-09-16');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Marcelino', 'Suarez', 'maldonadojimena@corral.es', 'Cáceres', 350684, 'Finanzas', '2022-06-06');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Vidal', 'Álvaro', 'eredondo@gmail.com', 'Asturias', 2277589, 'Ventas', '2024-09-23');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Bárbara', 'Juliá', 'edmundorosell@morata-priego.com', 'Guipúzcoa', 910204, 'RRHH', '2025-01-06');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Julie', 'Tamayo', 'vvillaverde@gmail.com', 'Guipúzcoa', 539702, 'TI', '2022-09-05');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Eusebia', 'Alfaro', 'wespada@valdes.es', 'Málaga', 690717, 'Marketing', '2023-01-14');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Paola', 'Agustín', 'carloseusebio@bru.com', 'Barcelona', 1247818, 'Finanzas', '2023-04-21');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Samanta', 'Córdoba', 'calistovillalba@otero.es', 'Cádiz', 2227805, 'RRHH', '2023-07-04');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Lorenza', 'Madrid', 'dvalencia@bauza.es', 'Tarragona', 1141650, 'RRHH', '2021-12-26');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Ana', 'Simó', 'salome23@yahoo.com', 'Burgos', 2126494, 'Marketing', '2024-09-19');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Guiomar', 'Bellido', 'candelas69@yahoo.com', 'Navarra', 1303899, 'Logística', '2024-04-05');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Roque', 'Tello', 'obaron@segura-rocha.es', 'Alicante', 430631, 'Marketing', '2025-07-02');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Felicidad', 'Rincón', 'vbenitez@juan-pi.com', 'Tarragona', 2168244, 'Marketing', '2023-08-11');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Guadalupe', 'Alvarez', 'fjimenez@gmail.com', 'Murcia', 870241, 'Marketing', '2024-07-31');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Petrona', 'Gomez', 'mcorbacho@gmail.com', 'Segovia', 2023069, 'Marketing', '2023-03-23');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Soledad', 'Cano', 'palmira81@hotmail.com', 'Cantabria', 1016057, 'Logística', '2024-03-01');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Juan Pablo', 'Olivares', 'cristobal96@hotmail.com', 'Salamanca', 2064448, 'Logística', '2025-04-19');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Primitivo', 'Frías', 'fontroxana@yahoo.com', 'Valladolid', 910812, 'Ventas', '2021-03-06');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Ileana', 'Carretero', 'irene62@hotmail.com', 'Málaga', 1235082, 'Finanzas', '2021-03-15');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Úrsula', 'Arroyo', 'eugenio99@yahoo.com', 'Sevilla', 931354, 'Finanzas', '2021-04-09');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Edmundo', 'Coello', 'canoheraclio@gmail.com', 'Cádiz', 2478458, 'Ventas', '2022-03-31');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Maricruz', 'Montaña', 'agaray@peiro.org', 'Alicante', 983269, 'RRHH', '2022-04-30');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('María José', 'Menéndez', 'emelinaleiva@hotmail.com', 'Salamanca', 766196, 'RRHH', '2024-07-06');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Manu', 'Duarte', 'mferrandez@pina-calatayud.com', 'Álava', 1387281, 'Logística', '2022-12-06');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Teresita', 'Palmer', 'pgallart@gmail.com', 'Soria', 1259242, 'TI', '2024-12-30');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Eduardo', 'Elías', 'rinconbeatriz@pomares.es', 'Albacete', 2056661, 'Finanzas', '2022-02-10');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Angelino', 'Cordero', 'emilianovillanueva@gmail.com', 'Girona', 1181698, 'Marketing', '2024-07-07');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Xiomara', 'Vaquero', 'ricopetrona@gallart.net', 'Segovia', 1495863, 'TI', '2022-02-20');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Artemio', 'Suarez', 'marcos33@espana.com', 'Almería', 1903144, 'RRHH', '2023-08-25');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Alejandro', 'Espada', 'evitacabeza@miralles.com', 'Ávila', 2311090, 'Logística', '2021-10-04');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Gregorio', 'Arnau', 'hgascon@barrios.es', 'La Rioja', 1061779, 'Finanzas', '2022-12-17');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Emperatriz', 'Tejada', 'pratsdario@hotmail.com', 'La Rioja', 575184, 'Ventas', '2023-11-24');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Fortunata', 'Belmonte', 'ngarcia@yahoo.com', 'Girona', 1927637, 'TI', '2023-08-08');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Mariana', 'Nevado', 'acerosocorro@sarabia.com', 'Badajoz', 1611808, 'Ventas', '2024-04-08');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Rosario', 'Carrillo', 'aitana83@guillen-company.com', 'Murcia', 488029, 'Ventas', '2021-02-14');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Rubén', 'Busquets', 'ale87@diez-alba.es', 'Burgos', 759306, 'Ventas', '2023-02-27');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Ricardo', 'Suarez', 'maria-cristinacid@maestre-sarmiento.com', 'Murcia', 1932415, 'Finanzas', '2021-06-30');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Jennifer', 'Falcón', 'gimenocustodio@pons.net', 'Santa Cruz de Tenerife', 593731, 'Ventas', '2024-03-16');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Marciano', 'Pedraza', 'pepito67@echeverria-fiol.es', 'Córdoba', 1151798, 'Ventas', '2021-07-31');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Andrea', 'Marin', 'palaugustavo@yahoo.com', 'Huelva', 1665954, 'RRHH', '2024-02-26');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Asdrubal', 'Sobrino', 'joaquinaberrocal@yahoo.com', 'Ciudad', 1847993, 'RRHH', '2021-01-19');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Íñigo', 'Berenguer', 'barrosojessica@mendizabal-nevado.es', 'Baleares', 1156918, 'RRHH', '2021-10-29');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Jenny', 'Espada', 'umayol@pera-elias.net', 'Valladolid', 1674834, 'Logística', '2025-03-29');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Jerónimo', 'Chico', 'martinaolivares@hotmail.com', 'Vizcaya', 2382097, 'Logística', '2020-10-22');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Valentín', 'Fábregas', 'leandrauriarte@sedano.es', 'Valencia', 867975, 'RRHH', '2020-09-24');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Carina', 'Vallés', 'rvelez@hotmail.com', 'Navarra', 1259376, 'TI', '2023-05-28');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Eugenio', 'Rodrigo', 'cantonnerea@yahoo.com', 'La Coruña', 969478, 'Finanzas', '2021-10-29');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Federico', 'Noguera', 'cmontserrat@gmail.com', 'Málaga', 1332979, 'RRHH', '2025-03-04');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Arturo', 'Noriega', 'marcelaplana@duarte-grande.es', 'Zaragoza', 434207, 'Ventas', '2023-01-13');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Eloy', 'Adán', 'pedreroprudencio@gmail.com', 'Salamanca', 951085, 'RRHH', '2024-03-10');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Chus', 'Hervás', 'pelayocadenas@gmail.com', 'Málaga', 1270157, 'Logística', '2023-08-12');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Margarita', 'Rius', 'planashector@acosta.es', 'Ciudad', 1544341, 'Marketing', '2021-10-01');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Josué', 'Andrés', 'telmobarros@guzman.com', 'Cáceres', 1592275, 'TI', '2021-06-13');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Ulises', 'Araujo', 'bmarin@roda.es', 'Guadalajara', 1539659, 'Ventas', '2024-09-27');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Herminia', 'Plaza', 'samanta80@sandoval-boix.com', 'La Rioja', 971413, 'Ventas', '2023-11-04');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Ximena', 'Llorens', 'tono21@yahoo.com', 'Guipúzcoa', 1232686, 'Logística', '2025-03-28');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Pío', 'Vázquez', 'almagroangeles@hotmail.com', 'Cáceres', 948552, 'Logística', '2023-07-21');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Carina', 'Figuerola', 'anamir@nebot.net', 'Valencia', 801603, 'TI', '2024-10-24');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Anacleto', 'Bru', 'molinsgoyo@arellano-urena.com', 'Valladolid', 1684793, 'Ventas', '2021-03-14');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Édgar', 'Jaume', 'lalcantara@gmail.com', 'Guipúzcoa', 1956263, 'TI', '2022-03-12');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Cirino', 'Tenorio', 'fpinedo@recio.com', 'Palencia', 829975, 'Ventas', '2024-08-10');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Patricio', 'Cortés', 'cuetonatalia@hotmail.com', 'Zaragoza', 1450528, 'Logística', '2024-11-03');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Serafina', 'Morante', 'elianaandres@yahoo.com', 'Guadalajara', 1163669, 'RRHH', '2021-09-30');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Feliciano', 'Miguel', 'paca84@gmail.com', 'Barcelona', 591561, 'Logística', '2025-01-01');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Vito', 'Cañellas', 'amalia97@hotmail.com', 'Girona', 2430899, 'Finanzas', '2025-03-04');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Emiliano', 'Pinto', 'teocervera@hotmail.com', 'Barcelona', 1604345, 'TI', '2023-09-14');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Tere', 'Almazán', 'eusebia08@gonzalo.com', 'Sevilla', 1891022, 'Logística', '2021-02-11');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Agustín', 'Ferrero', 'jcarreno@hotmail.com', 'Lugo', 491804, 'Ventas', '2025-05-10');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Fortunata', 'Jordán', 'dgranados@yahoo.com', 'Guipúzcoa', 2490224, 'TI', '2025-06-06');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Alma', 'Zamora', 'ulises33@hotmail.com', 'Granada', 1208788, 'RRHH', '2022-07-05');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Jose Luis', 'Ferrera', 'fabio26@cordoba.com', 'Tarragona', 2194583, 'RRHH', '2022-10-29');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Lupe', 'Becerra', 'eisern@yahoo.com', 'Santa Cruz de Tenerife', 497004, 'TI', '2023-04-18');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Anselma', 'Saavedra', 'imillan@gimeno.net', 'Málaga', 1090167, 'Finanzas', '2020-12-15');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Juanito', 'Torrens', 'luisleiva@quesada.org', 'Santa Cruz de Tenerife', 1275552, 'Finanzas', '2021-12-31');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Imelda', 'Montenegro', 'fermin73@gmail.com', 'Guipúzcoa', 484800, 'TI', '2023-10-09');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Sandra', 'Montenegro', 'olivanatalia@gmail.com', 'León', 2388904, 'Marketing', '2024-08-06');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Anastasio', 'Escamilla', 'tzabala@santamaria.com', 'Ourense', 2127907, 'TI', '2021-11-25');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Ariel', 'Ruiz', 'zoraidavaquero@gmail.com', 'Valladolid', 1816312, 'Ventas', '2023-11-30');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Lucila', 'González', 'nacioblazquez@zamorano.org', 'Almería', 523211, 'Marketing', '2020-08-27');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Calista', 'Chacón', 'nmendoza@hotmail.com', 'Cuenca', 751586, 'RRHH', '2022-03-12');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Cesar', 'Peralta', 'ferrandoamancio@yahoo.com', 'Soria', 2263898, 'RRHH', '2020-10-05');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Jacinta', 'Morales', 'quevedojose-luis@moliner.net', 'Navarra', 2108061, 'TI', '2024-09-26');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Renato', 'Capdevila', 'xribera@hotmail.com', 'Soria', 1685358, 'Ventas', '2024-03-04');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Amor', 'Montero', 'xpont@montero.com', 'Las Palmas', 392140, 'Marketing', '2021-02-16');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Dulce', 'Barba', 'elbaharo@sanmartin.es', 'Huesca', 511614, 'Logística', '2023-05-22');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Vera', 'Solano', 'barreraazahar@yahoo.com', 'Lleida', 1408554, 'Logística', '2024-01-31');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Urbano', 'Trillo', 'atienzaalejandro@hotmail.com', 'Álava', 664463, 'Logística', '2023-12-15');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Yaiza', 'Peña', 'alonsovelasco@gmail.com', 'Guipúzcoa', 2495443, 'Logística', '2022-10-14');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Rico', 'Segarra', 'tere26@roman.org', 'Zamora', 1640896, 'TI', '2022-10-12');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Jesús', 'Armas', 'dnovoa@gmail.com', 'Zaragoza', 1357758, 'TI', '2024-01-28');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('María Teresa', 'Martin', 'alejandra62@yahoo.com', 'Ourense', 1758354, 'RRHH', '2022-10-24');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Feliciano', 'Solsona', 'clara03@carballo.es', 'Segovia', 980297, 'RRHH', '2023-01-18');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Mario', 'Calzada', 'jafet36@hotmail.com', 'Zaragoza', 1199115, 'RRHH', '2020-08-28');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Goyo', 'Santana', 'alfredo73@plana.es', 'Burgos', 1838054, 'Logística', '2025-07-07');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Benigna', 'Barral', 'isidrodelgado@tur-carbajo.es', 'Murcia', 869160, 'RRHH', '2022-08-27');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Natalio', 'Batlle', 'adrianduran@garcia.com', 'Jaén', 1324292, 'RRHH', '2021-05-03');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Valero', 'Olmo', 'rcamara@gmail.com', 'Huelva', 2188215, 'RRHH', '2024-09-09');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Francisco Jose', 'Heras', 'patinoarturo@flor.com', 'La Rioja', 2341161, 'Marketing', '2023-07-14');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Vilma', 'Luján', 'dsamper@hotmail.com', 'Guadalajara', 1831939, 'Finanzas', '2025-05-15');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Leocadio', 'Patiño', 'alcoleaelena@yahoo.com', 'Cáceres', 2496670, 'TI', '2021-10-19');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Amador', 'Aliaga', 'antonteofilo@yahoo.com', 'Lleida', 1408739, 'TI', '2021-04-25');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Reyes', 'Soriano', 'carneroselena@peiro-sosa.es', 'Burgos', 929610, 'TI', '2023-03-02');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Omar', 'Bilbao', 'mferreras@gmail.com', 'Salamanca', 1836049, 'Ventas', '2023-06-04');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Fidel', 'Ochoa', 'xiomara53@hotmail.com', 'Córdoba', 2403635, 'RRHH', '2023-05-13');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Natividad', 'Cases', 'fescamilla@cal-serna.es', 'Guipúzcoa', 1413743, 'RRHH', '2023-01-07');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Eligia', 'Jaén', 'agustin00@bauza.org', 'Guipúzcoa', 566506, 'RRHH', '2023-09-04');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Regina', 'Agustí', 'custodia38@verdu.es', 'Lugo', 1442393, 'Logística', '2024-05-08');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Chucho', 'Cuenca', 'jimeneznoemi@palmer.net', 'Alicante', 805154, 'Logística', '2023-12-24');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Amado', 'Valderrama', 'pmorera@gmail.com', 'Guipúzcoa', 1401951, 'Ventas', '2020-12-16');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Zaira', 'Tirado', 'reinaldo92@hotmail.com', 'Cádiz', 834485, 'Ventas', '2024-10-16');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Amelia', 'Vergara', 'azahara42@simo-castellanos.com', 'Teruel', 539779, 'Finanzas', '2024-09-10');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('César', 'Juan', 'rosa24@hotmail.com', 'Pontevedra', 2436064, 'RRHH', '2023-05-14');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Juan Bautista', 'Poza', 'tamayodimas@tello.es', 'Castellón', 2170862, 'Marketing', '2022-02-02');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Ale', 'Segovia', 'serafinaserna@borrego.es', 'Granada', 2273777, 'Logística', '2025-03-21');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Rafael', 'Arjona', 'arnaueli@hotmail.com', 'Valladolid', 1720995, 'Logística', '2022-09-26');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Nerea', 'Gallego', 'xgallardo@pelaez-alvaro.es', 'Teruel', 1976292, 'Marketing', '2022-05-31');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Bruno', 'Puga', 'colomeramarilis@ayllon.com', 'Soria', 1944222, 'Finanzas', '2021-12-14');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Victorino', 'Báez', 'marciano22@aguilera-macias.com', 'Málaga', 1801023, 'TI', '2020-08-08');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Ema', 'Pallarès', 'gvalverde@juan.es', 'Alicante', 710996, 'RRHH', '2022-11-10');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Regina', 'Alcalá', 'colomrafael@porta.com', 'Asturias', 1902762, 'Marketing', '2020-12-20');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('José Ángel', 'Villalobos', 'isapont@yahoo.com', 'Cantabria', 1210992, 'RRHH', '2024-10-21');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Norberto', 'Fonseca', 'ogordillo@yahoo.com', 'Guadalajara', 957048, 'Finanzas', '2021-02-15');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Anselmo', 'Varela', 'xpalma@barrera.es', 'Castellón', 2284298, 'Logística', '2021-01-20');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Mateo', 'Pizarro', 'isabelespanol@montero-rojas.es', 'Santa Cruz de Tenerife', 2287986, 'RRHH', '2022-01-21');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Josefa', 'Ríos', 'fidel45@flores.es', 'Tarragona', 2254677, 'TI', '2021-09-05');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Martina', 'Ferrándiz', 'benitezrosalinda@vega-alcazar.org', 'Jaén', 666266, 'TI', '2023-10-13');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Hilario', 'Gallart', 'elorzafermin@hotmail.com', 'Valladolid', 994404, 'Logística', '2022-05-13');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Eduardo', 'Amat', 'alondra02@yahoo.com', 'Cantabria', 2145597, 'TI', '2022-02-09');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Mariana', 'Miguel', 'alsinaiker@yahoo.com', 'Girona', 2157483, 'Ventas', '2024-09-30');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Milagros', 'Egea', 'elbarivero@castells-fiol.es', 'Toledo', 1948529, 'Marketing', '2022-01-11');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Asdrubal', 'Cifuentes', 'cristina02@hotmail.com', 'La Coruña', 918746, 'Logística', '2021-06-10');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Manu', 'Antúnez', 'sancho82@gmail.com', 'La Rioja', 575487, 'Logística', '2025-07-30');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Noé', 'Ribes', 'salud45@cifuentes.org', 'Málaga', 2380250, 'Marketing', '2021-01-01');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Águeda', 'Suarez', 'mario71@roca.org', 'Cádiz', 909383, 'RRHH', '2024-09-30');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Lope', 'Arjona', 'iesteve@yahoo.com', 'Lugo', 914202, 'Ventas', '2021-12-07');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Ulises', 'Velasco', 'vcampos@peralta.es', 'Álava', 2295168, 'Ventas', '2022-08-17');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Paca', 'Caro', 'lrivero@casado.net', 'Sevilla', 349275, 'RRHH', '2024-06-10');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Sofía', 'Alcalde', 'donosolola@navarro-vila.org', 'Álava', 1958945, 'TI', '2021-02-01');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Damián', 'Gómez', 'bastidaeutimio@yahoo.com', 'Granada', 856914, 'Logística', '2022-04-03');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Modesto', 'Luján', 'gimenezmarcia@gmail.com', 'Soria', 601466, 'Ventas', '2022-10-27');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Reyes', 'Perales', 'encarnitagarcia@yahoo.com', 'Baleares', 458733, 'Marketing', '2021-09-20');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Adela', 'Miguel', 'salazarrosa-maria@yahoo.com', 'Valencia', 543516, 'Logística', '2020-10-02');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Isabela', 'Taboada', 'gvall@estevez.es', 'Castellón', 1996340, 'Ventas', '2021-12-06');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Ernesto', 'Alegre', 'amadadieguez@porta-ferrero.es', 'Burgos', 836458, 'TI', '2022-10-21');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Odalis', 'Rosell', 'buenaventura65@yahoo.com', 'Girona', 1865317, 'Logística', '2021-10-30');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Olegario', 'Benavente', 'ugalan@galvan-montalban.com', 'Lugo', 1129668, 'Ventas', '2023-02-16');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Edelmiro', 'Beltrán', 'casalsmatias@hotmail.com', 'Málaga', 2382560, 'TI', '2021-10-03');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Sebastian', 'Blasco', 'encarnanoriega@gmail.com', 'Valencia', 1342090, 'Finanzas', '2024-02-14');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Asunción', 'Figueroa', 'mayoralflavia@yahoo.com', 'Murcia', 1539798, 'TI', '2023-12-31');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Mauricio', 'Amat', 'csoria@saez-cortes.org', 'Cáceres', 993592, 'Logística', '2022-05-24');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Bonifacio', 'Guillen', 'telmo22@cortina.org', 'Santa Cruz de Tenerife', 1682432, 'TI', '2025-03-14');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Eric', 'Poza', 'seguratono@gmail.com', 'Lugo', 1441822, 'Logística', '2021-01-06');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Bernardo', 'Sanjuan', 'gherrero@gmail.com', 'Melilla', 1791849, 'Finanzas', '2022-08-18');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Rebeca', 'Pascual', 'agustina46@dominguez.org', 'Alicante', 2231693, 'TI', '2022-08-04');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Adrián', 'Farré', 'pliniogascon@oller.com', 'Ourense', 1799574, 'TI', '2024-03-31');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Fabián', 'Morán', 'belen32@garate-goicoechea.es', 'Navarra', 2199543, 'Logística', '2023-05-16');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Ani', 'Moll', 'spena@vendrell.es', 'Valladolid', 490699, 'Marketing', '2024-10-20');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Ale', 'Sanmiguel', 'salomefont@castro-ugarte.es', 'Zaragoza', 2281480, 'TI', '2024-06-11');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Cloe', 'Cid', 'paezvisitacion@plaza.es', 'Salamanca', 1839700, 'RRHH', '2024-02-06');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Cesar', 'Amador', 'adoracionrevilla@zurita.com', 'Teruel', 2099511, 'Logística', '2023-03-07');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Mariano', 'Santiago', 'martina10@hotmail.com', 'Cantabria', 2321832, 'TI', '2022-10-08');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Felix', 'Carballo', 'nheredia@fuente.es', 'Huelva', 1238552, 'Marketing', '2024-12-04');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Reina', 'Seco', 'qyanez@hotmail.com', 'Cádiz', 1867382, 'Ventas', '2022-04-07');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Prudencio', 'Sanjuan', 'ebeltran@tejada.com', 'Cáceres', 1453886, 'Finanzas', '2024-04-12');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Ibán', 'Sandoval', 'nmercader@nogues-linares.es', 'Baleares', 1361004, 'Logística', '2025-03-09');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Anastasio', 'Tello', 'sabina47@yahoo.com', 'Vizcaya', 1317857, 'TI', '2022-02-23');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Dorita', 'Costa', 'nicodemovinas@hotmail.com', 'Jaén', 1290958, 'Logística', '2020-10-07');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Jenaro', 'Amo', 'nuria93@yahoo.com', 'Navarra', 609257, 'Ventas', '2024-08-27');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Erasmo', 'Nebot', 'mendozabenito@vives-angulo.es', 'Ourense', 894706, 'RRHH', '2022-11-09');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Agustín', 'Amo', 'ferreraximena@caro.es', 'Granada', 354180, 'TI', '2022-12-15');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Gema', 'Cuesta', 'wescribano@gmail.com', 'Navarra', 306678, 'Marketing', '2023-09-06');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Severiano', 'Franco', 'yvigil@gmail.com', 'Alicante', 427711, 'Logística', '2024-05-18');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Teresita', 'Priego', 'ivan85@gmail.com', 'Jaén', 2026322, 'Logística', '2024-02-01');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Adora', 'Cantón', 'elpidiocuenca@hotmail.com', 'Ceuta', 1289471, 'RRHH', '2021-08-31');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Bárbara', 'Machado', 'charonogues@esteve.com', 'Palencia', 2430826, 'RRHH', '2021-06-03');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Rosenda', 'Pozo', 'kmillan@blanca.net', 'Granada', 1483222, 'TI', '2025-04-03');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Artemio', 'Tejedor', 'jaenjose-maria@hotmail.com', 'Navarra', 1730393, 'RRHH', '2021-07-14');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Macarena', 'Lillo', 'reynaldo76@moran.com', 'Ciudad', 545066, 'Ventas', '2023-05-16');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('María', 'Robledo', 'inmaculadavinas@lastra.net', 'Cáceres', 401656, 'Ventas', '2022-01-28');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Ximena', 'Camacho', 'eliseomateos@alcalde.com', 'Málaga', 2187598, 'Logística', '2020-08-24');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Guadalupe', 'Villalobos', 'ovidio96@alcantara.com', 'Pontevedra', 1019391, 'Finanzas', '2025-06-30');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Toño', 'Mata', 'encarnacionhoz@hotmail.com', 'Alicante', 1327171, 'TI', '2023-12-04');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Clemente', 'Arévalo', 'cirosamper@escribano.com', 'Palencia', 901250, 'Ventas', '2022-10-13');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Nidia', 'Lluch', 'celiabaez@gmail.com', 'Vizcaya', 798862, 'TI', '2022-09-13');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('María Teresa', 'Ferrer', 'baezaraceli@gmail.com', 'Albacete', 950201, 'Ventas', '2023-06-06');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Lope', 'Valverde', 'dario05@yahoo.com', 'Toledo', 377619, 'Marketing', '2023-07-13');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Primitivo', 'Soriano', 'saludesteban@hotmail.com', 'Murcia', 2269596, 'Finanzas', '2020-09-14');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Reyna', 'Herrera', 'gonzalezmaria-teresa@hotmail.com', 'Segovia', 1220620, 'RRHH', '2024-05-22');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Ramiro', 'Álvarez', 'julio-cesarperales@frutos-espinosa.net', 'Vizcaya', 1599528, 'TI', '2025-02-14');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Eutropio', 'Egea', 'concepcionpablo@pintor-giron.es', 'Palencia', 2485228, 'TI', '2020-09-16');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Armando', 'Haro', 'opedro@hotmail.com', 'Córdoba', 1885713, 'Logística', '2024-05-20');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Yaiza', 'Porras', 'amohector@castellanos.com', 'Palencia', 652198, 'Logística', '2024-02-20');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Ainoa', 'Anglada', 'maria-carmen17@lastra-vidal.es', 'Soria', 921130, 'Marketing', '2024-02-27');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Sol', 'Sierra', 'vidalriba@hotmail.com', 'Navarra', 1333530, 'Marketing', '2021-09-16');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Florencia', 'Tomé', 'raimundosegovia@gmail.com', 'Vizcaya', 807224, 'Ventas', '2024-10-08');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Evita', 'Ferrer', 'cristina50@gmail.com', 'Melilla', 2121421, 'Ventas', '2022-06-14');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Bibiana', 'Tormo', 'maitemendez@hotmail.com', 'Huelva', 408950, 'TI', '2023-11-26');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Carmina', 'Arrieta', 'albertoeva-maria@neira.es', 'Ciudad', 2167688, 'Marketing', '2025-01-23');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Quirino', 'Bou', 'pellicerjose-antonio@yahoo.com', 'Castellón', 1739006, 'RRHH', '2021-05-01');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Sosimo', 'Belmonte', 'nestor26@ojeda.com', 'Navarra', 357059, 'Finanzas', '2024-08-23');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Lino', 'Coca', 'companynuria@melero.org', 'Albacete', 478044, 'Marketing', '2022-07-24');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Gerardo', 'Hernández', 'chuycerezo@gonzalo-bustos.org', 'Ceuta', 1846306, 'Finanzas', '2025-02-15');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Josefina', 'Lorenzo', 'gemabenavente@fuster-huerta.es', 'Ourense', 1512161, 'RRHH', '2021-01-19');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Fortunata', 'Llobet', 'abilionarvaez@hotmail.com', 'Las Palmas', 1049014, 'Marketing', '2021-04-02');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Feliciano', 'Cruz', 'ifolch@tena.es', 'Córdoba', 2238161, 'Logística', '2022-11-17');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Teobaldo', 'Luís', 'santos83@ochoa-penas.com', 'Ourense', 2340756, 'TI', '2024-02-25');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Segismundo', 'Machado', 'maria-josesolana@guerrero.es', 'Murcia', 761862, 'Marketing', '2024-12-25');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Sofía', 'Reyes', 'ester91@asenjo.es', 'Granada', 1749746, 'Marketing', '2023-11-21');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Leonardo', 'Baños', 'wguardiola@canovas.com', 'Segovia', 1889479, 'Ventas', '2020-09-08');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Concepción', 'Company', 'moraneric@mena-bernat.net', 'Almería', 2440367, 'Ventas', '2024-11-13');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Alcides', 'Aramburu', 'tolosapaula@hotmail.com', 'Valladolid', 1390182, 'Logística', '2022-06-08');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('María Teresa', 'Barberá', 'ameliaquintero@yahoo.com', 'Cáceres', 1202773, 'Ventas', '2023-12-05');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Glauco', 'Abascal', 'linarescipriano@trujillo.com', 'Asturias', 752445, 'TI', '2023-09-27');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Celso', 'Ferrero', 'iniguezjuan-pablo@gmail.com', 'Asturias', 845689, 'Finanzas', '2024-03-24');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Herminia', 'Bayón', 'hilario44@cervantes-munoz.com', 'Castellón', 399684, 'Finanzas', '2024-09-10');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Ciríaco', 'Boix', 'montalbanquirino@sala-pellicer.com', 'Castellón', 448704, 'TI', '2020-09-12');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Manuel', 'Torre', 'flavianino@yahoo.com', 'Lugo', 971809, 'RRHH', '2020-10-06');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Nidia', 'Pascual', 'carneroyesica@gmail.com', 'Palencia', 1579756, 'Finanzas', '2023-04-08');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Gaspar', 'Núñez', 'elena21@gimenez-santos.org', 'Badajoz', 424737, 'Ventas', '2023-08-16');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Jerónimo', 'Priego', 'bernathugo@lozano.es', 'La Rioja', 2130066, 'Marketing', '2022-03-31');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Candelaria', 'Llorente', 'maricruz10@ripoll.com', 'Tarragona', 1438011, 'Ventas', '2024-06-26');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Teresa', 'Beltran', 'lola70@linares-rico.es', 'Las Palmas', 856513, 'Logística', '2025-06-29');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Tania', 'Morales', 'felisa75@simo-agustin.com', 'Málaga', 526893, 'Logística', '2024-03-04');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Antonia', 'Domingo', 'galopelayo@gmail.com', 'La Coruña', 2098628, 'Logística', '2023-07-22');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Chus', 'Prado', 'elvira40@casanovas.com', 'Valencia', 1037314, 'Finanzas', '2024-02-29');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Carla', 'Saavedra', 'lucianocarro@bernal-piquer.com', 'Vizcaya', 1071637, 'Marketing', '2023-08-29');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Feliciano', 'Gisbert', 'iperalta@gmail.com', 'La Coruña', 1425520, 'Ventas', '2023-11-08');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Chus', 'Garcés', 'isanmiguel@robledo.es', 'Vizcaya', 1658843, 'RRHH', '2024-07-16');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Marita', 'Molins', 'joseparranz@yahoo.com', 'Zaragoza', 1492393, 'Logística', '2024-02-11');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Chema', 'Ropero', 'mendeztoribio@gmail.com', 'Guadalajara', 2140570, 'RRHH', '2021-05-04');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Estefanía', 'Castañeda', 'vnarvaez@osorio.com', 'Granada', 1481482, 'Logística', '2020-10-08');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Salomé', 'Calzada', 'baudelioflores@gmail.com', 'León', 2320015, 'TI', '2022-10-30');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Segismundo', 'Borja', 'felix22@esteve.com', 'Zamora', 533624, 'Ventas', '2022-02-17');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Balduino', 'Carpio', 'ualemany@yahoo.com', 'Las Palmas', 1665087, 'Logística', '2021-12-03');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Juan Pablo', 'Egea', 'isabelalujan@hotmail.com', 'Segovia', 2035115, 'Marketing', '2024-10-02');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Calisto', 'Gual', 'crescencia67@garate.es', 'Valencia', 1866923, 'Finanzas', '2021-12-09');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Julio César', 'Dueñas', 'candres@ruiz-gelabert.es', 'Asturias', 1781489, 'Ventas', '2023-11-16');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Amado', 'Conesa', 'ainaraboada@tirado.es', 'Córdoba', 1565447, 'Finanzas', '2024-06-17');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Natanael', 'Casal', 'arceliablazquez@molins.es', 'Huesca', 1210388, 'Marketing', '2023-06-23');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Osvaldo', 'Palmer', 'renatosanjuan@hotmail.com', 'Córdoba', 747003, 'Ventas', '2023-04-12');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Feliciano', 'Alfaro', 'smayoral@quiroga.es', 'Segovia', 1851046, 'RRHH', '2021-03-07');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Ulises', 'Beltran', 'fmorell@yahoo.com', 'Sevilla', 536248, 'Marketing', '2021-09-30');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Nilda', 'Cortés', 'cadenasezequiel@hotmail.com', 'Salamanca', 697165, 'Finanzas', '2024-01-16');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Javiera', 'Palomino', 'jordicalatayud@hotmail.com', 'Teruel', 1817623, 'Ventas', '2024-01-31');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Agustina', 'Reyes', 'norberto85@yahoo.com', 'Murcia', 1757364, 'RRHH', '2022-11-04');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Ruth', 'Bas', 'azucenaalemany@gmail.com', 'Alicante', 1785143, 'Ventas', '2022-05-12');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Lino', 'Sales', 'cacereshortensia@gmail.com', 'Valencia', 1740183, 'Logística', '2021-06-06');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Clímaco', 'Saura', 'jose-luis22@gmail.com', 'Guadalajara', 2342698, 'Logística', '2025-06-06');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Aránzazu', 'Jover', 'bienvenida16@gmail.com', 'Valencia', 2191654, 'TI', '2022-08-02');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Elisa', 'Costa', 'trinidad96@yahoo.com', 'Vizcaya', 671982, 'TI', '2024-11-16');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Espiridión', 'Cueto', 'morcillorafael@uribe.org', 'Girona', 1767753, 'Finanzas', '2024-03-13');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Flor', 'Agullo', 'zcepeda@gmail.com', 'Soria', 1002400, 'Marketing', '2022-10-24');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Araceli', 'Valera', 'rpatino@gmail.com', 'Huelva', 2376116, 'Ventas', '2022-08-28');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Rosa María', 'Blanco', 'expositoloida@hotmail.com', 'Alicante', 1077568, 'Finanzas', '2022-04-02');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Glauco', 'Melero', 'lupereguera@hotmail.com', 'Badajoz', 1687047, 'Marketing', '2022-11-19');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Omar', 'Casanovas', 'telmo43@colomer-lerma.es', 'Cáceres', 2374765, 'Ventas', '2023-12-31');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Guadalupe', 'Palomo', 'felicianamate@oliveras.com', 'Guipúzcoa', 1224568, 'Finanzas', '2024-01-03');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Ciro', 'Gomez', 'kcabrero@rocha.es', 'Castellón', 775733, 'TI', '2021-11-08');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Lupita', 'Arteaga', 'puigveronica@juarez-ribes.net', 'Zamora', 1113883, 'Logística', '2024-12-05');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Tiburcio', 'Segura', 'leonardo42@polo.es', 'Cádiz', 1262434, 'Marketing', '2025-05-23');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Felix', 'Hernandez', 'andres-felipe59@viana.es', 'Girona', 1657882, 'RRHH', '2021-05-10');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Dominga', 'Ribas', 'arnaueufemia@mercader-bueno.es', 'Jaén', 932213, 'Logística', '2020-11-19');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Amarilis', 'Ramírez', 'rodrigovalbuena@yahoo.com', 'Lleida', 2288586, 'RRHH', '2021-09-18');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Eulalia', 'Quirós', 'scarrion@diez-marin.es', 'Zamora', 907478, 'Finanzas', '2024-06-25');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Hector', 'Tena', 'clementepalau@barcelo.es', 'Álava', 799123, 'Finanzas', '2024-08-07');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Lino', 'Torre', 'casandraolivera@gmail.com', 'Teruel', 1343100, 'Finanzas', '2023-06-10');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Vanesa', 'Valentín', 'leonibanez@castrillo-bayo.es', 'Segovia', 1299432, 'TI', '2023-09-19');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('María Pilar', 'Gordillo', 'augusto86@gmail.com', 'Cantabria', 1638606, 'TI', '2025-02-10');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Emma', 'Paz', 'valenzuelanicodemo@colomer-bilbao.com', 'Córdoba', 609784, 'Finanzas', '2025-04-25');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Albert', 'Rincón', 'pinabenigna@gmail.com', 'Granada', 1717830, 'TI', '2020-09-08');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Víctor', 'Múgica', 'epaniagua@hotmail.com', 'Lleida', 1850007, 'Ventas', '2025-08-08');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Toño', 'Viana', 'gaston27@cerdan-pacheco.com', 'Cádiz', 2381079, 'Logística', '2024-04-20');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Azahara', 'Garcés', 'ramosfernanda@figueras.org', 'Zamora', 660409, 'TI', '2025-04-25');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Almudena', 'Mur', 'qbayo@gmail.com', 'Toledo', 2214224, 'Logística', '2022-10-18');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Concepción', 'Haro', 'gironaamanda@gmail.com', 'Toledo', 2159400, 'Logística', '2021-03-15');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Jorge', 'Pujol', 'encarnita24@gmail.com', 'Ourense', 610564, 'Logística', '2021-06-21');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Cristina', 'Ramón', 'baudelioburgos@hotmail.com', 'Albacete', 1137748, 'TI', '2024-07-17');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Salud', 'Briones', 'barroslupe@yahoo.com', 'Segovia', 625624, 'Finanzas', '2023-11-13');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Alexandra', 'Juan', 'rafa29@santiago.com', 'Navarra', 586680, 'Finanzas', '2020-12-23');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Ana', 'Naranjo', 'ortizcarmina@marti.com', 'Jaén', 1399954, 'RRHH', '2023-01-09');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Alicia', 'Guillen', 'jennyrius@hotmail.com', 'Barcelona', 2052898, 'Finanzas', '2022-05-06');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('María Belén', 'Pareja', 'placidobarrena@hotmail.com', 'Sevilla', 1088427, 'RRHH', '2022-03-24');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Alfredo', 'Elorza', 'rodenasprudencio@yahoo.com', 'Soria', 909693, 'Logística', '2024-10-12');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Jacinto', 'Agustín', 'xvelasco@yahoo.com', 'Castellón', 2415910, 'Finanzas', '2022-10-31');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Loreto', 'Mariño', 'fernandacabanillas@marques.com', 'Castellón', 2424645, 'RRHH', '2021-11-27');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Godofredo', 'Solsona', 'remigiovilalta@gmail.com', 'Ciudad', 452732, 'Marketing', '2020-11-05');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('María', 'Español', 'jimenafigueroa@beltran-gilabert.es', 'Santa Cruz de Tenerife', 679181, 'TI', '2022-11-01');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Manu', 'Cabañas', 'arellanoolga@hotmail.com', 'Málaga', 1002608, 'TI', '2022-01-09');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Matilde', 'Pallarès', 'xgaliano@gmail.com', 'Tarragona', 563477, 'Finanzas', '2024-06-25');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Custodio', 'Goñi', 'kviana@yahoo.com', 'La Coruña', 1134509, 'Marketing', '2023-12-18');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Brígida', 'Ariza', 'jose-antonio64@ferran.es', 'Ceuta', 1919502, 'Marketing', '2021-09-22');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Lorenzo', 'Bonilla', 'tcrespo@maldonado.es', 'Soria', 385280, 'Ventas', '2023-09-14');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Sarita', 'Hervás', 'sanchezreynaldo@hotmail.com', 'Segovia', 376463, 'Ventas', '2023-06-03');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Benita', 'Cardona', 'benjamin12@gmail.com', 'Guadalajara', 1959294, 'Finanzas', '2022-04-07');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Gema', 'Salas', 'pblazquez@bartolome.es', 'Ávila', 1253922, 'Ventas', '2021-08-01');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Rolando', 'Nicolau', 'itziar02@juan-mena.es', 'Cuenca', 1559013, 'TI', '2024-10-24');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Gervasio', 'Tejera', 'molinssegismundo@hotmail.com', 'Vizcaya', 1646549, 'Ventas', '2021-04-26');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Jerónimo', 'Aguilar', 'tellezainara@hotmail.com', 'Teruel', 1017814, 'RRHH', '2021-06-03');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Marita', 'Rovira', 'qsevilla@yahoo.com', 'Lleida', 1090645, 'Logística', '2022-06-13');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Bautista', 'Vendrell', 'hnicolas@hotmail.com', 'Cádiz', 1715053, 'RRHH', '2022-12-01');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Graciela', 'Ferrero', 'alfredo73@marques.com', 'Toledo', 1912001, 'Ventas', '2022-12-24');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Adán', 'Oliver', 'alcalavictor@gmail.com', 'Álava', 1144187, 'Finanzas', '2023-09-17');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Etelvina', 'Nicolás', 'vsalas@lloret.es', 'Córdoba', 737757, 'RRHH', '2024-02-13');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Octavia', 'Valera', 'fporras@roda.org', 'Valencia', 1699135, 'TI', '2022-05-19');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Leandra', 'Echeverría', 'escamillacasandra@hotmail.com', 'Ceuta', 1959617, 'TI', '2024-02-07');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Isabela', 'Sanjuan', 'nebotgracia@hotmail.com', 'Lleida', 2488866, 'RRHH', '2023-10-01');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Lorenzo', 'Ruiz', 'anselmonavas@yahoo.com', 'Santa Cruz de Tenerife', 1776938, 'Logística', '2021-10-16');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Pío', 'Izaguirre', 'jordivalenciano@gmail.com', 'La Coruña', 603095, 'Ventas', '2022-12-31');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Encarnita', 'Saldaña', 'roigale@yahoo.com', 'Valencia', 1249543, 'Ventas', '2022-04-10');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Juan Antonio', 'Cerdá', 'lujanjuan-francisco@higueras.org', 'Valladolid', 2308758, 'TI', '2021-09-30');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Cecilia', 'Baños', 'carbonellmaria@barriga.es', 'Melilla', 337375, 'Ventas', '2022-01-03');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Gala', 'Alarcón', 'mateujose-maria@garmendia-soria.com', 'La Rioja', 2043222, 'Logística', '2025-02-05');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Pascual', 'Medina', 'osvaldo04@campo-rojas.com', 'Baleares', 2205272, 'Ventas', '2023-10-14');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Teodora', 'Agustí', 'carina51@vendrell.com', 'Huesca', 2373420, 'Finanzas', '2024-09-18');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Haroldo', 'Peralta', 'ncaro@gmail.com', 'Vizcaya', 527796, 'Ventas', '2024-05-07');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Efraín', 'Guardiola', 'fsalom@gmail.com', 'Sevilla', 2461050, 'TI', '2021-08-26');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Lope', 'Castañeda', 'isaiascarbonell@gmail.com', 'Cádiz', 1234877, 'Logística', '2020-09-22');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Agustín', 'Losada', 'candelario93@yahoo.com', 'Sevilla', 2306118, 'TI', '2021-05-08');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Crescencia', 'Moraleda', 'clementeiris@casals-bas.com', 'Valladolid', 1051717, 'RRHH', '2023-05-30');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Donato', 'Montes', 'aracelileon@yahoo.com', 'Zamora', 368779, 'Ventas', '2021-04-26');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Miguel', 'Morell', 'cbarral@hotmail.com', 'Baleares', 1023526, 'Ventas', '2021-05-02');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Pastor', 'Andrés', 'arcelia20@hotmail.com', 'Madrid', 1127711, 'Marketing', '2021-07-09');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Kike', 'Balaguer', 'albarosales@yahoo.com', 'Teruel', 1055680, 'Finanzas', '2021-05-30');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Gabriela', 'Acuña', 'nico34@mendoza-palomino.com', 'León', 2011859, 'Finanzas', '2024-11-21');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Lucho', 'Jurado', 'fcardenas@portillo.com', 'Madrid', 1229479, 'Logística', '2023-09-10');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Celestina', 'Carranza', 'kfuentes@hotmail.com', 'Segovia', 1747402, 'Ventas', '2021-05-04');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Felisa', 'Mate', 'bravoxavier@hotmail.com', 'Cuenca', 2230427, 'Marketing', '2022-04-12');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Malena', 'Lillo', 'benaventodalys@hotmail.com', 'Soria', 1101296, 'Marketing', '2022-12-19');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Gerónimo', 'Solís', 'adelardo58@hotmail.com', 'Córdoba', 624550, 'TI', '2023-05-03');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Cebrián', 'Echeverría', 'wnogueira@carmona.com', 'Barcelona', 921135, 'Marketing', '2022-06-08');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Carmelita', 'Tur', 'bmercader@hotmail.com', 'Huelva', 447474, 'Ventas', '2024-08-31');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Ramón', 'Bauzà', 'maiterodenas@borras-plana.net', 'Girona', 356397, 'TI', '2021-12-29');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Loida', 'Rocamora', 'ginerencarna@gmail.com', 'Cantabria', 2060156, 'Finanzas', '2021-03-03');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Rosalinda', 'Manjón', 'leonelazcona@benet.com', 'Lleida', 2010415, 'Marketing', '2022-10-10');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Cándido', 'Aroca', 'caridad34@alemany-blanca.net', 'La Rioja', 1275953, 'Finanzas', '2021-06-24');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Tito', 'Carrión', 'ferrandezloreto@hotmail.com', 'Ceuta', 1686700, 'RRHH', '2021-02-15');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Rosaura', 'Carreras', 'marquezdora@bautista-barcena.com', 'Segovia', 2276280, 'RRHH', '2021-03-06');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Victoria', 'Alfonso', 'perellowilfredo@carrasco.es', 'Palencia', 996403, 'Ventas', '2025-05-18');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Mónica', 'Barbero', 'reina23@gmail.com', 'Valencia', 1856939, 'Logística', '2024-11-30');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('María Teresa', 'Sabater', 'alfonso35@gmail.com', 'Las Palmas', 1189062, 'TI', '2024-10-09');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Jordi', 'Múgica', 'marianauria@lujan.net', 'Burgos', 440272, 'Logística', '2024-07-13');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Manuel', 'Blanes', 'olgacuervo@carballo.es', 'Almería', 744448, 'Finanzas', '2025-02-03');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Pacífica', 'Pardo', 'concepcion98@agusti.org', 'León', 347191, 'Marketing', '2021-04-11');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Julieta', 'Vilalta', 'lucas33@gmail.com', 'Palencia', 1097705, 'RRHH', '2023-01-20');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Sigfrido', 'Soto', 'simonguardiola@yahoo.com', 'Huelva', 1122804, 'Ventas', '2023-09-10');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Ágata', 'Alberto', 'oarias@vergara-ferrer.com', 'Almería', 2386361, 'Finanzas', '2021-11-17');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Arsenio', 'Bellido', 'ezequiel12@yahoo.com', 'Vizcaya', 1121940, 'RRHH', '2025-05-19');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Valero', 'Peiró', 'gmanjon@hotmail.com', 'Baleares', 1697691, 'Marketing', '2025-03-13');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Diana', 'Madrid', 'guiomarpujol@amat.es', 'Huesca', 953064, 'Finanzas', '2025-01-27');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Selena', 'Badía', 'jgarrido@guardia.com', 'Asturias', 2130169, 'Logística', '2025-01-08');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Heraclio', 'Checa', 'agustintena@gmail.com', 'Sevilla', 1402844, 'Finanzas', '2022-08-11');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Mónica', 'Méndez', 'rosselloruben@yahoo.com', 'Jaén', 756991, 'RRHH', '2022-09-14');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Severino', 'Carvajal', 'rafael76@yahoo.com', 'Sevilla', 1565608, 'Logística', '2021-03-13');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Sosimo', 'Espada', 'saezfederico@vina.es', 'Cádiz', 1700117, 'Finanzas', '2022-09-25');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Vidal', 'Río', 'martiriomoll@rocamora.es', 'Álava', 1579123, 'Finanzas', '2024-01-17');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Petrona', 'Barral', 'fsimo@yahoo.com', 'Ourense', 1781479, 'Ventas', '2022-10-13');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Espiridión', 'Cózar', 'liliamarquez@gmail.com', 'Lugo', 1438594, 'Logística', '2025-02-26');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Dolores', 'Avilés', 'sanchezeladio@yahoo.com', 'Teruel', 1327076, 'Finanzas', '2025-05-27');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Ramiro', 'Figuerola', 'manzanarescarlito@gmail.com', 'Segovia', 695050, 'Finanzas', '2025-07-24');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Flavia', 'Giner', 'galianofernando@hotmail.com', 'Castellón', 1445991, 'Logística', '2023-09-27');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Irene', 'Valenciano', 'alcolearaquel@gmail.com', 'Burgos', 489097, 'Finanzas', '2022-05-29');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Dionisia', 'Palomar', 'sigfrido28@gmail.com', 'Soria', 807276, 'Ventas', '2021-06-24');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Bautista', 'Nuñez', 'andres-felipe81@salmeron-escribano.com', 'Salamanca', 666305, 'Finanzas', '2025-05-22');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Damián', 'Núñez', 'ruedajose@yahoo.com', 'Santa Cruz de Tenerife', 1806625, 'RRHH', '2024-03-23');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Crescencia', 'Almeida', 'heribertodiaz@cardona.es', 'Valladolid', 351803, 'TI', '2023-11-09');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Prudencia', 'Colomer', 'svillaverde@yahoo.com', 'Badajoz', 2385540, 'Logística', '2023-07-29');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Natalia', 'Riquelme', 'gesparza@pereira.com', 'Badajoz', 723153, 'Logística', '2022-03-07');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Marina', 'Machado', 'natividad84@hotmail.com', 'Madrid', 1819793, 'Logística', '2021-07-19');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Cornelio', 'Carrasco', 'plastra@gmail.com', 'Badajoz', 1006785, 'Finanzas', '2023-08-26');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Olga', 'Arcos', 'sarmientomarciano@real.es', 'Toledo', 617016, 'Finanzas', '2024-03-04');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Nacho', 'Jordán', 'julia59@anton.es', 'Alicante', 1834240, 'Marketing', '2023-05-24');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Fausto', 'Farré', 'iborrell@iborra.com', 'Huelva', 1088208, 'TI', '2021-02-27');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Esther', 'Cañete', 'emilianajulia@salom.com', 'Zaragoza', 934884, 'Marketing', '2023-12-10');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Gabino', 'Álamo', 'ynino@gmail.com', 'Castellón', 1664698, 'Finanzas', '2020-10-14');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Eladio', 'Acero', 'baltasar59@yahoo.com', 'Ciudad', 2050630, 'Marketing', '2025-03-01');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Celia', 'Bas', 'florencia06@caparros.es', 'Vizcaya', 1170285, 'Ventas', '2023-01-18');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Gaspar', 'Acero', 'ygiralt@fuente.es', 'Barcelona', 1246130, 'TI', '2022-04-09');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Concepción', 'Gimenez', 'juradonoe@gmail.com', 'Ávila', 756633, 'RRHH', '2022-08-08');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Anacleto', 'Palomar', 'tblanes@yahoo.com', 'Málaga', 1722189, 'Marketing', '2024-06-20');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Federico', 'Menéndez', 'adan02@yahoo.com', 'Las Palmas', 870810, 'Ventas', '2023-03-25');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Natividad', 'Sáenz', 'petronatorrent@hotmail.com', 'Melilla', 1758860, 'TI', '2022-05-10');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Maximiano', 'Gallart', 'celso29@yahoo.com', 'León', 2073846, 'Ventas', '2022-06-15');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Paco', 'Escrivá', 'rivasrolando@francisco-solera.net', 'Palencia', 1362936, 'Finanzas', '2024-11-04');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Gisela', 'Salcedo', 'quique17@gmail.com', 'Pontevedra', 1769679, 'Logística', '2023-05-15');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Felipe', 'Aguirre', 'juan-manuel66@pellicer-uria.es', 'Murcia', 638247, 'TI', '2022-12-24');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Lucho', 'Paniagua', 'felicidadribera@montes-lillo.org', 'Pontevedra', 1587371, 'Finanzas', '2025-06-17');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('René', 'Gallego', 'bvalverde@hotmail.com', 'Tarragona', 2162181, 'Ventas', '2024-10-30');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Pacífica', 'Castrillo', 'maricelacruz@gmail.com', 'Lleida', 2234519, 'Ventas', '2023-02-03');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Lorena', 'Vallés', 'buenaventuraseco@yahoo.com', 'Sevilla', 1847160, 'Marketing', '2025-04-29');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Cornelio', 'Serra', 'pponce@yahoo.com', 'Las Palmas', 1717994, 'Logística', '2023-01-06');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Maxi', 'Ojeda', 'guzmanfebe@coello-moles.es', 'La Rioja', 1006424, 'RRHH', '2021-12-01');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Toni', 'Boix', 'victoriano18@camacho-bustamante.com', 'Tarragona', 1228397, 'RRHH', '2021-03-02');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Anastasio', 'Cifuentes', 'tarcos@blanch.com', 'Cáceres', 2209270, 'Finanzas', '2022-06-18');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Débora', 'Cabanillas', 'maximiliano99@gmail.com', 'Sevilla', 511596, 'Ventas', '2023-10-05');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Tomás', 'Diaz', 'walter88@alvarado.es', 'Barcelona', 2373867, 'Logística', '2025-07-30');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Juan Francisco', 'Pavón', 'yesica90@figuerola.org', 'Ávila', 1180536, 'RRHH', '2024-05-10');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('María Teresa', 'Mendoza', 'sarnal@hotmail.com', 'Palencia', 2147199, 'Marketing', '2021-11-09');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Palmira', 'Bustos', 'baezaariel@gmail.com', 'Barcelona', 1425874, 'RRHH', '2024-03-25');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Emelina', 'Pomares', 'bruno28@yahoo.com', 'Segovia', 693958, 'TI', '2024-11-01');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Estrella', 'Ávila', 'fabianapina@hotmail.com', 'La Rioja', 1522894, 'Logística', '2020-12-04');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('José', 'Olmo', 'kfigueroa@rey.com', 'Madrid', 484003, 'Ventas', '2021-08-18');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Dominga', 'Gilabert', 'bermudezedelmiro@yahoo.com', 'Madrid', 2305928, 'Marketing', '2021-05-28');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Nadia', 'Blanco', 'eufemiabarbera@morell.net', 'Álava', 627662, 'Marketing', '2020-08-30');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Lucio', 'Lobato', 'upizarro@hotmail.com', 'Melilla', 901418, 'Finanzas', '2023-09-23');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Miguel', 'Ramirez', 'besteban@cabo.es', 'Lugo', 1606849, 'Ventas', '2024-02-04');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Nieves', 'Esteban', 'ksandoval@arregui.es', 'Salamanca', 1991723, 'RRHH', '2024-08-16');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Inés', 'Lobato', 'victorchamorro@gmail.com', 'Cádiz', 1804052, 'Finanzas', '2023-05-03');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Felix', 'Baquero', 'leandraferrera@gomez.es', 'Cantabria', 2026190, 'TI', '2024-12-24');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Atilio', 'Sedano', 'hugo41@lastra.es', 'Zamora', 2229427, 'TI', '2023-03-17');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Kike', 'Dueñas', 'nievespulido@bru.org', 'Alicante', 441190, 'Logística', '2025-02-02');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Basilio', 'Farré', 'marisatomas@yahoo.com', 'Málaga', 745769, 'Finanzas', '2023-03-05');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Pía', 'Rocamora', 'alfredo23@pinilla.com', 'Baleares', 368714, 'RRHH', '2022-01-08');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Fausto', 'Montserrat', 'maria-del-carmenguerra@hotmail.com', 'Melilla', 2284810, 'Marketing', '2022-01-03');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Herminia', 'Roman', 'joaquinabarral@gmail.com', 'Navarra', 1158855, 'Marketing', '2022-12-02');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Noelia', 'Marin', 'brionesperlita@fortuny.com', 'Murcia', 2453015, 'Logística', '2023-10-20');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Selena', 'Nuñez', 'ttomas@nogueira.es', 'Guadalajara', 1860719, 'Marketing', '2023-07-07');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Azahara', 'Chacón', 'zjuan@yahoo.com', 'Zamora', 470751, 'Marketing', '2021-09-21');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Trinidad', 'Arnal', 'amaldonado@hotmail.com', 'Álava', 694510, 'RRHH', '2021-04-03');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Constanza', 'Haro', 'octaviosarmiento@pacheco-almeida.es', 'Alicante', 1071352, 'Logística', '2024-06-21');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Esperanza', 'Camps', 'xmachado@cabrero.es', 'Alicante', 1210673, 'Logística', '2023-11-18');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Eva', 'Posada', 'jfabregat@pereira.es', 'Salamanca', 2239052, 'TI', '2020-10-23');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Aurelia', 'Cerro', 'saenzdamian@aguirre.es', 'Córdoba', 1283492, 'Ventas', '2022-05-22');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Valentina', 'Santana', 'aureliano83@seco-mayol.com', 'Tarragona', 478510, 'Ventas', '2024-11-02');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Isaura', 'Riquelme', 'fabregasencarna@gmail.com', 'Albacete', 2238738, 'TI', '2025-05-26');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Anselma', 'Pinedo', 'escobarcustodio@hotmail.com', 'Zaragoza', 402103, 'Ventas', '2024-06-04');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Carina', 'Martorell', 'clemente07@briones-batalla.org', 'La Rioja', 608877, 'RRHH', '2023-09-04');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Nando', 'Falcón', 'emilia47@yahoo.com', 'Badajoz', 1825453, 'Marketing', '2020-12-03');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Priscila', 'Vilaplana', 'carrerasbelen@cerro.es', 'Granada', 2399433, 'TI', '2022-12-03');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Felicia', 'Vaquero', 'fmenendez@guardia.com', 'Lugo', 446423, 'Logística', '2022-08-24');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Ruth', 'Cabello', 'sandra32@jorda-asenjo.es', 'Pontevedra', 1829573, 'Logística', '2024-03-12');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Alfonso', 'Torrent', 'tristan63@yahoo.com', 'Valencia', 2360040, 'Finanzas', '2023-04-14');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Maura', 'Calderon', 'ugonzalez@gmail.com', 'Granada', 1198846, 'RRHH', '2021-09-08');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Valerio', 'Ángel', 'bgibert@toledo-rovira.es', 'Santa Cruz de Tenerife', 1596237, 'Logística', '2021-03-27');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Macarena', 'Piñeiro', 'benigna54@beltran.es', 'Asturias', 958104, 'Marketing', '2025-02-22');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Amelia', 'Pereira', 'bienvenidagoicoechea@hotmail.com', 'Córdoba', 1088902, 'Ventas', '2023-08-25');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Amílcar', 'Checa', 'primitiva29@yahoo.com', 'Toledo', 2440183, 'Ventas', '2025-05-21');
INSERT INTO personal (nombre, apellido, email, ciudad, sueldo, departamento, fecha_ingreso) VALUES ('Armida', 'Rovira', 'nmercader@gmail.com', 'Palencia', 2190427, 'Ventas', '2020-09-06');

-- Inserta registros en la tabla ventas

INSERT INTO ventas (producto, categoria, cantidad, precio, fecha, vendedor) VALUES
('Laptop HP', 'Electrónica', 2, 8500000.00, '2024-01-15', 1),
('Mouse Logitech', 'Electrónica', 5, 250000.50, '2025-01-15', 2),
('Teclado Mecánico', 'Electrónica', 3, 750000.00, '2023-01-16', 1),
('Monitor Samsung 24"', 'Electrónica', 1, 3200000.00, '2023-01-16', 3),
('Silla Ergonómica', 'Muebles', 2, 1800000.00, '2024-01-17', 2),
('Escritorio Madera', 'Muebles', 1, 45000.00, '2025-01-17', 4),
('Lámpara LED', 'Iluminación', 4, 3500.00, '2021-01-18', 1),
('Camiseta Nike', 'Ropa', 6, 2900.99, '2021-01-18', 5),
('Pantalón Jeans', 'Ropa', 3, 4500.00, '2022-01-19', 2),
('Zapatillas Adidas', 'Calzado', 2, 8750.00, '2023-01-19', 3),
('Auriculares Sony', 'Electrónica', 4, 12000.00, '2024-01-20', 1),
('Tablet Samsung', 'Electrónica', 1, 38000.00, '2025-01-20', 4),
('Cafetera Nespresso', 'Electrodomésticos', 2, 18000.00, '2022-01-21', 2),
('Microondas LG', 'Electrodomésticos', 1, 25000.00, '2023-01-21', 5),
('Sofá 3 Plazas', 'Muebles', 1, 68500.00, '2024-01-22', 3),
('Mesa Centro', 'Muebles', 2, 15000.00, '2025-02-22', 1),
('Reloj Casio', 'Accesorios', 3, 6500.00, '2023-03-23', 4),
('Mochila Escolar', 'Accesorios', 5, 4200.00, '2024-04-23', 2),
('Libro Fiction', 'Libros', 8, 1500.99, '2024-05-24', 5),
('Cuaderno A4', 'Papelería', 15, 300.50, '2023-06-24', 1),
('Bolígrafos Set', 'Papelería', 10, 1855.00, '2024-07-25', 3),
('Impresora HP', 'Electrónica', 1, 28000.00, '2024-08-25', 2),
('Router WiFi', 'Electrónica', 3, 5500.00, '2024-09-26', 4),
('Cámara Canon', 'Electrónica', 1, 65000.00, '2025-10-26', 1),
('Trípode', 'Fotografía', 2, 4000.00, '2024-11-27', 5),
('Funda Móvil', 'Accesorios', 12, 1200.50, '2024-12-27', 2),
('Cargador USB-C', 'Electrónica', 8, 1800.00, '2024-01-28', 3),
('Batería Externa', 'Electrónica', 5, 3500.00, '2021-01-28', 1),
('Smartwatch', 'Electrónica', 2, 21000.00, '2024-01-29', 4),
('Alfombra Salón', 'Hogar', 3, 9500.00, '2024-01-29', 2),
('Cortinas Blackout', 'Hogar', 4, 4800.00, '2024-01-30', 5),
('Ventilador Torre', 'Electrodomésticos', 2, 8500.00, '2024-01-30', 1),
('Plancha Vapor', 'Electrodomésticos', 3, 4500.00, '2024-01-31', 3),
('Aspiradora Robot', 'Electrodomésticos', 1, 38000.00, '2024-01-31', 2),
('Juego Sábanas', 'Hogar', 4, 5500.00, '2022-02-01', 4),
('Almohada Memory', 'Hogar', 6, 3200.00, '2024-02-01', 1),
('Batidora Eléctrica', 'Electrodomésticos', 2, 6800.00, '2024-02-02', 5),
('Set Ollas', 'Cocina', 1, 12000.00, '2024-02-02', 2),
('Set Cuchillos', 'Cocina', 3, 4500.00, '2024-02-03', 3),
('Tabla Cortar', 'Cocina', 5, 1800.00, '2024-02-03', 1),
('Termo Acero', 'Hogar', 7, 2200.50, '2022-02-04', 4),
('Botella Agua', 'Deportes', 10, 1200.00, '2024-02-04', 2),
('Balón Fútbol', 'Deportes', 4, 2800.00, '2024-02-05', 5),
('Raqueta Tenis', 'Deportes', 2, 9500.00, '2024-02-05', 1),
('Bicicleta MTB', 'Deportes', 1, 48000.00, '2023-02-06', 3),
('Casco Ciclismo', 'Deportes', 3, 5500.00, '2023-02-06', 2),
('Guantes Gym', 'Deportes', 5, 1800.00, '2024-02-07', 4),
('Colchoneta Yoga', 'Deportes', 4, 3200.00, '2024-02-07', 1),
('Pesas 5kg', 'Deportes', 6, 2500.00, '2024-02-08', 5),
('Cuerda Saltar', 'Deportes', 8, 900.50, '2024-02-08', 2),
('Smartphone Samsung', 'Electrónica', 1, 58000.00, '2024-02-09', 3),
('Funda Tablet', 'Accesorios', 4, 2200.00, '2024-02-09', 1),
('Cable HDMI', 'Electrónica', 10, 1200.00, '2024-02-10', 4),
('Adaptador USB', 'Electrónica', 15, 800.50, '2024-02-10', 2),
('Webcam HD', 'Electrónica', 3, 6500.00, '2025-02-11', 5),
('Micrófono USB', 'Electrónica', 2, 7800.00, '2024-02-11', 1),
('Parlante Bluetooth', 'Electrónica', 5, 4500.00, '2024-02-12', 3),
('Lámpara Escritorio', 'Iluminación', 6, 2800.00, '2024-02-12', 2),
('Organizador Cables', 'Accesorios', 12, 600.50, '2024-02-13', 4),
('Mouse Pad XL', 'Accesorios', 8, 1500.00, '2024-01-13', 1),
('Reposamuñecas', 'Accesorios', 7, 1100.00, '2024-02-14', 5),
('Filtro Agua', 'Hogar', 3, 4200.00, '2024-03-14', 2),
('Purificador Aire', 'Electrodomésticos', 1, 18000.00, '2024-04-15', 3),
('Humidificador', 'Electrodomésticos', 2, 5500.00, '2024-05-15', 1),
('Bascula Digital', 'Hogar', 4, 2800.00, '2024-06-16', 4),
('Reloj Pared', 'Hogar', 5, 2200.50, '2021-07-16', 2),
('Marco Fotos', 'Hogar', 8, 1200.00, '2024-08-17', 5),
('Espejo Pared', 'Hogar', 3, 4500.00, '2024-09-17', 1),
('Perchero Metal', 'Muebles', 4, 3200.00, '2024-10-18', 3),
('Estantería Madera', 'Muebles', 2, 8500.00, '2024-11-18', 2),
('Taburete Bar', 'Muebles', 6, 4800.00, '2021-12-19', 4),
('Mesita Noche', 'Muebles', 3, 6500.00, '2022-02-19', 1),
('Comoda 4 Cajones', 'Muebles', 1, 18000.00, '2024-02-20', 5),
('Zapatero 3 Pisos', 'Muebles', 4, 4200.00, '2022-02-20', 2),
('Paragüero', 'Hogar', 5, 1800.50, '2022-02-21', 3),
('Felpudo Entrada', 'Hogar', 7, 1400.00, '2024-02-21', 1),
('Cesto Ropa', 'Hogar', 6, 2200.00, '2024-02-22', 4),
('Perchas Madera', 'Hogar', 20, 200.50, '2024-02-22', 2),
('Organizador Zapatos', 'Hogar', 4, 2800.00, '2022-02-23', 5),
('Caja Herramientas', 'Herramientas', 2, 5500.00, '2023-02-23', 1),
('Taladro Eléctrico', 'Herramientas', 1, 9500.00, '2024-02-24', 3),
('Set Destornilladores', 'Herramientas', 5, 2200.00, '2024-02-24', 2),
('Martillo', 'Herramientas', 4, 1500.50, '2024-02-25', 4),
('Nivel Láser', 'Herramientas', 2, 4800.00, '2023-02-25', 1),
('Escalera Aluminio', 'Herramientas', 1, 12000.00, '2024-02-26', 5),
('Linterna LED', 'Herramientas', 6, 1800.00, '2024-02-26', 2),
('Cinta Métrica', 'Herramientas', 8, 800.50, '2024-02-27', 3),
('Alicate Universal', 'Herramientas', 5, 1200.00, '2024-02-27', 1),
('Llave Inglesa', 'Herramientas', 4, 2200.00, '2024-02-28', 4),
('Sierra Manual', 'Herramientas', 3, 2800.00, '2025-02-28', 2),
('Cepillo Carpintero', 'Herramientas', 2, 3500.00, '2024-02-29', 5),
('Lijadora Orbital', 'Herramientas', 1, 8500.00, '2024-02-29', 1),
('Gafas Protección', 'Seguridad', 10, 800.50, '2024-03-01', 3),
('Guantes Trabajo', 'Seguridad', 12, 600.00, '2023-03-01', 2),
('Mascarilla N95', 'Seguridad', 25, 300.50, '2022-03-02', 4),
('Botiquín Primeros Auxilios', 'Salud', 3, 3200.00, '2024-03-02', 1),
('Termómetro Digital', 'Salud', 5, 1200.50, '2024-03-03', 5),
('Tensiómetro', 'Salud', 2, 4500.00, '2025-03-03', 2),
('Vitaminas C', 'Salud', 8, 1500.00, '2024-03-04', 3),
('Protector Solar', 'Cuidado Personal', 10, 1800.50, '2024-03-04', 1),
('Shampoo Herbal', 'Cuidado Personal', 12, 800.50, '2024-03-05', 4),
('Acondicionador', 'Cuidado Personal', 10, 900.00, '2024-03-05', 2),
('Jabón Líquido', 'Cuidado Personal', 15, 500.50, '2024-03-06', 5),
('Crema Facial', 'Cuidado Personal', 6, 2200.00, '2024-03-06', 1),
('Desodorante', 'Cuidado Personal', 14, 600.50, '2024-03-07', 3),
('Pasta Dental', 'Cuidado Personal', 18, 400.50, '2025-03-07', 2),
('Cepillo Dientes Eléctrico', 'Cuidado Personal', 3, 4500.00, '2024-03-08', 4),
('Hilo Dental', 'Cuidado Personal', 12, 300.50, '2022-03-08', 1),
('Enjuague Bucal', 'Cuidado Personal', 10, 700.00, '2024-03-09', 5),
('Rasuradora Eléctrica', 'Cuidado Personal', 2, 6500.00, '2024-03-09', 2),
('Espuma Afeitar', 'Cuidado Personal', 8, 500.50, '2022-03-10', 3),
('Loción Corporal', 'Cuidado Personal', 7, 1200.00, '2024-03-10', 1),
('Perfume 100ml', 'Fragancias', 4, 5500.00, '2023-03-11', 4),
('Colonia Hombre', 'Fragancias', 3, 4200.00, '2024-03-11', 2),
('Set Regalo Perfume', 'Fragancias', 2, 8500.00, '2024-03-12', 5),
('Vela Aromática', 'Hogar', 10, 1200.50, '2024-03-12', 1),
('Difusor Aromas', 'Hogar', 5, 2200.00, '2024-03-13', 3),
('Ambientador Spray', 'Hogar', 12, 600.50, '2024-03-13', 2),
('Jabón Manos', 'Limpieza', 15, 400.50, '2023-03-14', 4),
('Detergente Ropa', 'Limpieza', 8, 1200.00, '2024-03-14', 1),
('Suavizante', 'Limpieza', 7, 900.50, '2024-03-15', 5),
('Lavavajillas Líquido', 'Limpieza', 10, 500.50, '2024-03-15', 2),
('Limpiador Multiusos', 'Limpieza', 12, 600.00, '2024-03-16', 3),
('Desinfectante', 'Limpieza', 10, 800.50, '2024-03-16', 1),
('Papel Higiénico Pack', 'Hogar', 6, 1500.00, '2024-03-17', 4),
('Toallas Papel', 'Hogar', 8, 800.00, '2024-03-17', 2),
('Servilletas Pack', 'Hogar', 10, 400.50, '2024-03-18', 5),
('Bolsas Basura', 'Hogar', 15, 500.50, '2022-03-18', 1),
('Esponja Cocina Pack', 'Limpieza', 20, 300.50, '2024-03-19', 3),
('Guantes Látex', 'Limpieza', 12, 400.00, '2024-03-19', 2),
('Escoba', 'Limpieza', 5, 800.50, '2024-03-20', 4),
('Trapeador', 'Limpieza', 4, 1200.00, '2022-03-20', 1),
('Cubo Fregar', 'Limpieza', 6, 900.50, '2024-03-21', 5),
('Recogedor', 'Limpieza', 7, 600.00, '2024-03-21', 2),
('Cepillo Baño', 'Limpieza', 8, 500.50, '2024-03-22', 3),
('Plumero', 'Limpieza', 6, 700.50, '2023-03-22', 1),
('Paño Microfibra Pack', 'Limpieza', 12, 800.00, '2024-03-23', 4),
('Fregona Microfibra', 'Limpieza', 5, 1200.50, '2024-01-23', 2),
('Dispensador Jabón', 'Baño', 6, 1100.00, '2024-02-24', 5),
('Alfombrilla Baño', 'Baño', 4, 1800.50, '2024-03-24', 1),
('Cortina Ducha', 'Baño', 3, 2200.00, '2024-04-25', 3),
('Toallero Pared', 'Baño', 5, 1500.00, '2024-05-25', 2),
('Jabonera', 'Baño', 8, 700.50, '2024-06-26', 4),
('Vaso Cepillos', 'Baño', 6, 800.50, '2024-07-26', 1),
('Espejo Baño', 'Baño', 2, 3500.00, '2025-08-27', 5),
('Toallas Baño Set', 'Baño', 4, 3200.00, '2024-09-27', 2),
('Batería Cocina', 'Cocina', 2, 9500.00, '2024-10-28', 3),
('Sartén Antiadherente', 'Cocina', 5, 2800.00, '2024-11-28', 1),
('Olla Presión', 'Cocina', 2, 6500.00, '2021-12-29', 4),
('Cazo Acero', 'Cocina', 4, 1800.50, '2024-03-29', 2),
('Wok', 'Cocina', 3, 3200.00, '2024-03-30', 5),
('Colador', 'Cocina', 6, 800.50, '2024-03-30', 1),
('Rallador', 'Cocina', 5, 700.00, '2024-03-31', 3),
('Pelador', 'Cocina', 8, 400.50, '2021-03-31', 2),
('Abrelatas', 'Cocina', 7, 600.00, '2024-04-01', 4),
('Sacacorchos', 'Cocina', 6, 800.50, '2024-04-01', 1),
('Exprimidor', 'Cocina', 4, 1500.00, '2023-04-02', 5),
('Balanza Cocina', 'Cocina', 3, 2200.00, '2024-04-02', 2),
('Timer Cocina', 'Cocina', 5, 900.50, '2024-04-03', 3),
('Guantes Horno', 'Cocina', 8, 1100.00, '2024-04-03', 1),
('Delantal Cocina', 'Cocina', 6, 1400.50, '2024-04-04', 4),
('Mantel Individual Set', 'Cocina', 4, 1800.00, '2022-04-04', 2),
('Vajilla 24 Piezas', 'Cocina', 2, 8500.00, '2024-04-05', 5),
('Platos Postre Set', 'Cocina', 5, 2200.00, '2024-04-05', 1),
('Tazas Café Set', 'Cocina', 6, 2500.00, '2024-04-06', 3),
('Vasos Cristal Set', 'Cocina', 4, 1800.50, '2024-04-06', 2),
('Copas Vino Set', 'Cocina', 3, 3200.00, '2021-04-07', 4),
('Cubiertos 24 Piezas', 'Cocina', 2, 4500.00, '2024-04-07', 1),
('Juego Café', 'Cocina', 2, 5500.00, '2024-04-08', 5),
('Tetera Acero', 'Cocina', 3, 2800.00, '2024-04-08', 2),
('Jarra Agua', 'Cocina', 5, 1200.50, '2024-04-09', 3),
('Salvamanteles', 'Cocina', 8, 600.50, '2024-04-09', 1),
('Bandeja Servir', 'Cocina', 4, 1800.00, '2024-04-10', 4),
('Frutero', 'Cocina', 5, 1500.50, '2024-04-10', 2),
('Azucarero', 'Cocina', 6, 900.50, '2024-04-11', 5),
('Salero Pimentero', 'Cocina', 10, 700.00, '2024-04-11', 1),
('Aceitera Vinagrera', 'Cocina', 4, 1200.00, '2021-04-12', 3),
('Panera', 'Cocina', 5, 1100.50, '2024-04-12', 2),
('Recipientes Herméticos', 'Cocina', 6, 2200.00, '2024-04-13', 4),
('Fiambreras Vidrio', 'Cocina', 8, 1800.50, '2024-04-13', 1),
('Papel Film', 'Cocina', 10, 400.50, '2024-04-14', 5),
('Papel Aluminio', 'Cocina', 8, 500.00, '2024-04-14', 2),
('Bolsas Congelación', 'Cocina', 12, 600.50, '2025-04-15', 3),
('Pinzas Cocina', 'Cocina', 6, 800.00, '2024-04-15', 1),
('Espátula Silicona', 'Cocina', 7, 700.50, '2024-04-16', 4),
('Cuchara Madera', 'Cocina', 9, 500.50, '2024-04-16', 2),
('Batidor Manual', 'Cocina', 5, 900.00, '2024-04-17', 5),
('Rodillo Amasar', 'Cocina', 4, 1200.50, '2024-04-17', 1),
('Moldes Silicona', 'Cocina', 6, 1500.00, '2024-04-18', 3),
('Molde Bizcocho', 'Cocina', 4, 1100.50, '2023-04-18', 2),
('Molde Tarta', 'Cocina', 3, 1400.00, '2024-04-19', 4),
('Brochas Cocina', 'Cocina', 8, 600.50, '2024-04-19', 1),
('Manga Pastelera', 'Cocina', 5, 800.50, '2024-04-20', 5),
('Cortadores Galletas', 'Cocina', 7, 900.50, '2024-04-20', 2),
('Termómetro Cocina', 'Cocina', 3, 1800.00, '2024-04-21', 3),
('Mortero Granito', 'Cocina', 2, 2200.00, '2024-04-21', 1),
('Prensa Ajos', 'Cocina', 6, 700.50, '2024-04-22', 4),
('Deshuesador Aceitunas', 'Cocina', 5, 600.00, '2021-04-22', 2),
('Cortador Pizza', 'Cocina', 7, 500.50, '2024-04-23', 5),
('Espátula Pescado', 'Cocina', 4, 900.00, '2024-04-23', 1),
('Pinzas Ensalada', 'Cocina', 6, 800.50, '2024-04-24', 3),
('Cucharón', 'Cocina', 5, 700.00, '2024-04-24', 2),
('Espumadera', 'Cocina', 5, 800.00, '2024-04-25', 4),
('Cuchillo Chef', 'Cocina', 3, 3500.00, '2021-04-25', 1),
('Cuchillo Pan', 'Cocina', 4, 2200.00, '2024-04-26', 5),
('Cuchillo Pelar', 'Cocina', 6, 1200.50, '2024-04-26', 2),
('Afilador Cuchillos', 'Cocina', 3, 1800.00, '2024-04-27', 3),
('Tijeras Cocina', 'Cocina', 5, 900.50, '2024-04-27', 1),
('Tabla Cortar Bambú', 'Cocina', 4, 2200.00, '2022-04-28', 4),
('Tabla Cortar Plástico', 'Cocina', 6, 1200.00, '2024-04-28', 2),
('Embudo', 'Cocina', 8, 500.50, '2024-04-29', 5),
('Imán Nevera Set', 'Cocina', 10, 800.00, '2024-04-29', 1),
('Reloj Cocina Pared', 'Cocina', 3, 1800.50, '2024-04-30', 3),
('Pizarra Cocina', 'Cocina', 4, 1500.00, '2024-04-30', 2),
('Ganchos Adhesivos', 'Hogar', 15, 400.50, '2022-05-01', 4),
('Organizador Cajón', 'Hogar', 6, 1200.50, '2024-05-01', 1),
('Caja Almacenaje', 'Hogar', 8, 1800.00, '2024-05-02', 5),
('Cesto Mimbre', 'Hogar', 5, 2200.00, '2024-05-02', 2),
('Bolsa Tela Compra', 'Ecológico', 12, 600.50, '2024-05-03', 3),
('Botella Reutilizable', 'Ecológico', 10, 1500.00, '2023-05-03', 1),
('Pajitas Acero', 'Ecológico', 15, 800.50, '2024-05-04', 4),
('Envoltorios Cera', 'Ecológico', 8, 1200.00, '2024-05-04', 2),
('Bolsas Malla', 'Ecológico', 12, 700.50, '2024-05-05', 5),
('Cepillo Bambú', 'Ecológico', 10, 500.50, '2024-05-05', 1),
('Jabón Ecológico', 'Ecológico', 15, 600.00, '2024-05-06', 3),
('Detergente Eco', 'Ecológico', 8, 1400.50, '2023-05-06', 2),
('Compostador', 'Jardín', 2, 6500.00, '2021-05-07', 4),
('Maceta Terracota', 'Jardín', 10, 800.50, '2022-05-07', 1),
('Sustrato Universal', 'Jardín', 12, 700.00, '2023-05-08', 5),
('Semillas Flores', 'Jardín', 15, 400.50, '2025-12-08', 2);

-- Inserta registros en la tabla productos

INSERT INTO productos (nombre, categoria, precio, stock) VALUES
('Caja de herramientas', 'Herramientas', 13002, 457),
('Camisa Oxford', 'Ropa', 13964, 434),
('Esmalte de uñas Revlon', 'Belleza', 20741, 279),
('Pantalón jeans Levi’s', 'Ropa', 7945, 343),
('Puzzle 1000 piezas', 'Juguetes', 35163, 300),
('Shampoo Pantene', 'Belleza', 29877, 149),
('Cámara Canon EOS', 'Electrónica', 12560, 417),
('Colchoneta yoga', 'Deportes', 39910, 163),
('Refrigerador LG', 'Hogar', 34666, 234),
('Gorra New Era', 'Ropa', 41878, 264),
('Mancuernas 10kg', 'Deportes', 21200, 235),
('Zapatillas Nike', 'Deportes', 21069, 125),
('Destornillador Phillips', 'Herramientas', 42255, 312),
('Peluche oso', 'Juguetes', 43612, 42),
('Auto Hot Wheels', 'Juguetes', 23786, 45),
('Té Lipton', 'Alimentos', 38702, 295),
('Muñeca Barbie', 'Juguetes', 27440, 444),
('Peluche oso', 'Juguetes', 46089, 312),
('Vestido floral', 'Ropa', 32934, 30),
('Camisa Oxford', 'Ropa', 30916, 296),
('Abrigo de lana', 'Ropa', 32974, 275),
('Horno eléctrico Oster', 'Hogar', 36950, 200),
('Destornillador Phillips', 'Herramientas', 14184, 155),
('Cinta métrica', 'Herramientas', 14814, 216),
('Bicicleta Trek', 'Deportes', 24365, 491),
('Sierra circular Makita', 'Herramientas', 13152, 200),
('Cinta métrica', 'Herramientas', 35319, 295),
('Pistola de silicona', 'Herramientas', 37082, 257),
('Cuerda para saltar', 'Deportes', 26001, 426),
('Arroz integral', 'Alimentos', 8672, 326),
('Zapatillas Nike', 'Deportes', 16654, 302),
('Cinturón de cuero', 'Ropa', 46390, 363),
('Cortina blackout', 'Hogar', 3533, 133),
('Chaqueta North Face', 'Ropa', 35120, 189),
('Shampoo Pantene', 'Belleza', 20485, 172),
('Parlante JBL', 'Electrónica', 31009, 70),
('Cámara Canon EOS', 'Electrónica', 45856, 51),
('Cereal Kellogg’s', 'Alimentos', 42054, 134),
('Aceite de oliva extra virgen', 'Alimentos', 13248, 145),
('Patines Rollerblade', 'Deportes', 4869, 158),
('Leche descremada', 'Alimentos', 46210, 265),
('Smartphone Xiaomi Redmi', 'Electrónica', 45418, 67),
('Cinturón de cuero', 'Ropa', 46282, 138),
('Colchoneta yoga', 'Deportes', 27452, 499),
('Cuerda para saltar', 'Deportes', 10980, 7),
('Galletas Oreo', 'Alimentos', 41201, 315),
('Té Lipton', 'Alimentos', 6273, 2),
('Abrigo de lana', 'Ropa', 39472, 480),
('Auriculares Sony', 'Electrónica', 39597, 97),
('Caja de herramientas', 'Herramientas', 26082, 181),
('Tablet Lenovo', 'Electrónica', 29155, 24),
('Pantalón jeans Levi’s', 'Ropa', 34338, 498),
('Cuerda para saltar', 'Deportes', 43010, 8),
('Shampoo Pantene', 'Belleza', 17456, 377),
('Café Nescafé', 'Alimentos', 15259, 475),
('Auriculares Sony', 'Electrónica', 33353, 373),
('Set Play-Doh', 'Juguetes', 37874, 88),
('Set Play-Doh', 'Juguetes', 45960, 292),
('Té Lipton', 'Alimentos', 6179, 492),
('Aceite de oliva extra virgen', 'Alimentos', 28642, 310),
('Arroz integral', 'Alimentos', 36951, 486),
('Vestido floral', 'Ropa', 21105, 196),
('Shampoo Pantene', 'Belleza', 40361, 310),
('Cereal Kellogg’s', 'Alimentos', 4580, 464),
('Balón de básquet Spalding', 'Deportes', 3958, 302),
('Mancuernas 10kg', 'Deportes', 49438, 449),
('Pistola de silicona', 'Herramientas', 10943, 40),
('Perfume Chanel N°5', 'Belleza', 5786, 152),
('Abrigo de lana', 'Ropa', 42653, 288),
('Router TP-Link', 'Electrónica', 14942, 214),
('Auto Hot Wheels', 'Juguetes', 5362, 195),
('Bufanda tejida', 'Ropa', 5709, 386),
('Peine profesional', 'Belleza', 6540, 106),
('Refrigerador LG', 'Hogar', 39580, 163),
('Lámpara de pie', 'Hogar', 32287, 247),
('Juego de mesa Uno', 'Juguetes', 45005, 98),
('Monitor LG', 'Electrónica', 27961, 105),
('Esmalte de uñas Revlon', 'Belleza', 46332, 186),
('Secador Remington', 'Belleza', 18494, 117),
('Leche descremada', 'Alimentos', 1872, 220),
('Café Nescafé', 'Alimentos', 35692, 162),
('Cámara Canon EOS', 'Electrónica', 25935, 377),
('Crema hidratante Nivea', 'Belleza', 39796, 197),
('Maquillaje Maybelline', 'Belleza', 25563, 44),
('Pistola de silicona', 'Herramientas', 11018, 450),
('Lámpara de pie', 'Hogar', 48606, 249),
('Juego de mesa Uno', 'Juguetes', 24284, 410),
('Monitor LG', 'Electrónica', 8825, 282),
('Microondas Daewoo', 'Hogar', 48391, 416),
('Sierra circular Makita', 'Herramientas', 43793, 331),
('Martillo Stanley', 'Herramientas', 8326, 414),
('Televisor Samsung 55"', 'Electrónica', 15992, 283),
('Bicicleta Trek', 'Deportes', 37599, 178),
('Casco de ciclismo', 'Deportes', 26175, 148),
('Auto Hot Wheels', 'Juguetes', 20657, 412),
('Aspiradora Electrolux', 'Hogar', 19099, 397),
('Tablet Lenovo', 'Electrónica', 32536, 268),
('Cortina blackout', 'Hogar', 16555, 361),
('Acondicionador Dove', 'Belleza', 40338, 409),
('Cámara Canon EOS', 'Electrónica', 22492, 256),
('Mascarilla facial Garnier', 'Belleza', 19388, 156),
('Aceite de oliva extra virgen', 'Alimentos', 24764, 47),
('Tablet Lenovo', 'Electrónica', 43800, 445),
('Atún en lata', 'Alimentos', 45017, 285),
('Acondicionador Dove', 'Belleza', 2370, 420),
('Microondas Daewoo', 'Hogar', 42260, 148),
('Auriculares Sony', 'Electrónica', 49239, 365),
('Arroz integral', 'Alimentos', 48222, 271),
('Leche descremada', 'Alimentos', 24028, 354),
('Acondicionador Dove', 'Belleza', 27236, 469),
('Cuerda para saltar', 'Deportes', 28683, 60),
('Peine profesional', 'Belleza', 25348, 435),
('Consola PlayStation 5', 'Electrónica', 47089, 190),
('Arroz integral', 'Alimentos', 1071, 199),
('Tablet Lenovo', 'Electrónica', 25413, 319),
('Rompecabezas 3D', 'Juguetes', 44020, 222),
('Shampoo Pantene', 'Belleza', 9806, 125),
('Leche descremada', 'Alimentos', 25961, 212),
('Silla ergonómica', 'Hogar', 24702, 9),
('Casco de ciclismo', 'Deportes', 48577, 398),
('Smartphone Xiaomi Redmi', 'Electrónica', 40695, 355),
('Lavadora Samsung', 'Hogar', 8491, 256),
('Router TP-Link', 'Electrónica', 26136, 185),
('Pasta Barilla', 'Alimentos', 43530, 378),
('Atún en lata', 'Alimentos', 34211, 300),
('Mascarilla facial Garnier', 'Belleza', 40176, 49),
('Nivel láser', 'Herramientas', 44832, 281),
('Pantalón jeans Levi’s', 'Ropa', 5514, 268),
('Polera básica', 'Ropa', 36943, 201),
('Aceite de oliva extra virgen', 'Alimentos', 22678, 156),
('Café Nescafé', 'Alimentos', 42354, 59),
('Auriculares Sony', 'Electrónica', 3466, 98),
('Alicate universal', 'Herramientas', 8729, 28),
('Acondicionador Dove', 'Belleza', 27688, 140),
('Gorra New Era', 'Ropa', 14984, 379),
('Atún en lata', 'Alimentos', 22036, 122),
('Vestido floral', 'Ropa', 11182, 491),
('Arroz integral', 'Alimentos', 45148, 69),
('Arroz integral', 'Alimentos', 37369, 338),
('Casco de ciclismo', 'Deportes', 49819, 193),
('Auriculares Sony', 'Electrónica', 24817, 495),
('Rompecabezas 3D', 'Juguetes', 48366, 163),
('Silla ergonómica', 'Hogar', 17976, 312),
('Chaqueta North Face', 'Ropa', 31523, 376),
('Auriculares Sony', 'Electrónica', 16717, 117),
('Nivel láser', 'Herramientas', 33125, 231),
('Cafetera Nespresso', 'Hogar', 26468, 274),
('Pasta Barilla', 'Alimentos', 26155, 103),
('Sierra circular Makita', 'Herramientas', 27248, 21),
('Acondicionador Dove', 'Belleza', 42472, 193),
('Camisa Oxford', 'Ropa', 12749, 216),
('Acondicionador Dove', 'Belleza', 32386, 3),
('Notebook HP', 'Electrónica', 15627, 262),
('Bicicleta Trek', 'Deportes', 26931, 179),
('Bicicleta Trek', 'Deportes', 4244, 498),
('Nivel láser', 'Herramientas', 12630, 466),
('Polera básica', 'Ropa', 38245, 133),
('Rompecabezas 3D', 'Juguetes', 4061, 281),
('Caja de herramientas', 'Herramientas', 5182, 149),
('Destornillador Phillips', 'Herramientas', 41474, 288),
('Cinta métrica', 'Herramientas', 22086, 285),
('Set Play-Doh', 'Juguetes', 12660, 466),
('Alicate universal', 'Herramientas', 24181, 124),
('Plancha de cabello Philips', 'Belleza', 46986, 477),
('Monitor LG', 'Electrónica', 28257, 345),
('Atún en lata', 'Alimentos', 26942, 197),
('Maquillaje Maybelline', 'Belleza', 34384, 172),
('Pantalón jeans Levi’s', 'Ropa', 41639, 191),
('Leche descremada', 'Alimentos', 5521, 377),
('Pelota Adidas', 'Deportes', 49631, 171),
('Zapatillas Converse', 'Ropa', 18805, 500),
('Atún en lata', 'Alimentos', 12910, 89),
('Nivel láser', 'Herramientas', 21104, 105),
('Chaqueta North Face', 'Ropa', 21964, 453),
('Set Play-Doh', 'Juguetes', 36493, 28),
('Destornillador Phillips', 'Herramientas', 35599, 376),
('Shampoo Pantene', 'Belleza', 9182, 273),
('Mascarilla facial Garnier', 'Belleza', 33243, 27),
('Cámara Canon EOS', 'Electrónica', 4266, 257),
('Nivel láser', 'Herramientas', 27644, 206),
('Pistola de silicona', 'Herramientas', 3666, 313),
('Peine profesional', 'Belleza', 49275, 378),
('Cámara Canon EOS', 'Electrónica', 23135, 225),
('Cereal Kellogg’s', 'Alimentos', 28446, 89),
('Gorra New Era', 'Ropa', 33022, 452),
('Sierra circular Makita', 'Herramientas', 23414, 492),
('Perfume Chanel N°5', 'Belleza', 8878, 83),
('Salsa de tomate Heinz', 'Alimentos', 49790, 82),
('Crema hidratante Nivea', 'Belleza', 45098, 277),
('Taladro Bosch', 'Herramientas', 11562, 402),
('Pasta Barilla', 'Alimentos', 23625, 203),
('Secador Remington', 'Belleza', 14742, 468),
('Caja de herramientas', 'Herramientas', 17766, 290),
('Lavadora Samsung', 'Hogar', 10508, 383),
('Sierra circular Makita', 'Herramientas', 39174, 195),
('Caja de herramientas', 'Herramientas', 23000, 133),
('Abrigo de lana', 'Ropa', 12164, 219),
('Arroz integral', 'Alimentos', 14543, 109),
('Pantalón jeans Levi’s', 'Ropa', 20095, 57),
('Perfume Chanel N°5', 'Belleza', 40301, 474),
('Arroz integral', 'Alimentos', 25431, 398),
('Horno eléctrico Oster', 'Hogar', 18748, 465),
('Lavadora Samsung', 'Hogar', 18312, 232),
('Peluche oso', 'Juguetes', 49993, 246),
('Plancha de cabello Philips', 'Belleza', 48552, 214),
('Cuerda para saltar', 'Deportes', 4668, 241),
('Guantes de boxeo Everlast', 'Deportes', 17520, 238),
('Pasta Barilla', 'Alimentos', 22301, 234),
('Plancha de cabello Philips', 'Belleza', 49615, 11),
('Acondicionador Dove', 'Belleza', 40082, 274),
('Monitor LG', 'Electrónica', 3161, 174),
('Horno eléctrico Oster', 'Hogar', 1617, 50),
('Perfume Chanel N°5', 'Belleza', 34279, 21),
('Pantalón jeans Levi’s', 'Ropa', 6389, 459),
('Juego de mesa Uno', 'Juguetes', 38268, 228),
('Mascarilla facial Garnier', 'Belleza', 43152, 375),
('Bufanda tejida', 'Ropa', 10378, 191),
('Bicicleta Trek', 'Deportes', 33398, 191),
('Bicicleta Trek', 'Deportes', 20478, 294),
('Caja de herramientas', 'Herramientas', 25718, 18),
('Sierra circular Makita', 'Herramientas', 12884, 419),
('Galletas Oreo', 'Alimentos', 27028, 201),
('Zapatillas Nike', 'Deportes', 25406, 233),
('Cámara Canon EOS', 'Electrónica', 14076, 448),
('Zapatillas Nike', 'Deportes', 17993, 36),
('Salsa de tomate Heinz', 'Alimentos', 3655, 385),
('Peine profesional', 'Belleza', 36148, 365),
('Cafetera Nespresso', 'Hogar', 37199, 283),
('Alicate universal', 'Herramientas', 27966, 482),
('Mesa de comedor', 'Hogar', 39923, 67),
('Aspiradora Electrolux', 'Hogar', 15532, 307),
('Puzzle 1000 piezas', 'Juguetes', 12330, 367),
('Leche descremada', 'Alimentos', 48449, 268),
('Martillo Stanley', 'Herramientas', 5535, 269),
('Cereal Kellogg’s', 'Alimentos', 5880, 473),
('Parlante JBL', 'Electrónica', 7145, 209),
('Mascarilla facial Garnier', 'Belleza', 42423, 214),
('Guantes de boxeo Everlast', 'Deportes', 16281, 300),
('Peluche oso', 'Juguetes', 23467, 226),
('Pelota Adidas', 'Deportes', 48143, 83),
('Leche descremada', 'Alimentos', 43436, 426),
('Smartphone Xiaomi Redmi', 'Electrónica', 15995, 311),
('Cortina blackout', 'Hogar', 14073, 226),
('Cámara Canon EOS', 'Electrónica', 32274, 428),
('Salsa de tomate Heinz', 'Alimentos', 11317, 132),
('Consola PlayStation 5', 'Electrónica', 10359, 477),
('Rompecabezas 3D', 'Juguetes', 45238, 219),
('Cortina blackout', 'Hogar', 21522, 243),
('Leche descremada', 'Alimentos', 48593, 222),
('Abrigo de lana', 'Ropa', 21624, 194);

-- Inserta 180 registros en la tabla de pedidos

INSERT INTO pedidos (cliente, fecha_pedido, total_pedido, estado_pedido) VALUES
('María González', '2021-01-02', 125000, 'Pendiente'),
('Juan Pérez', '2022-01-03', 98000, 'Procesando'),
('Camila Rojas', '2023-01-04', 210000, 'Enviado'),
('Felipe Torres', '2024-01-05', 450000, 'Entregado'),
('Valentina Díaz', '2025-01-06', 83000, 'Cancelado'),
('Andrés Silva', '2021-01-07', 315000, 'Pendiente'),
('Francisca Morales', '2021-01-08', 270000, 'Procesando'),
('Sebastián Castro', '2022-01-09', 140000, 'Enviado'),
('Daniela Fuentes', '2024-01-10', 195000, 'Entregado'),
('Carlos Ramírez', '2024-01-11', 220000, 'Pendiente'),
('Ignacio Herrera', '2024-01-12', 310000, 'Procesando'),
('Constanza Reyes', '2024-01-13', 165000, 'Enviado'),
('Tomás Martínez', '2024-01-14', 285000, 'Entregado'),
('Fernanda Soto', '2022-01-15', 95000, 'Cancelado'),
('Diego Navarro', '2024-01-16', 420000, 'Pendiente'),
('Catalina Vargas', '2024-01-17', 260000, 'Procesando'),
('Matías López', '2024-01-18', 340000, 'Enviado'),
('Antonia Flores', '2023-01-19', 155000, 'Entregado'),
('Rodrigo Araya', '2024-01-20', 375000, 'Pendiente'),
('Javiera Ortiz', '2024-01-21', 89000, 'Procesando'),
('Marcelo Campos', '2024-01-22', 450000, 'Enviado'),
('Sofía Castillo', '2023-01-23', 215000, 'Entregado'),
('Nicolás Vega', '2024-01-24', 95000, 'Cancelado'),
('Isidora Cabrera', '2024-01-25', 280000, 'Pendiente'),
('Felipe Morales', '2025-01-26', 180000, 'Procesando'),
('Paula Contreras', '2025-01-27', 220000, 'Enviado'),
('Ricardo Gutiérrez', '2024-01-28', 330000, 'Entregado'),
('Camilo Pizarro', '2024-01-29', 190000, 'Pendiente'),
('Carolina Aguilar', '2024-01-30', 295000, 'Procesando'),
('Gabriel Reyes', '2024-01-31', 145000, 'Enviado'),
('María González', '2025-02-02', 175000, 'Entregado'),
('Juan Pérez', '2024-02-03', 220000, 'Cancelado'),
('Camila Rojas', '2024-02-04', 340000, 'Pendiente'),
('Felipe Torres', '2024-02-05', 265000, 'Procesando'),
('Valentina Díaz', '2024-02-06', 110000, 'Enviado'),
('Andrés Silva', '2023-02-07', 300000, 'Entregado'),
('Francisca Morales', '2024-02-08', 410000, 'Pendiente'),
('Sebastián Castro', '2024-02-09', 275000, 'Procesando'),
('Daniela Fuentes', '2024-02-10', 370000, 'Enviado'),
('Carlos Ramírez', '2022-02-11', 89000, 'Cancelado'),
('Ignacio Herrera', '2024-02-12', 280000, 'Pendiente'),
('Constanza Reyes', '2024-02-13', 315000, 'Procesando'),
('Tomás Martínez', '2023-02-14', 155000, 'Enviado'),
('Fernanda Soto', '2024-02-15', 205000, 'Entregado'),
('Diego Navarro', '2024-02-16', 195000, 'Pendiente'),
('Catalina Vargas', '2023-02-17', 490000, 'Procesando'),
('Matías López', '2024-02-18', 165000, 'Enviado'),
('Antonia Flores', '2024-02-19', 250000, 'Entregado'),
('Rodrigo Araya', '2023-02-20', 345000, 'Pendiente'),
('Javiera Ortiz', '2024-02-21', 140000, 'Procesando'),
('Marcelo Campos', '2023-02-22', 210000, 'Enviado'),
('Sofía Castillo', '2024-02-23', 260000, 'Entregado'),
('Nicolás Vega', '2024-02-24', 95000, 'Cancelado'),
('Isidora Cabrera', '2025-02-25', 335000, 'Pendiente'),
('Felipe Morales', '2025-02-26', 125000, 'Procesando'),
('Paula Contreras', '2025-02-27', 455000, 'Enviado'),
('Ricardo Gutiérrez', '2024-02-28', 175000, 'Entregado'),
('Camilo Pizarro', '2024-03-01', 295000, 'Pendiente'),
('Carolina Aguilar', '2025-03-02', 380000, 'Procesando'),
('Gabriel Reyes', '2024-03-03', 205000, 'Enviado'),
('María González', '2024-03-04', 250000, 'Entregado'),
('Juan Pérez', '2021-03-05', 115000, 'Pendiente'),
('Camila Rojas', '2024-03-06', 275000, 'Procesando'),
('Felipe Torres', '2024-03-07', 365000, 'Enviado'),
('Valentina Díaz', '2024-03-08', 95000, 'Entregado'),
('Andrés Silva', '2021-03-09', 245000, 'Cancelado'),
('Francisca Morales', '2024-03-10', 310000, 'Pendiente'),
('Sebastián Castro', '2024-03-11', 335000, 'Procesando'),
('Daniela Fuentes', '2024-03-12', 410000, 'Enviado'),
('Carlos Ramírez', '2022-03-13', 220000, 'Entregado'),
('Ignacio Herrera', '2024-03-14', 130000, 'Pendiente'),
('Constanza Reyes', '2024-03-15', 180000, 'Procesando'),
('Tomás Martínez', '2022-03-16', 200000, 'Enviado'),
('Fernanda Soto', '2024-03-17', 310000, 'Entregado'),
('Diego Navarro', '2024-03-18', 270000, 'Cancelado'),
('Catalina Vargas', '2024-03-19', 350000, 'Pendiente'),
('Matías López', '2024-03-20', 195000, 'Procesando'),
('Antonia Flores', '2023-03-21', 275000, 'Enviado'),
('Rodrigo Araya', '2024-03-22', 490000, 'Entregado'),
('Javiera Ortiz', '2024-03-23', 155000, 'Pendiente'),
('Marcelo Campos', '2024-03-24', 320000, 'Procesando'),
('Sofía Castillo', '2023-03-25', 285000, 'Enviado'),
('Nicolás Vega', '2024-03-26', 210000, 'Entregado'),
('Isidora Cabrera', '2024-03-27', 98000, 'Cancelado'),
('Felipe Morales', '2024-03-28', 330000, 'Pendiente'),
('Paula Contreras', '2022-03-29', 450000, 'Procesando'),
('Ricardo Gutiérrez', '2024-03-30', 160000, 'Enviado'),
('Camilo Pizarro', '2024-03-31', 295000, 'Entregado'),
('Carolina Aguilar', '2024-04-01', 250000, 'Pendiente'),
('Gabriel Reyes', '2024-04-02', 180000, 'Procesando'),
('María González', '2022-04-03', 470000, 'Enviado'),
('Juan Pérez', '2024-04-04', 235000, 'Entregado'),
('Camila Rojas', '2024-04-05', 285000, 'Cancelado'),
('Felipe Torres', '2024-04-06', 310000, 'Pendiente'),
('Valentina Díaz', '2024-04-07', 260000, 'Procesando'),
('Andrés Silva', '2024-04-08', 215000, 'Enviado'),
('Francisca Morales', '2024-04-09', 490000, 'Entregado'),
('Sebastián Castro', '2024-04-10', 175000, 'Pendiente'),
('Daniela Fuentes', '2025-04-11', 195000, 'Procesando'),
('Carlos Ramírez', '2023-04-12', 350000, 'Enviado');

-- CUENTA CUANTOS EMPLEADOS HAY EN CADA CIUDAD
SELECT ciudad, COUNT(*) as personas
    FROM personal
    GROUP BY ciudad; 

-- SE REQUIERE CONTABILIZAR LA CANTIDAD DE PEDIDOS QUE A REALIZADO CADA CLIENTE
SELECT cliente, COUNT(id) as total_pedidos
    FROM pedidos 
    GROUP BY cliente; 

-- CALCULAR EL MONTO TOTAL DE COMPRAS DE CADA CLIENTE POR CONCEPTO DE PEDIDOS, DE AQUELLOS CLIENTES QUE ACUMULEN PEDIDOS POR OSBRE $1.000.000
SELECT cliente, SUM(total_pedido) as gasto_total
    FROM pedidos
    GROUP BY cliente
    HAVING gasto_total > 1000000;