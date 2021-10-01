package com.UTP.Integrador_2.Fit_For_Food_Consulta.models;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "usuario_premium")
public class UsuarioPremiumModel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(unique = true, nullable = false)
    private int id;

    @Column(unique = true, nullable = false)
    private int idUsuario;

    @Column()
    private Date fechaRenovacion;

    @Column()
    private Date fechaUltimaSuscripcion;

    @Column()
    private String historicoSuscripcion;

    //TRUE=activa
    @Column(nullable = false)
    private byte estadoSuscripcion;



    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public Date getFechaRenovacion() {
        return fechaRenovacion;
    }

    public void setFechaRenovacion(Date fechaRenovacion) {
        this.fechaRenovacion = fechaRenovacion;
    }

    public Date getFechaUltimaSuscripcion() {
        return fechaUltimaSuscripcion;
    }

    public void setFechaUltimaSuscripcion(Date fechaUltimaSuscripcion) {
        this.fechaUltimaSuscripcion = fechaUltimaSuscripcion;
    }

    public String getHistoricoSuscripcion() {
        return historicoSuscripcion;
    }

    public void setHistoricoSuscripcion(String historicoSuscripcion) {
        this.historicoSuscripcion = historicoSuscripcion;
    }

    public boolean getEstadoSuscripcion() {
        if (estadoSuscripcion == 0){
            return true;
        }else{
            return false;
        }
    }

    public void setEstadoSuscripcion(boolean estado) {
        if (estado){
            this.estadoSuscripcion = 0;
        }else{
            this.estadoSuscripcion = 1;
        }
    }
}
