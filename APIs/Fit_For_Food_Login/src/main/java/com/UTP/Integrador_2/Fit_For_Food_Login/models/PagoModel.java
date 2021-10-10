package com.UTP.Integrador_2.Fit_For_Food_Login.models;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "pago")
public class PagoModel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(unique = true, nullable = false)
    private int id;

    @Column(nullable = false)
    private int idUsuario;

    @Column(nullable = false)
    private float monto;

    @Column(nullable = false)
    private Date fechaPago;

    @Column(nullable = false)
    private String medioPago;

    //TRUE=pago exitoso
    @Column(nullable = false)
    private byte estadoPago;



    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(int idUsuario) {
        this.idUsuario = idUsuario;
    }

    public float getMonto() {
        return monto;
    }

    public void setMonto(float monto) {
        this.monto = monto;
    }

    public Date getFechaPago() {
        return fechaPago;
    }

    public void setFechaPago(Date fechaPago) {
        this.fechaPago = fechaPago;
    }

    public String getMedioPago() {
        return medioPago;
    }

    public void setMedioPago(String medioPago) {
        this.medioPago = medioPago;
    }

    public boolean getEstadoPago() {
        if (estadoPago == 0){
            return true;
        }else{
            return false;
        }
    }

    public void setEstadoPago(boolean estado) {
        if (estado){
            this.estadoPago = 0;
        }else{
            this.estadoPago = 1;
        }
    }
}
