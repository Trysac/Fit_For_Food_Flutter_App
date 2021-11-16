package com.UTP.Integrador_2.Fit_For_Food_Consulta.services;

import com.UTP.Integrador_2.Fit_For_Food_Consulta.beans.EjercicioBean;
import com.UTP.Integrador_2.Fit_For_Food_Consulta.beans.NotificacionesBean;
import com.UTP.Integrador_2.Fit_For_Food_Consulta.models.EjercicioModel;
import com.UTP.Integrador_2.Fit_For_Food_Consulta.models.NotificacionesModel;
import com.UTP.Integrador_2.Fit_For_Food_Consulta.reposiories.NotificacionesRepository;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NotificacionesService {

    @Autowired
    NotificacionesRepository notificacionesRepository;

    protected NotificacionesBean toBean(NotificacionesModel model) {
        NotificacionesBean bean = new NotificacionesBean();
        BeanUtils.copyProperties(model, bean);
        return bean;
    }

    protected NotificacionesModel toModel(NotificacionesModel model, NotificacionesBean bean) {
        if (model == null) {
            model = new NotificacionesModel();
        }
        BeanUtils.copyProperties(bean, model);;
        return model;
    }

}
