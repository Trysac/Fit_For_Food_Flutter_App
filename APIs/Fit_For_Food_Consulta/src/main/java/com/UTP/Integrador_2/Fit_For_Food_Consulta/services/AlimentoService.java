package com.UTP.Integrador_2.Fit_For_Food_Consulta.services;

import com.UTP.Integrador_2.Fit_For_Food_Consulta.beans.AlimentoBean;
import com.UTP.Integrador_2.Fit_For_Food_Consulta.models.AlimentoModel;
import com.UTP.Integrador_2.Fit_For_Food_Consulta.reposiories.AlimentoRepository;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class AlimentoService {

    @Autowired
    AlimentoRepository alimentoRepository;

    protected AlimentoBean toBean(AlimentoModel model) {
        AlimentoBean bean = new AlimentoBean();
        BeanUtils.copyProperties(model, bean);
        return bean;
    }

    protected AlimentoModel toModel(AlimentoModel model, AlimentoBean bean) {
        if (model == null) {
            model = new AlimentoModel();
        }
        BeanUtils.copyProperties(bean, model);
        ;
        return model;
    }

    public List<AlimentoBean> getListaAlimentosTodos() {
        List<AlimentoModel> listaAlimentosModel = this.alimentoRepository.findAll();
        List<AlimentoBean> listaAlimentosBean = new ArrayList<>();
        for (AlimentoModel alimentoDB : listaAlimentosModel) {
            listaAlimentosBean.add(toBean(alimentoDB));
        }
        return listaAlimentosBean;
    }

    public List<AlimentoBean> getListaAlimentosByType(String tipo) {
        List<AlimentoModel> listaAlimentosModel = this.alimentoRepository.findAllByType(tipo);
        List<AlimentoBean> listaAlimentosBean = new ArrayList<>();
        for (AlimentoModel alimentoDB : listaAlimentosModel) {
            listaAlimentosBean.add(toBean(alimentoDB));
        }
        return listaAlimentosBean;
    }

    public List<AlimentoBean> getListaAlimentosPorObjectivo(String objetivo) {
        List<AlimentoModel> listaAlimentosModel = this.alimentoRepository.findAllByObjetive(objetivo);
        List<AlimentoBean> listaAlimentosBean = new ArrayList<>();
        for (AlimentoModel alimentoDB : listaAlimentosModel) {
            listaAlimentosBean.add(toBean(alimentoDB));
        }
        return listaAlimentosBean;
    }
}
