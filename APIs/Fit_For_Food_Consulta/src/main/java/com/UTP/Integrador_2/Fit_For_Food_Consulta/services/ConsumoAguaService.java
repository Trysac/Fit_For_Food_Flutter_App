package com.UTP.Integrador_2.Fit_For_Food_Consulta.services;

import com.UTP.Integrador_2.Fit_For_Food_Consulta.beans.CaloriasBean;
import com.UTP.Integrador_2.Fit_For_Food_Consulta.beans.ConsumoAguaBean;
import com.UTP.Integrador_2.Fit_For_Food_Consulta.models.CaloriasModel;
import com.UTP.Integrador_2.Fit_For_Food_Consulta.models.ConsumoAguaModel;
import com.UTP.Integrador_2.Fit_For_Food_Consulta.reposiories.ConsumoAguaRepository;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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


}
