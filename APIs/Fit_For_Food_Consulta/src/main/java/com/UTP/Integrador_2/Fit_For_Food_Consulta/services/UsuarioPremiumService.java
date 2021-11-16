package com.UTP.Integrador_2.Fit_For_Food_Consulta.services;

import com.UTP.Integrador_2.Fit_For_Food_Consulta.beans.PagoBean;
import com.UTP.Integrador_2.Fit_For_Food_Consulta.beans.UsuarioPremiumBean;
import com.UTP.Integrador_2.Fit_For_Food_Consulta.models.PagoModel;
import com.UTP.Integrador_2.Fit_For_Food_Consulta.models.UsuarioPremiumModel;
import com.UTP.Integrador_2.Fit_For_Food_Consulta.reposiories.UsuarioPremiumRepository;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
        BeanUtils.copyProperties(bean, model);;
        return model;
    }
}
