CREATE TABLE `Usuario` (
	`ID` INT NOT NULL AUTO_INCREMENT,
	`Correo` varchar(80) NOT NULL UNIQUE,
	`Contraseña` varchar(20) NOT NULL,
	`Fecha_Creacion` DATETIME NOT NULL,
	`Fecha_Ultimo_InitSesion` DATETIME,
	`Código_Sesion` varchar(10) UNIQUE,
	`Fecha_UltiCambio_Contraseña` varchar(10),
	PRIMARY KEY (`ID`)
);

CREATE TABLE `Calorias` (
	`ID_Registro` INT NOT NULL AUTO_INCREMENT,
	`ID_Usuario` INT NOT NULL UNIQUE,
	`Cal_Diarias` FLOAT,
	`Objetivo` varchar(20) NOT NULL,
	`Registro_Calorias` TEXT,
	`Fecha_PrimerRegistro` DATE,
	`Prom_Calorias_Consumidas` FLOAT,
	PRIMARY KEY (`ID_Registro`)
);

CREATE TABLE `Registros_Calorias` (
	`ID_Registro` INT NOT NULL AUTO_INCREMENT,
	`ID_Usuario` INT NOT NULL UNIQUE,
	`Cal_dia` INT,
	`Cal_mes` INT,
	`Cal_año` INT,
	`Cal_medida` INT,
	`Cal_calorias` FLOAT,
	`Cal_nombre` varchar(100) NOT NULL,
	`Cal_tipo` varchar(100),
	`Cal_imagenURL` varchar(100),
	PRIMARY KEY (`ID_Registro`)
);

CREATE TABLE `Consumo_Agua` (
	`ID_Registro` INT NOT NULL AUTO_INCREMENT,
	`ID_Usuario` INT NOT NULL UNIQUE,
	`Consumo_Diario` FLOAT,
	`Registro_Consumo` TEXT,
	`Fecha_PrimerRegistro` DATE,
	`Prom_Consumo` FLOAT,
	PRIMARY KEY (`ID_Registro`)
);

CREATE TABLE `Ejercicio` (
	`ID_Registro` INT NOT NULL AUTO_INCREMENT,
	`ID_Usuario` INT NOT NULL UNIQUE,
	`Num_Dias_Semana_Proyectados` INT(1),
	`Registro_Ejercicio` TEXT,
	`Fecha_PrimerRegistro` DATE,
	`Prom_Ejercicio_Semana` FLOAT,
	PRIMARY KEY (`ID_Registro`)
);

CREATE TABLE `Usuario_Premium` (
	`ID_Membresia` INT NOT NULL AUTO_INCREMENT,
	`ID_Usuario` INT NOT NULL,
	`Fecha_Suscripcion` DATE,
	`Fecha_Renovacion` DATE,
	`Historico` TEXT,
	`Estado` BOOLEAN NOT NULL,
	PRIMARY KEY (`ID_Membresia`)
);

CREATE TABLE `Pago` (
	`ID_Pago` INT NOT NULL AUTO_INCREMENT,
	`ID_Usuario` INT NOT NULL,
	`Monto` FLOAT NOT NULL,
	`Fecha` DATE NOT NULL,
	`Medio_Pago` varchar(20) NOT NULL,
	`Estado` BOOLEAN NOT NULL,
	PRIMARY KEY (`ID_Pago`)
);

CREATE TABLE `Alimento` (
	`ID` INT NOT NULL AUTO_INCREMENT,
	`Nombre` varchar(50) NOT NULL UNIQUE,
	`Tipo` varchar(30) NOT NULL,
	`ImagenURL` varchar(100),
	`Calorias` FLOAT(8) NOT NULL,
	`Objetivo_Cal_Relacionado` varchar(40) NOT NULL,
	`Grado_Recomendacion` INT(1) NOT NULL,
	PRIMARY KEY (`ID`)
);

CREATE TABLE `Notificaciones` (
	`ID` INT NOT NULL AUTO_INCREMENT,
	`ID_Usuario` INT NOT NULL,
	`Configuracion` TEXT,
	`Num_Notificaciones_Config` INT,
	PRIMARY KEY (`ID`)
);

ALTER TABLE `Calorias` ADD CONSTRAINT `Calorias_fk0` FOREIGN KEY (`ID_Usuario`) REFERENCES `Usuario`(`ID`);

ALTER TABLE `Consumo_Agua` ADD CONSTRAINT `Consumo_Agua_fk0` FOREIGN KEY (`ID_Usuario`) REFERENCES `Usuario`(`ID`);

ALTER TABLE `Ejercicio` ADD CONSTRAINT `Ejercicio_fk0` FOREIGN KEY (`ID_Usuario`) REFERENCES `Usuario`(`ID`);

ALTER TABLE `Usuario_Premium` ADD CONSTRAINT `Usuario_Premium_fk0` FOREIGN KEY (`ID_Usuario`) REFERENCES `Usuario`(`ID`);

ALTER TABLE `Pago` ADD CONSTRAINT `Pago_fk0` FOREIGN KEY (`ID_Usuario`) REFERENCES `Usuario`(`ID`);

ALTER TABLE `Notificaciones` ADD CONSTRAINT `Notificaciones_fk0` FOREIGN KEY (`ID_Usuario`) REFERENCES `Usuario`(`ID`);









