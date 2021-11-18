package com.UTP.Integrador_2.Fit_For_Food_Consulta.controller;

import com.UTP.Integrador_2.Fit_For_Food_Consulta.beans.EjercicioBean;
import com.UTP.Integrador_2.Fit_For_Food_Consulta.services.EjercicioService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

public class EjercicioController {

    @Autowired
    EjercicioService ejercicioService;

    @GetMapping("/ejercicio/{userID}")
    public EjercicioBean getRegisterByUserID(@PathVariable int userID) {
        EjercicioBean ejercicioBean = this.ejercicioService.getByUserID(userID);
        return ejercicioBean;
    }

    @PostMapping("/ejercicio/create/{userID}")
    public String createRegister(@RequestBody EjercicioBean newRegister, @PathVariable int userID) {
        try {
            this.ejercicioService.create(newRegister, userID);
            return "Registro Agregado";
        } catch(Exception ex){
            return "Error al agregar el registro : " + ex.getMessage();
        }
    }

    @PutMapping("/ejercicio/update/{userID}")
    public String UpdateRegister(@RequestBody EjercicioBean register, @PathVariable int userID) {
        try {
            this.ejercicioService.Update(register, userID);
            return "Registro Actualizado con exito";
        } catch(Exception ex){
            return "Error al Actualizar el registro : " + ex.getMessage();
        }
    }
}
