package com.UTP.Integrador_2.Fit_For_Food_Consulta.services;

import com.UTP.Integrador_2.Fit_For_Food_Consulta.beans.ConsumoAguaBean;
import com.UTP.Integrador_2.Fit_For_Food_Consulta.models.ConsumoAguaModel;
import com.UTP.Integrador_2.Fit_For_Food_Consulta.reposiories.ConsumoAguaRepository;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class ConsumoAguaService {

    @Autowired
    ConsumoAguaRepository consumoAguaRepository;

    protected ConsumoAguaBean toBean(ConsumoAguaModel model) {
        ConsumoAguaBean bean = new ConsumoAguaBean();
        BeanUtils.copyProperties(model, bean);
        return bean;
    }

    protected ConsumoAguaModel toModel(ConsumoAguaModel model, ConsumoAguaBean bean) {
        if (model == null) {
            model = new ConsumoAguaModel();
        }
        BeanUtils.copyProperties(bean, model);;
        return model;
    }

    public ConsumoAguaBean getByUserID(int userID) {
        Optional<ConsumoAguaModel> model = this.consumoAguaRepository.findUserById(userID);
        if (model.isPresent()){
            ConsumoAguaBean bean = toBean(model.get());
            return bean;
        }
        else{
            return null;
        }
    }

    public ConsumoAguaBean create(ConsumoAguaBean bean, int userID){
        ConsumoAguaModel model = new ConsumoAguaModel();
        if(existByID(userID)){ return null; }
        model = toModel(model,bean);
        this.consumoAguaRepository.save(model);
        return toBean(model);
    }

    public ConsumoAguaBean Update(ConsumoAguaBean bean, int userID){
        if(!existByID(userID)){ return null; }
        ConsumoAguaModel model = new ConsumoAguaModel();
        model = toModel(model,bean);
        this.consumoAguaRepository.save(model);
        return toBean(model);
    }

    private boolean existByID(int userID){
        Optional<ConsumoAguaModel> ejercicioModel = this.consumoAguaRepository.findUserById(userID);
        if (ejercicioModel.isPresent()){
            return true;
        }
        else{
            return false;
        }
    }


}
