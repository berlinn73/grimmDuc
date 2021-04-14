package com.grimm.service.impl;

import com.grimm.autowire.BeanFactory;
import com.grimm.common.annotation.Service;
import com.grimm.converter.UserConverter;
import com.grimm.converter.extend.UserConverters;
import com.grimm.exception.ObjectNotFoundException;
import com.grimm.model.entity.UserEntity;
import com.grimm.model.request.Auth;
import com.grimm.model.request.UserRequest;
import com.grimm.model.response.UserResponse;
import com.grimm.paging.Pageable;
import com.grimm.repository.UserRepository;
import com.grimm.repository.impl.UserRepositoryImpl;
import com.grimm.service.UserService;
import com.grimm.util.MySqlConnectionUtil;
import com.grimm.util.ObjectUtil;

import java.sql.SQLException;
import java.util.List;
import java.util.Optional;

@Service
public class UserServiceImpl implements UserService {
    private UserRepository userRepository;
    private UserConverters userConverter;

    public UserServiceImpl() {
        userRepository = (UserRepository) BeanFactory.getBeans().get("userRepository");
        userConverter = new UserConverters();
    }

    @Override
    public void insert(UserRequest request) throws SQLException {
        UserEntity entity = UserConverter.converToEntity(request);
        new UserRepositoryImpl().insert(entity);
    }

    @Override
    public void update(UserRequest request, int id1){
        UserEntity entity = UserConverter.converToEntity(request, id1);
        new UserRepositoryImpl().update(entity);
    }

    @Override
    public UserResponse findUserByUserNameAndPassWord(Auth auth){
        Optional<UserEntity> userEntity = userRepository.findByUserNameAndPassWord(auth.getUserName(), auth.getPassword());

        UserResponse userResponse = new UserResponse();
        try {
            userEntity.orElseThrow(ObjectNotFoundException::new);
            ObjectUtil.copyProperties(userEntity.get(),userResponse);
            return userResponse;
        } catch (ObjectNotFoundException e) {
            e.printStackTrace();
        }
        return null;
    }

    @Override
    public List<UserResponse> findAll()  {
        List<UserEntity> userEntities= new UserRepositoryImpl().findAll();
        return userConverter.convertToListResponse(userEntities);
    }

    @Override
    public void delete(int id) {
        try {
            userRepository.delete(id);
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
        }
    }

    @Override
    public UserResponse findById(Integer id) {
        UserResponse userResponseTemp = new UserResponse();
        UserEntity userEntity = userRepository.findById(id);
        UserResponse userResponse = userConverter.converToResponse(userResponseTemp,userEntity);
        return userResponse;
    }

    @Override
    public void deleteByIds(int[] ids) {
        for (int id: ids) {
            new UserRepositoryImpl().delete(id);
        }
    }

    @Override
    public List<UserResponse> findAll(Pageable pageable) {
        List<UserEntity> userEntities= new UserRepositoryImpl().findAll(pageable);
        return userConverter.convertToListResponse(userEntities);
    }

    @Override
    public void update(String passN, int Id) {
        String sql = "update User set Password = "+passN+" where id="+Id+"";
        try {
            new MySqlConnectionUtil().thucThiCauLenhSQL(sql);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
