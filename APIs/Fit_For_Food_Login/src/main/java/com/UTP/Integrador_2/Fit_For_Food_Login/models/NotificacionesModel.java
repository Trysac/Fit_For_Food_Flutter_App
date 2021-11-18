package com.UTP.Integrador_2.Fit_For_Food_Login.models;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;

@Entity(name = "notificaciones")
@Table(name = "notificaciones")
@Getter
@Setter
public class NotificacionesModel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID", unique = true, nullable = false)
    private int id;

    @Column(name = "ID_Usuario", unique = true, nullable = false)
    private int idUsuario;

    @Column(name = "Configuracion")
    private String configuracionNotificaciones;

    @Column(name = "Num_Notificaciones_Config")
    private short numeroNotificacionesConfiguradas;

}
