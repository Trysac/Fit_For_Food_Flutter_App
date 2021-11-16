package com.UTP.Integrador_2.Fit_For_Food_Consulta.services;

import com.UTP.Integrador_2.Fit_For_Food_Consulta.beans.AlimentoBean;
import com.UTP.Integrador_2.Fit_For_Food_Consulta.beans.CaloriasBean;
import com.UTP.Integrador_2.Fit_For_Food_Consulta.models.AlimentoModel;
import com.UTP.Integrador_2.Fit_For_Food_Consulta.models.CaloriasModel;
import com.UTP.Integrador_2.Fit_For_Food_Consulta.reposiories.CaloriasRepository;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

}
