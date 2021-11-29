package com.UTP.Integrador_2.Fit_For_Food_Consulta.services;

import com.UTP.Integrador_2.Fit_For_Food_Consulta.beans.CaloriasBean;
import com.UTP.Integrador_2.Fit_For_Food_Consulta.models.CaloriasModel;
import com.UTP.Integrador_2.Fit_For_Food_Consulta.models.NewCaloriasModel;
import com.UTP.Integrador_2.Fit_For_Food_Consulta.reposiories.CaloriasRepository;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class CaloriasService {

    @Autowired
    CaloriasRepository caloriasRepository;

    protected CaloriasBean toBean(NewCaloriasModel model) {
        CaloriasBean bean = new CaloriasBean();
        BeanUtils.copyProperties(model, bean);
        return bean;
    }

    protected NewCaloriasModel toModel(NewCaloriasModel model, CaloriasBean bean) {
        if (model == null) {
            model = new NewCaloriasModel();
        }
        BeanUtils.copyProperties(bean, model);;
        return model;
    }

    public CaloriasBean getByUserID(int userID) {
//        Optional<CaloriasModel> model = this.caloriasRepository.findUserById(userID);
        Optional<NewCaloriasModel> model = this.caloriasRepository.findUserById(userID);
        if (model.isPresent()){
            CaloriasBean bean = toBean(model.get());
            return bean;
        }
        else{
            return null;
        }
    }

    public CaloriasBean create(CaloriasBean bean, int userID){
        NewCaloriasModel model = new NewCaloriasModel();
        if(existByID(userID)){ return null; }
        model = toModel(model,bean);
        this.caloriasRepository.save(model);
        return toBean(model);
    }

    public CaloriasBean Update(CaloriasBean bean, int userID){
        if(!existByID(userID)){ return null; }
        NewCaloriasModel model = new NewCaloriasModel();
        model = toModel(model,bean);
        this.caloriasRepository.save(model);
        return toBean(model);
    }

    private boolean existByID(int userID){
        Optional<NewCaloriasModel> model = this.caloriasRepository.findUserById(userID);
        if (model.isPresent()){
            return true;
        }
        else{
            return false;
        }
    }

}
