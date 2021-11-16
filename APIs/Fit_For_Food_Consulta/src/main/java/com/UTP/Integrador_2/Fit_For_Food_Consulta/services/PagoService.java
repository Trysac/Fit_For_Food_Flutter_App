package com.UTP.Integrador_2.Fit_For_Food_Consulta.services;

import com.UTP.Integrador_2.Fit_For_Food_Consulta.beans.NotificacionesBean;
import com.UTP.Integrador_2.Fit_For_Food_Consulta.beans.PagoBean;
import com.UTP.Integrador_2.Fit_For_Food_Consulta.models.NotificacionesModel;
import com.UTP.Integrador_2.Fit_For_Food_Consulta.models.PagoModel;
import com.UTP.Integrador_2.Fit_For_Food_Consulta.reposiories.PagoRepository;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
}
