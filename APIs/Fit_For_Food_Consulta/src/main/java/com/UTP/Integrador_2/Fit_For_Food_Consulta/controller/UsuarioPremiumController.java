package com.UTP.Integrador_2.Fit_For_Food_Consulta.controller;

import com.UTP.Integrador_2.Fit_For_Food_Consulta.beans.UsuarioPremiumBean;
import com.UTP.Integrador_2.Fit_For_Food_Consulta.services.UsuarioPremiumService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
public class UsuarioPremiumController {

    @Autowired
    UsuarioPremiumService usuarioPremiumService;

    @GetMapping("/userPremium/{userID}")
    public UsuarioPremiumBean getRegisterByUserID(@PathVariable int userID) {
        UsuarioPremiumBean bean = usuarioPremiumService.getUsuarioPremiumById(userID);
        return bean;
    }

    @PostMapping("/userPremium/create/{userID}")
    public String createRegister(@RequestBody UsuarioPremiumBean newRegister, @PathVariable int userID) {
        try {
            this.usuarioPremiumService.create(newRegister, userID);
            return "Registro Agregado";
        } catch (Exception ex) {
            return "Error al agregar el registro : " + ex.getMessage();
        }
    }

    @PutMapping("/userPremium/update/{userID}")
    public String UpdateRegister(@RequestBody UsuarioPremiumBean register, @PathVariable int userID) {
        try {
            this.usuarioPremiumService.Update(register, userID);
            return "Registro Actualizado con exito";
        } catch (Exception ex) {
            return "Error al Actualizar el registro : " + ex.getMessage();
        }
    }
}
