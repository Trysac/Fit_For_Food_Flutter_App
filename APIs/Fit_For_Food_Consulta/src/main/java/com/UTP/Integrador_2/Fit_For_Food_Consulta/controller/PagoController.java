package com.UTP.Integrador_2.Fit_For_Food_Consulta.controller;

import com.UTP.Integrador_2.Fit_For_Food_Consulta.beans.PagoBean;
import com.UTP.Integrador_2.Fit_For_Food_Consulta.services.PagoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

public class PagoController {

    @Autowired
    PagoService pagoService;

    @GetMapping("/pago/{userID}")
    public PagoBean getRegisterByUserID(@PathVariable int userID) {
        PagoBean bean = this.pagoService.getByUserID(userID);
        return bean;
    }

    @PostMapping("/pago/create/{userID}")
    public String createRegister(@RequestBody PagoBean newRegister, @PathVariable int userID) {
        try {
            this.pagoService.create(newRegister, userID);
            return "Registro Agregado";
        } catch(Exception ex){
            return "Error al agregar el registro : " + ex.getMessage();
        }
    }
}
