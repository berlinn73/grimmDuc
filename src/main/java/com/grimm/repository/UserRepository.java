package com.grimm.repository;

import com.grimm.model.entity.UserEntity;

import java.sql.SQLException;
import java.util.Optional;


public interface UserRepository extends JpaRepository<UserEntity, Integer> {
    Optional<UserEntity> findByUserNameAndPassWord(String userName, String passWord);
    void deleteByIds(int[] ids);
}
