package com.UTP.Integrador_2.Fit_For_Food_Login.models;

import javax.persistence.*;

@Entity
@Table(name = "notificaciones")
public class NotificacionesModel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(unique = true, nullable = false)
    private int id;

    @Column(unique = true, nullable = false)
    private int idUsuario;

    @Column()
    private String configuracionNotificaciones;

    @Column()
    private short numeroNotificacionesConfiguradas;


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

    public String getConfiguracionNotificaciones() {
        return configuracionNotificaciones;
    }

    public void setConfiguracionNotificaciones(String configuracionNotificaciones) {
        this.configuracionNotificaciones = configuracionNotificaciones;
    }

    public short getNumeroNotificacionesConfiguradas() {
        return numeroNotificacionesConfiguradas;
    }

    public void setNumeroNotificacionesConfiguradas(short numeroNotificacionesConfiguradas) {
        this.numeroNotificacionesConfiguradas = numeroNotificacionesConfiguradas;
    }
}
