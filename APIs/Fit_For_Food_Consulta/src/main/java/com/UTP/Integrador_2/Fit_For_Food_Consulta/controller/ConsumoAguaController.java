package com.UTP.Integrador_2.Fit_For_Food_Consulta.controller;

import com.UTP.Integrador_2.Fit_For_Food_Consulta.beans.ConsumoAguaBean;
import com.UTP.Integrador_2.Fit_For_Food_Consulta.services.ConsumoAguaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
public class ConsumoAguaController {

    @Autowired
    ConsumoAguaService consumoAguaService;

    @GetMapping("/agua/{userID}")
    public ConsumoAguaBean getRegisterByUserID(@PathVariable int userID) {
        ConsumoAguaBean consumoAguaBean = this.consumoAguaService.getByUserID(userID);
        return consumoAguaBean;
    }

    @PostMapping("/agua/create/{userID}")
    public String createRegister(@RequestBody ConsumoAguaBean newRegister, @PathVariable int userID) {
        try {
            this.consumoAguaService.create(newRegister, userID);
            return "Registro Agregado";
        } catch (Exception ex) {
            return "Error al agregar el registro : " + ex.getMessage();
        }
    }

    @PutMapping("/agua/update/{userID}")
    public String UpdateRegister(@RequestBody ConsumoAguaBean register, @PathVariable int userID) {
        try {
            this.consumoAguaService.Update(register, userID);
            return "Registro Actualizado con exito";
        } catch (Exception ex) {
            return "Error al Actualizar el registro : " + ex.getMessage();
        }
    }
}
