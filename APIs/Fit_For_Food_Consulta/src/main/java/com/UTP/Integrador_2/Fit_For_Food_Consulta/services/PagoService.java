package com.UTP.Integrador_2.Fit_For_Food_Consulta.services;

import com.UTP.Integrador_2.Fit_For_Food_Consulta.beans.PagoBean;
import com.UTP.Integrador_2.Fit_For_Food_Consulta.models.PagoModel;
import com.UTP.Integrador_2.Fit_For_Food_Consulta.reposiories.PagoRepository;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class PagoService {

    @Autowired
    PagoRepository pagoRepository;

    protected PagoBean toBean(PagoModel model) {
        PagoBean bean = new PagoBean();
        BeanUtils.copyProperties(model, bean);
        return bean;
    }

    protected PagoModel toModel(PagoModel model, PagoBean bean) {
        if (model == null) {
            model = new PagoModel();
        }
        BeanUtils.copyProperties(bean, model);;
        return model;
    }

    public PagoBean getByUserID(int userID) {
        Optional<PagoModel> model = this.pagoRepository.findUserById(userID);
        if (model.isPresent()){
            PagoBean bean = toBean(model.get());
            return bean;
        }
        else{
            return null;
        }
    }

    public PagoBean create(PagoBean bean, int userID){
        PagoModel model = new PagoModel();
        if(existByID(userID)){ return null; }
        model = toModel(model,bean);
        this.pagoRepository.save(model);
        return toBean(model);
    }

    private boolean existByID(int userID){
        Optional<PagoModel> ejercicioModel = this.pagoRepository.findUserById(userID);
        if (ejercicioModel.isPresent()){
            return true;
        }
        else{
            return false;
        }
    }
}
