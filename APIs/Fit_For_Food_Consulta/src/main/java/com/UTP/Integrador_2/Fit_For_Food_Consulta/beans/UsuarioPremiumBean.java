package com.UTP.Integrador_2.Fit_For_Food_Consulta.beans;

import lombok.Getter;
import lombok.Setter;
import java.util.Date;

@Getter
@Setter
public class UsuarioPremiumBean {
    private int id;
    private int idUsuario;
    private Date fechaRenovacion;
    private Date fechaUltimaSuscripcion;
    private String historicoSuscripcion;
    private byte estadoSuscripcion;
}
