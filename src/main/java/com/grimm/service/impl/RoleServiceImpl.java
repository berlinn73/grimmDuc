package com.grimm.service.impl;

import com.grimm.autowire.BeanFactory;
import com.grimm.common.annotation.Service;
import com.grimm.exception.ObjectNotFoundException;
import com.grimm.model.entity.Role;
import com.grimm.model.response.RoleResponse;
import com.grimm.repository.RoleRepository;
import com.grimm.repository.impl.RoleRepositoryImpl;
import com.grimm.service.RoleService;
import com.grimm.service.UserService;
import com.grimm.util.ObjectUtil;
import java.util.List;
import java.util.Map;

@Service
public class RoleServiceImpl implements RoleService {
    private RoleRepository roleRepository;
    public RoleServiceImpl(){
        roleRepository = (RoleRepository) BeanFactory.getBeans().get("roleRepository");
    }
    @Override
    public RoleResponse findById(int id)  {
        Role role = roleRepository.findById(id);
        if(role==null)
            try {
                throw new ObjectNotFoundException();
            } catch (ObjectNotFoundException e) {
                e.printStackTrace();
            }

        RoleResponse roleResponse = new RoleResponse();

        ObjectUtil.copyProperties(role,roleResponse);

        return roleResponse;
    }

    @Override
    public List<RoleResponse> findAll() {
        return null;
    }
    public static void main(String[] args) {
        UserService userService = (UserService) BeanFactory.getBeans().get("userService");//(RoleRepository) BeanFactory.getBeans().get("roleRepository");
        System.out.println(userService.findById(2));
    }
}
