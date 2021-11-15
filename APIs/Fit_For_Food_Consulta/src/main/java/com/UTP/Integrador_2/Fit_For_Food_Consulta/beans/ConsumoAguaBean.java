package com.UTP.Integrador_2.Fit_For_Food_Consulta.beans;

import lombok.Getter;
import lombok.Setter;
import java.util.Date;

@Getter
@Setter
public class ConsumoAguaBean {
    private int id;
    private int idUsuario;
    private float consumoDiario;
    private float PromedioconsumoDiario;
    private String registrosConsumoAgua;
    private Date fechaPrimerRegistro;
}
