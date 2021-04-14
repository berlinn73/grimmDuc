package com.grimm.repository;

import com.grimm.model.entity.SyntheticEntity;
import com.grimm.model.entity.WishListEntity;
import com.grimm.paging.Pageable;

import java.util.List;

public interface WishlistRepository extends JpaRepository<WishListEntity, Integer> {
    boolean kiemTraSanPhamCoTrongGioHangChua(int maSanPham);
    List<SyntheticEntity> findAllByIdUser(Pageable pageable,String name , String idUser);
    void deleteByIds(int[] ids);
}
