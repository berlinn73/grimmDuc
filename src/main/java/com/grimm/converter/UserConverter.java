package com.grimm.converter;

import com.grimm.model.entity.UserEntity;
import com.grimm.model.request.UserRequest;
import com.grimm.model.response.UserResponse;
import com.grimm.util.ObjectUtil;

public class UserConverter {
    public static UserEntity converToEntity(UserRequest userRequest){
        UserEntity userEntity = new UserEntity();

            ObjectUtil.copyProperties(userRequest, userEntity);

        return userEntity;
    }
    public static UserEntity converToEntity(UserRequest userRequest, int id){
        UserEntity userEntity = new UserEntity();
        userEntity.setId(id);

            ObjectUtil.copyProperties(userRequest, userEntity);

        return userEntity;
    }
    public static UserResponse converToRespond(UserEntity entity) {
        UserResponse response = new UserResponse();

            ObjectUtil.copyProperties(entity, response);

        return response;
    }
}
