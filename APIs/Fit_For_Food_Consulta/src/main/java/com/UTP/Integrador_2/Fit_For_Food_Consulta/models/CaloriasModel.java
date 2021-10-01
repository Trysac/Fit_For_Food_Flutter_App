package com.UTP.Integrador_2.Fit_For_Food_Consulta.models;

import com.UTP.Integrador_2.Fit_For_Food_Consulta.models.constantes.ObjetivosCaloricos;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "calorias")
public class CaloriasModel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(unique = true, nullable = false)
    private int id;

    @Column(unique = true, nullable = false)
    private int idUsuario;

    @Column()
    private float caloriasDiarias;

    @Column()
    private float promedioCaloriasConsumidas;

    @Column(nullable = false)
    private String objetivoCalorico;

    @Column()
    private String registrosConsumoCalorias;

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

    public float getCaloriasDiarias() {
        return caloriasDiarias;
    }

    public void setCaloriasDiarias(float caloriasDiarias) {
        this.caloriasDiarias = caloriasDiarias;
    }

    public float getPromedioCaloriasConsumidas() {
        return promedioCaloriasConsumidas;
    }

    public void setPromedioCaloriasConsumidas(float promedioCaloriasConsumidas) {
        this.promedioCaloriasConsumidas = promedioCaloriasConsumidas;
    }

    public String getRegistrosConsumoCalorias() {
        return registrosConsumoCalorias;
    }

    public void setRegistrosConsumoCalorias(String registrosConsumoCalorias) {
        this.registrosConsumoCalorias = registrosConsumoCalorias;
    }

    public Date getFechaPrimerRegistro() {
        return fechaPrimerRegistro;
    }

    public void setFechaPrimerRegistro(Date fechaPrimerRegistro) {
        this.fechaPrimerRegistro = fechaPrimerRegistro;
    }

    public String getObjetivoCalorico() {
        return objetivoCalorico;
    }

    public void setObjetivoCalorico(ObjetivosCaloricos objetivo) {
        switch (objetivo){
            case deficit:
                this.objetivoCalorico="deficit";
                break;
            case mantenimiento:
                this.objetivoCalorico="mantenimiento";
                break;
            case superavit:
                this.objetivoCalorico="superavit";
                break;
        }
    }
}
