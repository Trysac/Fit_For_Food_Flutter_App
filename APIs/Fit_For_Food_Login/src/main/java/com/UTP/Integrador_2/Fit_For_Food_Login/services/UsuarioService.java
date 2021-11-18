package com.UTP.Integrador_2.Fit_For_Food_Login.services;

import com.UTP.Integrador_2.Fit_For_Food_Login.beans.UsuarioBean;
import com.UTP.Integrador_2.Fit_For_Food_Login.models.UsuarioModel;
import com.UTP.Integrador_2.Fit_For_Food_Login.reposiories.UsuarioRepository;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;
import java.util.concurrent.ThreadLocalRandom;

@Service
public class UsuarioService {

    @Autowired
    UsuarioRepository usuarioRepository;

    protected UsuarioBean toBean(UsuarioModel model) {
        UsuarioBean bean = new UsuarioBean();
        BeanUtils.copyProperties(model, bean);
        return bean;
    }

    protected UsuarioModel toModel(UsuarioModel model, UsuarioBean bean) {
        if (model == null) {
            model = new UsuarioModel();
        }
        BeanUtils.copyProperties(bean, model);;
        return model;
    }

    public UsuarioBean getByUserID(int userID) {
        Optional<UsuarioModel> model = this.usuarioRepository.findUserById(userID);
        if (model.isPresent()){
            UsuarioBean bean = toBean(model.get());
            return bean;
        }
        else{
            return null;
        }
    }

    public String validateUser(String email, String pass){
        Optional<UsuarioModel> model = this.usuarioRepository.findUserByMail(email);
        if (model.isPresent()){
            UsuarioBean bean = toBean(model.get());
            if(bean.getContraseña().equals(pass)){
                UsuarioModel newUserModel = new UsuarioModel();
                String token = cadenaAleatoria(10);
                bean.setCodigoSesion(token);
                newUserModel = toModel(newUserModel,bean);
                this.usuarioRepository.save(newUserModel);
                return token;
            }
            else{
                return "La Contraseña Ingresada Es Incorrecta : " + pass;
            }
        }
        else{
            return "No se encontro registro para el correo ingresado : " + email;
        }
    }

    public static String cadenaAleatoria(int longitud) {
        String banco = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
        String cadena = "";
        for (int x = 0; x < longitud; x++) {
            int indiceAleatorio = numeroAleatorioEnRango(0, banco.length() - 1);
            char caracterAleatorio = banco.charAt(indiceAleatorio);
            cadena += caracterAleatorio;
        }
        return cadena;
    }

    public static int numeroAleatorioEnRango(int minimo, int maximo) {
        // nextInt regresa en rango pero con límite superior exclusivo, por eso sumamos 1
        return ThreadLocalRandom.current().nextInt(minimo, maximo + 1);
    }
}
