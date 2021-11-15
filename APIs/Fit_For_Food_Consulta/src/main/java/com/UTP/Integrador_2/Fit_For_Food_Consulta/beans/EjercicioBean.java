package com.UTP.Integrador_2.Fit_For_Food_Consulta.beans;

import lombok.Getter;
import lombok.Setter;
import java.util.Date;

@Getter
@Setter
public class EjercicioBean {
    private int id;
    private int idUsuario;
    private byte numeroDiasSemanaProyectados;
    private float promedioSemanalDiasEjercicio;
    private Date ultimoRegistroEjercicio;
    private String registrosEjercicio;
}
