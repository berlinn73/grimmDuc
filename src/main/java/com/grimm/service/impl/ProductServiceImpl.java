package com.grimm.service.impl;

import com.grimm.autowire.BeanFactory;
import com.grimm.common.annotation.Service;
import com.grimm.converter.extend.ProductConverter;
import com.grimm.model.entity.ProductEntity;
import com.grimm.model.request.ProductRequest;
import com.grimm.model.response.ProductResponse;
import com.grimm.paging.Pageable;
import com.grimm.repository.ProductRepository;
import com.grimm.repository.impl.ProductRepositoryImpl;
import com.grimm.service.ProductService;

import java.sql.SQLException;
import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {
    private ProductRepository productRepository;
    private ProductConverter productConverter;
    public ProductServiceImpl() {
        productRepository = (ProductRepository) BeanFactory.getBeans().get("productRepository");
        productConverter = new ProductConverter();
    }
    @Override
    public void insert(ProductRequest request) {
        ProductEntity productEntity = new ProductEntity();
        ProductEntity entity = productConverter.converToEntity(productEntity,request);
        try {
            new ProductRepositoryImpl().insert(entity);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void update(ProductRequest request) {
        ProductEntity productEntity = new ProductEntity();
        ProductEntity entity = productConverter.converToEntity(productEntity,request);
        new ProductRepositoryImpl().update(entity);
    }

    @Override
    public void delete(int id) {
        try {
            productRepository.delete(id);
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
        }
    }


    @Override
    public List<ProductResponse> findAll() {
        List<ProductEntity> userEntities= new ProductRepositoryImpl().findAll();
        return productConverter.convertToListResponse(userEntities);
    }

    @Override
    public List<ProductResponse> findAllById(String name, String idUser,String orderName, String ordeBy) {
        List<ProductEntity> productEntities= new ProductRepositoryImpl().findAllById(name,idUser,orderName,ordeBy);
        return productConverter.convertToListResponse(productEntities);
    }

    @Override
    public List<ProductResponse> findAll(Pageable pageable) {
        List<ProductEntity> productEntities= new ProductRepositoryImpl().findAll(pageable);
        return productConverter.convertToListResponse(productEntities);
    }

    @Override
    public List<ProductResponse> findAll(Pageable pageable, String sortName, String sortBy,String nameProduct) {
        List<ProductEntity> productEntities= new ProductRepositoryImpl().findAll(pageable,sortName,sortBy,nameProduct);
        return productConverter.convertToListResponse(productEntities);
    }

    @Override
    public long count() {
        return new ProductRepositoryImpl().count();
    }

    @Override
    public long countByCondition(String idMenuCon) {
        return new ProductRepositoryImpl().countByCondition(idMenuCon);
    }

    @Override
    public long countById(String name, String conditions) {
        return new ProductRepositoryImpl().countById(name,conditions);
    }

    @Override
    public ProductEntity findById(Integer id) {
        return new ProductRepositoryImpl().findById(id);
    }

    @Override
    public void deleteByIds(int[] ids) {
        new ProductRepositoryImpl().deleteByIds(ids);
    }

    @Override
    public List<ProductResponse> findAllByCategory(Pageable pageable, String sortName, String sortBy, String idMenuCon) {
        List<ProductEntity> productEntities = new ProductRepositoryImpl().findAllByCategory(pageable, sortName, sortBy, idMenuCon);
        return productConverter.convertToListResponse(productEntities);
    }

}
