package com.UTP.Integrador_2.Fit_For_Food_Consulta.services;

import com.UTP.Integrador_2.Fit_For_Food_Consulta.beans.CaloriasBean;
import com.UTP.Integrador_2.Fit_For_Food_Consulta.models.CaloriasModel;
import com.UTP.Integrador_2.Fit_For_Food_Consulta.reposiories.CaloriasRepository;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class CaloriasService {

    @Autowired
    CaloriasRepository caloriasRepository;

    protected CaloriasBean toBean(CaloriasModel model) {
        CaloriasBean bean = new CaloriasBean();
        BeanUtils.copyProperties(model, bean);
        return bean;
    }

    protected CaloriasModel toModel(CaloriasModel model, CaloriasBean bean) {
        if (model == null) {
            model = new CaloriasModel();
        }
        BeanUtils.copyProperties(bean, model);;
        return model;
    }

    public CaloriasBean getByUserID(int userID) {
        Optional<CaloriasModel> model = this.caloriasRepository.findUserById(userID);
        if (model.isPresent()){
            CaloriasBean bean = toBean(model.get());
            return bean;
        }
        else{
            return null;
        }
    }

    public CaloriasBean create(CaloriasBean bean, int userID){
        CaloriasModel model = new CaloriasModel();
        if(existByID(userID)){ return null; }
        model = toModel(model,bean);
        this.caloriasRepository.save(model);
        return toBean(model);
    }

    public CaloriasBean Update(CaloriasBean bean, int userID){
        if(!existByID(userID)){ return null; }
        CaloriasModel model = new CaloriasModel();
        model = toModel(model,bean);
        this.caloriasRepository.save(model);
        return toBean(model);
    }

    private boolean existByID(int userID){
        Optional<CaloriasModel> ejercicioModel = this.caloriasRepository.findUserById(userID);
        if (ejercicioModel.isPresent()){
            return true;
        }
        else{
            return false;
        }
    }

}
