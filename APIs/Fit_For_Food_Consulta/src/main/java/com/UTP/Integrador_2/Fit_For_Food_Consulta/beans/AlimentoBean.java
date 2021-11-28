package com.UTP.Integrador_2.Fit_For_Food_Consulta.beans;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class AlimentoBean {
    private int id;
    private String nombre;
    private String tipo;
    private float calorias;
    private String objetivoRelacionado;
    private byte gradoRecomendacion;
    private String imagenURL;
}
