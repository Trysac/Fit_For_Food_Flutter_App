package com.UTP.Integrador_2.Fit_For_Food_Consulta.models;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "usuario_premium")
@Getter
@Setter
public class UsuarioPremiumModel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID_Membresia", unique = true, nullable = false)
    private int id;

    @Column(name = "ID_Usuario", unique = true, nullable = false)
    private int idUsuario;

    @Column(name = "Fecha_Renovacion")
    private Date fechaRenovacion;

    @Column(name = "Fecha_Suscripcion")
    private Date fechaUltimaSuscripcion;

    @Column(name = "Historico")
    private String historicoSuscripcion;

    //TRUE=activa
    @Column(name = "Estado", nullable = false)
    private byte estadoSuscripcion;

    public boolean getEstadoSuscripcion() {
        if (estadoSuscripcion == 0){
            return true;
        }else{
            return false;
        }
    }

    public void setEstadoSuscripcion(boolean estado) {
        if (estado){
            this.estadoSuscripcion = 0;
        }else{
            this.estadoSuscripcion = 1;
        }
    }
}
