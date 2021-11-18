package com.UTP.Integrador_2.Fit_For_Food_Consulta.controller;

import com.UTP.Integrador_2.Fit_For_Food_Consulta.beans.CaloriasBean;
import com.UTP.Integrador_2.Fit_For_Food_Consulta.services.CaloriasService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

public class CaloriasController {

    @Autowired
    CaloriasService caloriasService;

    @GetMapping("/calorias/{userID}")
    public CaloriasBean getRegisterByUserID(@PathVariable int userID) {
        CaloriasBean bean = this.caloriasService.getByUserID(userID);
        return bean;
    }

    @PostMapping("/calorias/create/{userID}")
    public String createRegister(@RequestBody CaloriasBean newRegister, @PathVariable int userID) {
        try {
            this.caloriasService.create(newRegister, userID);
            return "Registro Agregado";
        } catch(Exception ex){
            return "Error al agregar el registro : " + ex.getMessage();
        }
    }

    @PutMapping("/calorias/update/{userID}")
    public String UpdateRegister(@RequestBody CaloriasBean register, @PathVariable int userID) {
        try {
            this.caloriasService.Update(register, userID);
            return "Registro Actualizado con exito";
        } catch(Exception ex){
            return "Error al Actualizar el registro : " + ex.getMessage();
        }
    }

}
