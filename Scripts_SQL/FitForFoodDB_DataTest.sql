#Script de datos de pruebas para proyecto "Fit For Food"

#Datos Tabla alimento
INSERT INTO alimento
(Nombre, Tipo, Calorias, Objetivo_Cal_Relacionado, Grado_Recomendacion)
VALUES('Manzana', 'fruta', 80, 'mantenimiento', 2);

INSERT INTO alimento
(Nombre, Tipo, Calorias, Objetivo_Cal_Relacionado, Grado_Recomendacion)
VALUES('Pera', 'fruta', 100, 'mantenimiento', 2);

INSERT INTO alimento
(Nombre, Tipo, Calorias, Objetivo_Cal_Relacionado, Grado_Recomendacion)
VALUES('Tomate', 'fruta', 40, 'NA', 3);

INSERT INTO alimento
(Nombre, Tipo, Calorias, Objetivo_Cal_Relacionado, Grado_Recomendacion)
VALUES('Brocoli', 'verdura', 60, 'NA', 3);

INSERT INTO alimento
(Nombre, Tipo, Calorias, Objetivo_Cal_Relacionado, Grado_Recomendacion)
VALUES('Nueces', 'snack', 350, 'superavit', 3);


#Datos Tabla calorias
INSERT INTO calorias
(ID_Usuario, Cal_Diarias, Objetivo, Registro_Calorias, Fecha_PrimerRegistro, Prom_Calorias_Consumidas)
VALUES(2, 2000, 'mantenimiento', '[{"descripcion":"calorias","fecha":"12/10/2021"}{"descripcion":"calorias","fecha":"12/10/2021"},{"descripcion":"calorias","fecha":"12/10/2021"}]', CURDATE(), 2200);

INSERT INTO calorias
(ID_Usuario, Cal_Diarias, Objetivo, Registro_Calorias, Fecha_PrimerRegistro, Prom_Calorias_Consumidas)
VALUES(3, 1800, 'deficit', '[{"descripcion":"calorias","fecha":"12/10/2021"}{"descripcion":"calorias","fecha":"12/10/2021"},{"descripcion":"calorias","fecha":"12/10/2021"}]', CURDATE(), 1750);

INSERT INTO calorias
(ID_Usuario, Cal_Diarias, Objetivo, Registro_Calorias, Fecha_PrimerRegistro, Prom_Calorias_Consumidas)
VALUES(4, 3000, 'superavit', '[{"descripcion":"calorias","fecha":"12/10/2021"}{"descripcion":"calorias","fecha":"12/10/2021"},{"descripcion":"calorias","fecha":"12/10/2021"}]', CURDATE(), 2960.20);


#Datos Tabla consumo_agua
INSERT INTO consumo_agua
(ID_Usuario, Consumo_Diario, Registro_Consumo, Fecha_PrimerRegistro, Prom_Consumo)
VALUES(2, 3.0, '[{"descripcion":"agua","fecha":"12/10/2021"}{"descripcion":"agua","fecha":"12/10/2021"},{"descripcion":"agua","fecha":"12/10/2021"}]', CURDATE(), 2.3);

INSERT INTO consumo_agua
(ID_Usuario, Consumo_Diario, Registro_Consumo, Fecha_PrimerRegistro, Prom_Consumo)
VALUES(3, 5.0, '[{"descripcion":"agua","fecha":"12/10/2021"}{"descripcion":"agua","fecha":"12/10/2021"},{"descripcion":"agua","fecha":"12/10/2021"}]', CURDATE(), 5.5);

INSERT INTO consumo_agua
(ID_Usuario, Consumo_Diario, Registro_Consumo, Fecha_PrimerRegistro, Prom_Consumo)
VALUES(4, 6.0, '[{"descripcion":"agua","fecha":"12/10/2021"}{"descripcion":"agua","fecha":"12/10/2021"},{"descripcion":"agua","fecha":"12/10/2021"}]', CURDATE(), 7.0);


#Datos Tabla ejercicio
INSERT INTO ejercicio
(ID_Usuario, Num_Dias_Semana_Proyectados, Registro_Ejercicio, Fecha_PrimerRegistro, Prom_Ejercicio_Semana)
VALUES(2, 5, '[{"descripcion":"ejercicio","fecha":"12/10/2021"}{"descripcion":"ejercicio","fecha":"12/10/2021"},{"descripcion":"ejercicio","fecha":"12/10/2021"}]', CURDATE(), 4);

INSERT INTO ejercicio
(ID_Usuario, Num_Dias_Semana_Proyectados, Registro_Ejercicio, Fecha_PrimerRegistro, Prom_Ejercicio_Semana)
VALUES(3, 5, '[{"descripcion":"ejercicio","fecha":"12/10/2021"}{"descripcion":"ejercicio","fecha":"12/10/2021"},{"descripcion":"ejercicio","fecha":"12/10/2021"}]', CURDATE(), 5);

INSERT INTO ejercicio
(ID_Usuario, Num_Dias_Semana_Proyectados, Registro_Ejercicio, Fecha_PrimerRegistro, Prom_Ejercicio_Semana)
VALUES(4, 7, '[{"descripcion":"ejercicio","fecha":"12/10/2021"}{"descripcion":"ejercicio","fecha":"12/10/2021"},{"descripcion":"ejercicio","fecha":"12/10/2021"}]', CURDATE(), 6);


#Datos Tabla notificaciones
INSERT INTO notificaciones
(ID_Usuario, Configuracion, Num_Notificaciones_Config)
VALUES(1, '[{"descripcion":"configuration"},{"descripcion":"configuration"},{"descripcion":"configuration"}]', 3);

INSERT INTO notificaciones
(ID_Usuario, Configuracion, Num_Notificaciones_Config)
VALUES(2, null, 0);

INSERT INTO notificaciones
(ID_Usuario, Configuracion, Num_Notificaciones_Config)
VALUES(3, '[{"descripcion":"configuration"},{"descripcion":"configuration"}]', 2);

INSERT INTO notificaciones
(ID_Usuario, Configuracion, Num_Notificaciones_Config)
VALUES(4, '[{"descripcion":"configuration"}]', 1);


#Datos Tabla pago
INSERT INTO pago
(ID_Usuario, Monto, Fecha, Medio_Pago, Estado)
VALUES(4, 29.90, CURDATE(), 'Google Play', 0);


#Datos Tabla usuario
INSERT INTO usuario
(Correo, `ContraseÃ±a`, Fecha_Creacion, Fecha_Ultimo_InitSesion, `CÃ³digo_Sesion`, `Fecha_UltiCambio_ContraseÃ±a`)
VALUES('Prueba@gmail.com', 'prueba', CURDATE() , NULL, NULL, '12/10/2021');

INSERT INTO usuario
(Correo, `ContraseÃ±a`, Fecha_Creacion, Fecha_Ultimo_InitSesion, `CÃ³digo_Sesion`, `Fecha_UltiCambio_ContraseÃ±a`)
VALUES('Prueba_2@gmail.com', 'prueba_2', CURDATE() , CURDATE(), NULL, CURDATE());

INSERT INTO usuario
(Correo, `ContraseÃ±a`, Fecha_Creacion, Fecha_Ultimo_InitSesion, `CÃ³digo_Sesion`, `Fecha_UltiCambio_ContraseÃ±a`)
VALUES('admin@gmail.com', 'admin', CURDATE() , CURDATE(), NULL, CURDATE());

INSERT INTO usuario
(Correo, `ContraseÃ±a`, Fecha_Creacion, Fecha_Ultimo_InitSesion, `CÃ³digo_Sesion`, `Fecha_UltiCambio_ContraseÃ±a`)
VALUES('utp@gmail.com', 'utp', CURDATE() , CURDATE(), NULL, CURDATE());


#Datos Tabla usuario_premium
INSERT INTO usuario_premium
(ID_Usuario, Fecha_Suscripcion, Fecha_Renovacion, Historico, Estado)
VALUES(4, CURDATE(), CURDATE(), 'Primera Suscripcion', 1);


