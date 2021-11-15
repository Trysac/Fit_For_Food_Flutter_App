package com.UTP.Integrador_2.Fit_For_Food_Consulta.beans;

import lombok.Getter;
import lombok.Setter;
import java.util.Date;

@Getter
@Setter
public class PagoBean {
    private int id;
    private int idUsuario;
    private float monto;
    private Date fechaPago;
    private String medioPago;
    private byte estadoPago;
}
