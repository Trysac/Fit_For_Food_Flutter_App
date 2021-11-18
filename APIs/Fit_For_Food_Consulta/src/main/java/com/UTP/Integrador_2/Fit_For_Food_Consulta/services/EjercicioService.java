package com.UTP.Integrador_2.Fit_For_Food_Consulta.services;

import com.UTP.Integrador_2.Fit_For_Food_Consulta.beans.EjercicioBean;
import com.UTP.Integrador_2.Fit_For_Food_Consulta.models.EjercicioModel;
import com.UTP.Integrador_2.Fit_For_Food_Consulta.reposiories.EjercicioRepository;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class EjercicioService {

    @Autowired
    EjercicioRepository ejercicioRepository;

    protected EjercicioBean toBean(EjercicioModel model) {
        EjercicioBean bean = new EjercicioBean();
        BeanUtils.copyProperties(model, bean);
        return bean;
    }

    protected EjercicioModel toModel(EjercicioModel model, EjercicioBean bean) {
        if (model == null) {
            model = new EjercicioModel();
        }
        BeanUtils.copyProperties(bean, model);;
        return model;
    }

    public EjercicioBean getByUserID(int userID) {
        Optional<EjercicioModel> ejercicioModel = this.ejercicioRepository.findUserById(userID);
        if (ejercicioModel.isPresent()){
            EjercicioBean ejercicioBean = toBean(ejercicioModel.get());
            return ejercicioBean;
        }
        else{
            return null;
        }
    }

    public EjercicioBean create(EjercicioBean bean, int userID){
        EjercicioModel model = new EjercicioModel();
        if(existByID(userID)){ return null; }
        model = toModel(model,bean);
        this.ejercicioRepository.save(model);
        return toBean(model);
    }

    public EjercicioBean Update(EjercicioBean bean, int userID){
        if(!existByID(userID)){ return null; }
        EjercicioModel model = new EjercicioModel();
        model = toModel(model,bean);
        this.ejercicioRepository.save(model);
        return toBean(model);
    }

    private boolean existByID(int userID){
        Optional<EjercicioModel> ejercicioModel = this.ejercicioRepository.findUserById(userID);
        if (ejercicioModel.isPresent()){
            return true;
        }
        else{
            return false;
        }
    }

}
