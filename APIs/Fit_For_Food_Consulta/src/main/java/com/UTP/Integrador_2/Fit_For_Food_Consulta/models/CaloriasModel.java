package com.UTP.Integrador_2.Fit_For_Food_Consulta.models;

import com.UTP.Integrador_2.Fit_For_Food_Consulta.models.constantes.ObjetivosCaloricos;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.*;
import java.util.Date;

@Entity(name = "calorias")
@Table(name = "calorias")
@Getter
@Setter
public class CaloriasModel {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID_Registro", unique = true, nullable = false)
    private int id;

    @Column(name = "ID_Usuario", unique = true, nullable = false)
    private int idUsuario;

    @Column(name = "Cal_Diarias")
    private float caloriasDiarias;

    @Column(name = "Prom_Calorias_Consumidas")
    private float promedioCaloriasConsumidas;

    @Column(name = "Objetivo", nullable = false)
    private String objetivoCalorico;

    @Column(name = "Registro_Calorias")
    private String registrosConsumoCalorias;

    @Column(name = "Fecha_PrimerRegistro")
    private Date fechaPrimerRegistro;

    public void setObjetivoCalorico(ObjetivosCaloricos objetivo) {
        switch (objetivo) {
            case deficit:
                this.objetivoCalorico = "deficit";
                break;
            case mantenimiento:
                this.objetivoCalorico = "mantenimiento";
                break;
            case superavit:
                this.objetivoCalorico = "superavit";
                break;
        }
    }
}
