package com.UTP.Integrador_2.Fit_For_Food_Consulta.beans;

import lombok.Getter;
import lombok.Setter;
import java.util.Date;

@Getter
@Setter
public class CaloriasBean {
//    private int id;
//    private int idUsuario;
//    private float caloriasDiarias;
//    private float promedioCaloriasConsumidas;
//    private String objetivoCalorico;
//    private String registrosConsumoCalorias;
//    private Date fechaPrimerRegistro;

    private int id;
    private int idUsuario;
    private float calorias;
    private short dia;
    private short mes;
    private short año;
    private int medida;
    private String nombre;
    private String tipo;
    private String imagenURL;

}
