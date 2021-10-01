package com.UTP.Integrador_2.Fit_For_Food_Consulta.models;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "consumo_agua")
public class ConsumoAguaModel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(unique = true, nullable = false)
    private int id;

    @Column(unique = true, nullable = false)
    private int idUsuario;

    @Column()
    private float consumoDiario;

    @Column()
    private float PromedioconsumoDiario;

    @Column()
    private String registrosConsumoAgua;

    @Column()
    private Date fechaPrimerRegistro;


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

    public float getConsumoDiario() {
        return consumoDiario;
    }

    public void setConsumoDiario(float consumoDiario) {
        this.consumoDiario = consumoDiario;
    }

    public float getPromedioconsumoDiario() {
        return PromedioconsumoDiario;
    }

    public void setPromedioconsumoDiario(float promedioconsumoDiario) {
        PromedioconsumoDiario = promedioconsumoDiario;
    }

    public String getRegistrosConsumoAgua() {
        return registrosConsumoAgua;
    }

    public void setRegistrosConsumoAgua(String registrosConsumoAgua) {
        this.registrosConsumoAgua = registrosConsumoAgua;
    }

    public Date getFechaPrimerRegistro() {
        return fechaPrimerRegistro;
    }

    public void setFechaPrimerRegistro(Date fechaPrimerRegistro) {
        this.fechaPrimerRegistro = fechaPrimerRegistro;
    }
}
