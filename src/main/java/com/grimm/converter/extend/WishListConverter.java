package com.grimm.converter.extend;

import com.grimm.converter.impl.ConverterImpl;
import com.grimm.model.entity.BlogEntity;
import com.grimm.model.entity.WishListEntity;
import com.grimm.model.request.WishListRequest;
import com.grimm.model.response.BlogResponse;
import com.grimm.model.response.WishListResponse;

import java.util.ArrayList;
import java.util.List;

public class WishListConverter extends ConverterImpl<WishListRequest, WishListResponse, WishListEntity> {
    @Override
    public WishListEntity converToEntity(WishListEntity wishListEntity, WishListRequest wishListRequest) {
        return super.converToEntity(wishListEntity, wishListRequest);
    }

    @Override
    public WishListResponse converToResponse(WishListResponse wishListResponse, WishListEntity wishListEntity) {
        return super.converToResponse(wishListResponse, wishListEntity);
    }

    @Override
    public List<WishListResponse> convertToListResponse(List<WishListEntity> wishListEntities) {
        List<WishListResponse> vs = new ArrayList<>();
        for (WishListEntity wishListEntity: wishListEntities) {
            WishListResponse wishListResponse = new WishListResponse();
            wishListResponse= converToResponse(wishListResponse,wishListEntity);
            vs.add(wishListResponse);
        }
        return vs;
    }
}
