package com.UTP.Integrador_2.Fit_For_Food_Login.services;

import com.UTP.Integrador_2.Fit_For_Food_Login.beans.NotificacionesBean;
import com.UTP.Integrador_2.Fit_For_Food_Login.models.NotificacionesModel;
import com.UTP.Integrador_2.Fit_For_Food_Login.reposiories.NotificacionesRepository;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Optional;

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

    public NotificacionesBean getByUserID(int userID) {
        Optional<NotificacionesModel> notificacionesModel = this.notificacionesRepository.findUserById(userID);
        if (notificacionesModel.isPresent()){
            NotificacionesBean notificacionesBean = toBean(notificacionesModel.get());
            return notificacionesBean;
        }
        else{
           return null;
        }
    }

    public NotificacionesBean create(NotificacionesBean bean, int userID){
        NotificacionesModel model = new NotificacionesModel();
        if(existByID(userID)){ return null; }
        model.setConfiguracionNotificaciones(bean.getConfiguracionNotificaciones());
        model.setIdUsuario(bean.getIdUsuario());
        model.setNumeroNotificacionesConfiguradas(bean.getNumeroNotificacionesConfiguradas());
        this.notificacionesRepository.save(model);
        return toBean(model);
    }

    public NotificacionesBean Update(NotificacionesBean bean, int userID){
        if(!existByID(userID)){ return null; }
        NotificacionesModel model = new NotificacionesModel();
        model = toModel(model,bean);
        this.notificacionesRepository.save(model);
        return toBean(model);
    }

    private boolean existByID(int userID){
        Optional<NotificacionesModel> notificacionesModel = this.notificacionesRepository.findUserById(userID);
        if (notificacionesModel.isPresent()){
            return true;
        }
        else{
            return false;
        }
    }

}
