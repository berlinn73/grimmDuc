package com.grimm.repository;

import com.grimm.model.entity.CardEntity;
import com.grimm.model.entity.SyntheticEntity;
import com.grimm.model.entity.WishListEntity;
import com.grimm.model.response.WishListResponse;

import java.sql.SQLException;
import java.util.List;

public interface CardRepository extends JpaRepository<CardEntity, Integer> {
    boolean kiemTraSanPhamCoTrongCard(int maSanPham, String id_user);
    List<SyntheticEntity> findAllByIdUser(String name , String idUser);
    int tongTien(int id_User);

    void updateCard(String soLuong,String id, String maSp) throws SQLException;
}
