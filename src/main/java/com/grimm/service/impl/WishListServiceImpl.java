package com.grimm.service.impl;

import com.grimm.autowire.BeanFactory;
import com.grimm.common.annotation.Service;
import com.grimm.converter.extend.WishListConverter;
import com.grimm.model.entity.SyntheticEntity;
import com.grimm.model.entity.WishListEntity;
import com.grimm.model.request.WishListRequest;
import com.grimm.model.response.WishListResponse;
import com.grimm.paging.Pageable;
import com.grimm.repository.WishlistRepository;
import com.grimm.repository.impl.WistlistRepositoryImpl;
import com.grimm.service.WishListService;

import java.sql.SQLException;
import java.util.List;
@Service
public class WishListServiceImpl implements WishListService {
    private WishlistRepository wishlistRepository;
    private WishListConverter wishListConverter;
    public WishListServiceImpl() {
        wishlistRepository = (WishlistRepository) BeanFactory.getBeans().get("wishlistRepository");
        wishListConverter = new WishListConverter();
    }
    @Override
    public void insert(WishListRequest request) {
        WishListEntity wishListEntity = new WishListEntity();
        WishListEntity entity = wishListConverter.converToEntity(wishListEntity,request);
        try {
            new WistlistRepositoryImpl().insert(entity);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void update(WishListRequest request) {
        WishListEntity wishListEntity = new WishListEntity();
        WishListEntity entity = wishListConverter.converToEntity(wishListEntity,request);
        new WistlistRepositoryImpl().update(entity);
    }

    @Override
    public void delete(int id) {
        new WistlistRepositoryImpl().delete(id);
    }

    @Override
    public List<WishListResponse> findAll() {
        List<WishListEntity> userEntities= new WistlistRepositoryImpl().findAll();
        return wishListConverter.convertToListResponse(userEntities);
    }

    @Override
    public WishListEntity findById(Integer id) {
        return new WistlistRepositoryImpl().findById(id);
    }

    @Override
    public List<WishListResponse> findAllById(String name, String idUser, String orderName, String orderBy) {
        List<WishListEntity> wishListEntities= new WistlistRepositoryImpl().findAllById(name, idUser,orderName,orderBy);
        return wishListConverter.convertToListResponse(wishListEntities);
    }

    @Override
    public List<SyntheticEntity> findAllByIdUser(Pageable pageable,String name, String idUser) {
        return new WistlistRepositoryImpl().findAllByIdUser(pageable,name,idUser);
    }

    @Override
    public boolean kiemTraSanPhamCoTrongCard(int maSanPham) {
        return new WistlistRepositoryImpl().kiemTraSanPhamCoTrongGioHangChua(maSanPham);
    }

    @Override
    public long count() {
        return new WistlistRepositoryImpl().count();
    }

    @Override
    public void deleteByIds(int[] ids) {
        new WistlistRepositoryImpl().deleteByIds(ids);
    }


}
