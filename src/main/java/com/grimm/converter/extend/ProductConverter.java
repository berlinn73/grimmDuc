package com.grimm.converter.extend;

import com.grimm.converter.impl.ConverterImpl;
import com.grimm.model.entity.ProductEntity;
import com.grimm.model.request.ProductRequest;
import com.grimm.model.response.ProductResponse;
import java.util.ArrayList;
import java.util.List;

public class ProductConverter extends ConverterImpl<ProductRequest,ProductResponse,ProductEntity> {
    @Override
    public ProductEntity converToEntity(ProductEntity productEntity, ProductRequest productRequest) {
        return super.converToEntity(productEntity, productRequest);
    }

    @Override
    public ProductResponse converToResponse(ProductResponse productResponse, ProductEntity productEntity) {
        return super.converToResponse(productResponse, productEntity);
    }

    @Override
    public List<ProductResponse> convertToListResponse( List<ProductEntity> productEntities) {
        List<ProductResponse> vs = new ArrayList<>();
        for (ProductEntity productEntity: productEntities) {
            ProductResponse productResponse = new ProductResponse();
            productResponse= converToResponse(productResponse,productEntity);
            vs.add(productResponse);
        }
        return vs;
    }
}