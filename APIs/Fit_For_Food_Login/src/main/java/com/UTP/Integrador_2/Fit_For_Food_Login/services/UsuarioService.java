package com.UTP.Integrador_2.Fit_For_Food_Login.services;

import com.UTP.Integrador_2.Fit_For_Food_Login.beans.UsuarioBean;
import com.UTP.Integrador_2.Fit_For_Food_Login.models.UsuarioModel;
import com.UTP.Integrador_2.Fit_For_Food_Login.reposiories.UsuarioRepository;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

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

}
