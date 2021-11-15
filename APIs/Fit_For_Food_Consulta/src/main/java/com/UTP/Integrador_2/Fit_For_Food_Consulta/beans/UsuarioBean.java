package com.UTP.Integrador_2.Fit_For_Food_Consulta.beans;

import lombok.Getter;
import lombok.Setter;
import java.util.Date;

@Getter
@Setter
public class UsuarioBean {
    private Long id;
    private String correo;
    private String contraseña;
    private Date fechaCreacion;
    private Date fechaUltimoInicioSesion;
    private String codigoSesion;
    private String fechaUltimoCambioContraseña;
}
