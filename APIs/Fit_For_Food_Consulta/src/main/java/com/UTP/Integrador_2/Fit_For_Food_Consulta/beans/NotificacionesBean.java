package com.UTP.Integrador_2.Fit_For_Food_Consulta.beans;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class NotificacionesBean {
    private int id;
    private int idUsuario;
    private String configuracionNotificaciones;
    private short numeroNotificacionesConfiguradas;
}
