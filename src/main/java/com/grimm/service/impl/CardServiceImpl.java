package com.grimm.service.impl;

import com.grimm.autowire.BeanFactory;
import com.grimm.common.annotation.Service;
import com.grimm.converter.extend.CardConverter;
import com.grimm.model.entity.CardEntity;
import com.grimm.model.entity.SyntheticEntity;
import com.grimm.model.request.CardRequest;
import com.grimm.model.response.CardResponse;
import com.grimm.repository.CardRepository;
import com.grimm.repository.impl.CardRepositoryImpl;
import com.grimm.service.CardService;

import java.sql.SQLException;
import java.util.List;
@Service
public class CardServiceImpl implements CardService {
    private CardRepository cardRepository;
    private CardConverter cardConverter;
    public CardServiceImpl() {
        cardRepository = (CardRepository) BeanFactory.getBeans().get("cardRepository");
        cardConverter = new CardConverter();
    }
    @Override
    public void insert(CardRequest request) {
        CardEntity cardEntity = new CardEntity();
        CardEntity entity = cardConverter.converToEntity(cardEntity,request);
        try {
            new CardRepositoryImpl().insert(entity);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void update(CardRequest request) {
        CardEntity cardEntity = new CardEntity();
        CardEntity entity = cardConverter.converToEntity(cardEntity,request);
        new CardRepositoryImpl().update(entity);
    }

    @Override
    public void delete(int id) {
        new CardRepositoryImpl().delete(id);
    }

    @Override
    public List<CardResponse> findAll() {
        List<CardEntity> cardEntities= new CardRepositoryImpl().findAll();
        return cardConverter.convertToListResponse(cardEntities);
    }

    @Override
    public CardEntity findById(Integer id) {
        return new CardRepositoryImpl().findById(id);
    }

    @Override
    public List<CardResponse> findAllById(String name, String idUser, String orderName, String orderBy) {
        List<CardEntity> cardEntities= new CardRepositoryImpl().findAllById(name, idUser, orderName, orderBy);
        return cardConverter.convertToListResponse(cardEntities);
    }

    @Override
    public List<SyntheticEntity> findAllByIdUser(String name, String idUser) {
        return new CardRepositoryImpl().findAllByIdUser(name,idUser);
    }

    @Override
    public int tongTien(int id_User) {
        return new CardRepositoryImpl().tongTien(id_User);
    }

    @Override
    public boolean kiemTraSanPhamCoTrongCard(int maSanPham, String id_user) {
        return new CardRepositoryImpl().kiemTraSanPhamCoTrongCard(maSanPham, id_user);
    }

    @Override
    public long countById(String name, String conditions) {
        return new CardRepositoryImpl().countById(name,conditions);
    }

    @Override
    public void updateCard(String soLuong, String id, String maSp) {
        try {
            new CardRepositoryImpl().updateCard(soLuong,id,maSp);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}
