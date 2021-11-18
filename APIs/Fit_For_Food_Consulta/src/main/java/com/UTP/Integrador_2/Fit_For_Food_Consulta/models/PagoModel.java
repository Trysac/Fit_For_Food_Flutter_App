package com.UTP.Integrador_2.Fit_For_Food_Consulta.models;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.Date;

@Entity(name = "pago")
@Table(name = "pago")
@Getter
@Setter
public class PagoModel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID_Pago", unique = true, nullable = false)
    private int id;

    @Column(name = "ID_Usuario", nullable = false)
    private int idUsuario;

    @Column(name = "Monto", nullable = false)
    private float monto;

    @Column(name = "Fecha", nullable = false)
    private Date fechaPago;

    @Column(name = "Medio_Pago", nullable = false)
    private String medioPago;

    //TRUE=pago exitoso
    @Column(name = "Estado", nullable = false)
    private byte estadoPago;


    public boolean getEstadoPago() {
        if (estadoPago == 0) {
            return true;
        } else {
            return false;
        }
    }

    public void setEstadoPago(boolean estado) {
        if (estado) {
            this.estadoPago = 0;
        } else {
            this.estadoPago = 1;
        }
    }
}
