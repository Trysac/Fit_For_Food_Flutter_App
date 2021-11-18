package com.UTP.Integrador_2.Fit_For_Food_Consulta.services;

import com.UTP.Integrador_2.Fit_For_Food_Consulta.beans.UsuarioPremiumBean;
import com.UTP.Integrador_2.Fit_For_Food_Consulta.models.UsuarioPremiumModel;
import com.UTP.Integrador_2.Fit_For_Food_Consulta.reposiories.UsuarioPremiumRepository;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class UsuarioPremiumService {

    @Autowired
    UsuarioPremiumRepository usuarioPremiumRepository;

    protected UsuarioPremiumBean toBean(UsuarioPremiumModel model) {
        UsuarioPremiumBean bean = new UsuarioPremiumBean();
        BeanUtils.copyProperties(model, bean);
        return bean;
    }

    protected UsuarioPremiumModel toModel(UsuarioPremiumModel model, UsuarioPremiumBean bean) {
        if (model == null) {
            model = new UsuarioPremiumModel();
        }
        BeanUtils.copyProperties(bean, model);
        return model;
    }

    public UsuarioPremiumBean getUsuarioPremiumById(int userID) {
        Optional<UsuarioPremiumModel> userPremiumModel = this.usuarioPremiumRepository.findUserById(userID);
        if (userPremiumModel.isPresent()) {
            UsuarioPremiumBean usersBean = toBean(userPremiumModel.get());
            return usersBean;
        } else {
            return null;
        }
    }

    public UsuarioPremiumBean create(UsuarioPremiumBean bean, int userID){
        UsuarioPremiumModel model = new UsuarioPremiumModel();
        if(existByID(userID)){ return null; }
        model = toModel(model,bean);
        this.usuarioPremiumRepository.save(model);
        return toBean(model);
    }

    public UsuarioPremiumBean Update(UsuarioPremiumBean bean, int userID){
        if(!existByID(userID)){ return null; }
        UsuarioPremiumModel model = new UsuarioPremiumModel();
        model = toModel(model,bean);
        this.usuarioPremiumRepository.save(model);
        return toBean(model);
    }

    private boolean existByID(int userID){
        Optional<UsuarioPremiumModel> ejercicioModel = this.usuarioPremiumRepository.findUserById(userID);
        if (ejercicioModel.isPresent()){
            return true;
        }
        else{
            return false;
        }
    }


}
