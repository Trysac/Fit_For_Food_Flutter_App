package com.UTP.Integrador_2.Fit_For_Food_Login.models;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "usuario")
public class UsuarioModel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(unique = true, nullable = false)
    private int id;

    @Column(unique = true, nullable = false)
    private String correo;

    @Column(nullable = false)
    private String contraseña;

    @Column(nullable = false)
    private Date fechaCreacion;

    @Column()
    private Date fechaUltimoInicioSesion;

    @Column(unique = true)
    private String codigoSesion;

    @Column()
    private String fechaUltimoCambioContraseña;



    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getContraseña() {
        return contraseña;
    }

    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
    }

    public Date getFechaCreacion() {
        return fechaCreacion;
    }

    public void setFechaCreacion(Date fechaCreacion) {
        this.fechaCreacion = fechaCreacion;
    }

    public Date getFechaUltimoInicioSesion() {
        return fechaUltimoInicioSesion;
    }

    public void setFechaUltimoInicioSesion(Date fechaUltimoInicioSesion) {
        this.fechaUltimoInicioSesion = fechaUltimoInicioSesion;
    }

    public String getCodigoSesion() {
        return codigoSesion;
    }

    public void setCodigoSesion(String codigoSesion) {
        this.codigoSesion = codigoSesion;
    }

    public String getFechaUltimoCambioContraseña() {
        return fechaUltimoCambioContraseña;
    }

    public void setFechaUltimoCambioContraseña(String fechaUltimoCambioContraseña) {
        this.fechaUltimoCambioContraseña = fechaUltimoCambioContraseña;
    }
}
