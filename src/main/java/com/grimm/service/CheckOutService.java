package com.grimm.service;

import com.grimm.model.entity.ProductEntity;
import com.grimm.model.entity.SyntheticEntity;
import com.grimm.model.request.CheckOutRequest;
import com.grimm.model.response.CardResponse;
import com.grimm.model.response.CheckOutResponse;
import com.grimm.model.response.ProductResponse;
import com.grimm.paging.Pageable;

import java.util.List;

public interface CheckOutService {
    void insert(CheckOutRequest request);
    List<CheckOutResponse> findAll();

    List<SyntheticEntity> listNameProduct(int idUser);

    int tongTien();

    long count();

    List<CheckOutResponse> findAll(Pageable pageable);

    List<CheckOutResponse> findAll(Pageable pageable, String sortName, String sortBy,String nameProduct);

    CheckOutResponse findById(Integer id);
}
