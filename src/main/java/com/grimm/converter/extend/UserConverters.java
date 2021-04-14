package com.grimm.converter.extend;

import com.grimm.converter.impl.ConverterImpl;
import com.grimm.model.entity.ProductEntity;
import com.grimm.model.entity.UserEntity;
import com.grimm.model.request.ProductRequest;
import com.grimm.model.request.UserRequest;
import com.grimm.model.response.ProductResponse;
import com.grimm.model.response.UserResponse;

import java.util.ArrayList;
import java.util.List;

public class UserConverters extends ConverterImpl<UserRequest, UserResponse, UserEntity>{

    @Override
    public UserEntity converToEntity(UserEntity userEntity, UserRequest userRequest) {
        return super.converToEntity(userEntity, userRequest);
    }

    @Override
    public UserResponse converToResponse(UserResponse userResponse, UserEntity userEntity) {
        return super.converToResponse(userResponse, userEntity);
    }
    @Override
    public List<UserResponse> convertToListResponse(List<UserEntity> ts){
        List<UserResponse> vs = new ArrayList<>();
            for (UserEntity userEntity: ts) {
                UserResponse userResponse = new UserResponse();
                userResponse= converToResponse(userResponse,userEntity);
                vs.add(userResponse);
            }
        return vs;
    }
}
