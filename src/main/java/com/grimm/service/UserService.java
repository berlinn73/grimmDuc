package com.grimm.service;

import com.grimm.exception.ObjectNotFoundException;
import com.grimm.model.request.Auth;
import com.grimm.model.request.UserRequest;
import com.grimm.model.response.ProductResponse;
import com.grimm.model.response.UserResponse;
import com.grimm.paging.Pageable;

import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
import java.util.List;

public interface UserService {
    void insert(UserRequest request) throws SQLException;

    void update(UserRequest request, int id) throws SQLException;

    UserResponse findUserByUserNameAndPassWord(Auth auth);

    List<UserResponse> findAll();

    void delete (int id) throws NoSuchFieldException;

    UserResponse findById(Integer id);

    void deleteByIds(int[] ids);

    List<UserResponse> findAll(Pageable pageable);

    void update(String passN, int Id);
}
