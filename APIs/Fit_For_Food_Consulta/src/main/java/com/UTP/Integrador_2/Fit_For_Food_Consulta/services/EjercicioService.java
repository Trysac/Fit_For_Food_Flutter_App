package com.UTP.Integrador_2.Fit_For_Food_Consulta.services;

import com.UTP.Integrador_2.Fit_For_Food_Consulta.beans.ConsumoAguaBean;
import com.UTP.Integrador_2.Fit_For_Food_Consulta.beans.EjercicioBean;
import com.UTP.Integrador_2.Fit_For_Food_Consulta.models.ConsumoAguaModel;
import com.UTP.Integrador_2.Fit_For_Food_Consulta.models.EjercicioModel;
import com.UTP.Integrador_2.Fit_For_Food_Consulta.reposiories.EjercicioRepository;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

}
