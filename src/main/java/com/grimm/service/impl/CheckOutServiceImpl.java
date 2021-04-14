package com.grimm.service.impl;

import com.grimm.autowire.BeanFactory;
import com.grimm.common.annotation.Service;
import com.grimm.converter.extend.CheckOutConverter;
import com.grimm.model.entity.CheckOutEntity;
import com.grimm.model.entity.ProductEntity;
import com.grimm.model.entity.SyntheticEntity;
import com.grimm.model.entity.UserEntity;
import com.grimm.model.request.CheckOutRequest;
import com.grimm.model.response.CheckOutResponse;
import com.grimm.model.response.ProductResponse;
import com.grimm.model.response.UserResponse;
import com.grimm.paging.Pageable;
import com.grimm.repository.CheckOutRepository;
import com.grimm.repository.impl.CheckOutRepositoryImpl;
import com.grimm.repository.impl.ProductRepositoryImpl;
import com.grimm.service.CheckOutService;
import com.grimm.util.MySqlConnectionUtil;
import com.grimm.util.pool.ConnectionPoolImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@Service
public class CheckOutServiceImpl implements CheckOutService {
    private CheckOutRepository checkOutRepository;
    private CheckOutConverter checkOutConverter;
    public CheckOutServiceImpl() {
        checkOutRepository = (CheckOutRepository) BeanFactory.getBeans().get("checkOutRepository");
        checkOutConverter = new CheckOutConverter();
    }
    @Override
    public void insert(CheckOutRequest request) {
        CheckOutEntity checkOutEntity = new CheckOutEntity();
        CheckOutEntity entity = checkOutConverter.converToEntity(checkOutEntity,request);
        try {
            new CheckOutRepositoryImpl().insert(entity);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<CheckOutResponse> findAll() {
        List<CheckOutEntity> checkOutEntities= new CheckOutRepositoryImpl().findAll();
        return checkOutConverter.convertToListResponse(checkOutEntities);
    }

    @Override
    public List<SyntheticEntity> listNameProduct(int idUser) {
        List<SyntheticEntity> list= new ArrayList<>();
        ResultSet resultSet = null;
        try {
            resultSet = new MySqlConnectionUtil().chonDuLieuTuDTB("select  Ten, soLuongMua ,(soLuongMua*GiaBan),HinhAnh,giaBan from GIOHANG,sanpham where GIOHANG.maSp=SANPHAM.MaSp and GIOHANG.id_user= "+idUser);
            while (resultSet.next()){
                SyntheticEntity listRequest= new SyntheticEntity();
                listRequest.setTen(resultSet.getString(1));
                listRequest.setSoLuongMua(resultSet.getInt(2));
                listRequest.setTongTien(resultSet.getInt(3));
                listRequest.setHinhAnh(resultSet.getString(4));
                listRequest.setGiaBan(resultSet.getInt(5));
                list.add(listRequest);
            }
            return list;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public int tongTien() {
        return new CheckOutRepositoryImpl().tongTien();
    }

    @Override
    public long count() {
        return new CheckOutRepositoryImpl().count();
    }

    @Override
    public List<CheckOutResponse> findAll(Pageable pageable) {
        List<CheckOutEntity> checkOutEntities= new CheckOutRepositoryImpl().findAll(pageable);
        return checkOutConverter.convertToListResponse(checkOutEntities);
    }

    @Override
    public List<CheckOutResponse> findAll(Pageable pageable, String sortName, String sortBy, String nameProduct) {
        List<CheckOutEntity> checkOutEntities= new CheckOutRepositoryImpl().findAll(pageable,sortName,sortBy,nameProduct);
        return checkOutConverter.convertToListResponse(checkOutEntities);
    }

    @Override
    public CheckOutResponse findById(Integer id) {
        CheckOutResponse checkOutResponse = new CheckOutResponse();
        CheckOutEntity checkOutEntity = new CheckOutRepositoryImpl().findById(id);
        CheckOutResponse checkOutResponse1 = checkOutConverter.converToResponse(checkOutResponse,checkOutEntity);
        return checkOutResponse1;
    }


}
