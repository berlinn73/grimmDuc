package com.grimm.autowire;


import com.grimm.common.annotation.Component;
import com.grimm.common.annotation.Repository;
import com.grimm.common.annotation.Service;
import com.grimm.repository.RoleRepository;
import com.grimm.repository.UserRepository;
import com.grimm.service.RoleService;
import com.grimm.service.UserService;
import org.reflections.Reflections;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

public class BeanFactory {
    public static Map<String, Object> beans;

    static {
        synchronized (BeanFactory.class) {
            beans = new HashMap<>();
            createBean();
        }
    }

    public static synchronized void createBean() {
        Reflections reflection = new Reflections("com.grimm");
        Set<? extends Class> classes = reflection.getTypesAnnotatedWith(Component.class);

        classes.forEach(s -> {
            try {
                if (!s.getTypeName().equals(Service.class.getTypeName()) && !s.getTypeName().equals(Repository.class.getTypeName())) {
                    String name = s.getSimpleName().substring(0, 1).toLowerCase() + s.getSimpleName().substring(1, s.getSimpleName().lastIndexOf("Impl"));
                    beans.put(name, s.newInstance());
                }
            } catch(InstantiationException | IllegalAccessException e){
                    e.printStackTrace();
            }
        });
    }

    public static Map<String, Object> getBeans() {
        return beans;
    }

    public static void main(String[] args) {
        for (Map.Entry entry : beans.entrySet()){
            System.out.println("key: "+entry.getKey()+" value: "+entry.getValue());
        }
//        UserRepository userRepository = (UserRepository) beans.get("userRepository");
//        RoleService roleService = (RoleService) BeanFactory.getBeans().get("roleService");
//        System.out.println(roleService.findById(2));
    }

}

