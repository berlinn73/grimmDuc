package com.grimm.service;

import com.grimm.model.entity.BlogEntity;
import com.grimm.model.entity.SyntheticEntity;
import com.grimm.model.entity.WishListEntity;
import com.grimm.model.request.BlogRequest;
import com.grimm.model.request.WishListRequest;
import com.grimm.model.response.BlogResponse;
import com.grimm.model.response.CardResponse;
import com.grimm.model.response.WishListResponse;
import com.grimm.paging.Pageable;

import java.util.List;

public interface WishListService {
    void insert(WishListRequest request);

    void update(WishListRequest request);

    void delete (int id);

    List<WishListResponse> findAll();

    WishListEntity findById(Integer id);

    List<WishListResponse> findAllById(String name , String idUser, String orderName, String orderBy);

    List<SyntheticEntity> findAllByIdUser(Pageable pageable, String name , String idUser);

    boolean kiemTraSanPhamCoTrongCard(int maSanPham);
    long count();
    void deleteByIds(int[] ids);
}
