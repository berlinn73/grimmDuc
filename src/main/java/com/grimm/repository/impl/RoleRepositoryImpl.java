package com.grimm.repository.impl;

import com.grimm.common.annotation.Repository;
import com.grimm.model.entity.Role;
import com.grimm.model.entity.UserEntity;
import com.grimm.repository.RoleRepository;

import java.util.List;

@Repository
public class RoleRepositoryImpl extends BasicQuery<Role, Integer> implements RoleRepository {
    @Override
    public <S extends Role> S findById(Integer integer) {
        return super.findById(integer);
    }

    @Override
    public <S extends Role> List<S> findAll() {
        return super.findAll();
    }
}
