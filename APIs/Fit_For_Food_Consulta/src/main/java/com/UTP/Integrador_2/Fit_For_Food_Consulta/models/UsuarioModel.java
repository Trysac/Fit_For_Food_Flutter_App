package com.UTP.Integrador_2.Fit_For_Food_Consulta.models;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "usuario")
@Getter
@Setter
public class UsuarioModel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID", unique = true, nullable = false)
    private int id;

    @Column(name = "Correo", unique = true, nullable = false)
    private String correo;

    @Column(name = "Contraseña", nullable = false)
    private String contraseña;

    @Column(name = "Fecha_Creacion", nullable = false)
    private Date fechaCreacion;

    @Column(name = "Fecha_Ultimo_InitSesion")
    private Date fechaUltimoInicioSesion;

    @Column(name = "Codigo_Sesion", unique = true)
    private String codigoSesion;

    @Column(name = "Fecha_UltiCambio_Contraseña")
    private String fechaUltimoCambioContraseña;

    @Column(name = "Calorias_Diarias", nullable = false)
    private double caloriasDiarias;

}
