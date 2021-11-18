package com.UTP.Integrador_2.Fit_For_Food_Consulta.controller;

import com.UTP.Integrador_2.Fit_For_Food_Consulta.beans.NotificacionesBean;
import com.UTP.Integrador_2.Fit_For_Food_Consulta.services.NotificacionesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

public class NotificacionesController {

    @Autowired
    NotificacionesService notificacionesService;

    @GetMapping("/notificaciones/{userID}")
    public NotificacionesBean getRegisterByUserID(@PathVariable int userID) {
        NotificacionesBean notificacionesBean = notificacionesService.getByUserID(userID);
        return notificacionesBean;
    }

    @PostMapping("/notificaciones/create/{userID}")
    public String createRegister(@RequestBody NotificacionesBean newRegister, @PathVariable int userID) {
        try {
            this.notificacionesService.create(newRegister, userID);
            return "Registro Agregado";
        } catch(Exception ex){
            return "Error al agregar el registro : " + ex.getMessage();
        }
    }

    @PutMapping("/notificaciones/update/{userID}")
    public String updateRegister(@RequestBody NotificacionesBean notifications, @PathVariable int userID) {
        try {
            this.notificacionesService.Update(notifications, userID);
            return "Registro Actualizado con exito";
        } catch(Exception ex){
            return "Error al Actualizar el registro : " + ex.getMessage();
        }
    }
}
