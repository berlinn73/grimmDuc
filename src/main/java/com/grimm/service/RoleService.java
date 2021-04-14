package com.grimm.service;

import com.grimm.model.response.RoleResponse;

import java.util.List;

public interface RoleService {
    RoleResponse findById(int id);
    List<RoleResponse> findAll();
}
