package com.UTP.Integrador_2.Fit_For_Food_Consulta.beans.beansInternos;

import lombok.Getter;
import lombok.Setter;

import java.sql.Date;
import java.util.List;

@Getter
@Setter
public class RegistroCaloriasBean {
    private float consumoClorico;
    private Date fechaRegistro;
    private List<ConsumoAlimento> alimentosDelDia;
}
