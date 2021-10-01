package com.UTP.Integrador_2.Fit_For_Food_Consulta.models;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "ejercicio")
public class EjercicioModel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(unique = true, nullable = false)
    private int id;

    @Column(unique = true, nullable = false)
    private int idUsuario;

    @Column()
    private byte numeroDiasSemanaProyectados;

    @Column()
    private float promedioSemanalDiasEjercicio;

    @Column()
    private Date ultimoRegistroEjercicio;

    @Column()
    private String registrosEjercicio;


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

    public byte getNumeroDiasSemanaProyectados() {
        return numeroDiasSemanaProyectados;
    }

    public void setNumeroDiasSemanaProyectados(byte numeroDiasSemanaProyectados) {
        this.numeroDiasSemanaProyectados = numeroDiasSemanaProyectados;
    }

    public float getPromedioSemanalDiasEjercicio() {
        return promedioSemanalDiasEjercicio;
    }

    public void setPromedioSemanalDiasEjercicio(float promedioSemanalDiasEjercicio) {
        this.promedioSemanalDiasEjercicio = promedioSemanalDiasEjercicio;
    }

    public Date getUltimoRegistroEjercicio() {
        return ultimoRegistroEjercicio;
    }

    public void setUltimoRegistroEjercicio(Date ultimoRegistroEjercicio) {
        this.ultimoRegistroEjercicio = ultimoRegistroEjercicio;
    }

    public String getRegistrosEjercicio() {
        return registrosEjercicio;
    }

    public void setRegistrosEjercicio(String registrosEjercicio) {
        this.registrosEjercicio = registrosEjercicio;
    }


}
