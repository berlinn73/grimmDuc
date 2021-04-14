package com.grimm.security;

import com.grimm.autowire.BeanFactory;
import com.grimm.common.constant.RoleConstant;
import com.grimm.exception.ObjectNotFoundException;
import com.grimm.model.request.Auth;
import com.grimm.model.response.RoleResponse;
import com.grimm.model.response.UserResponse;
import com.grimm.service.RoleService;
import com.grimm.service.UserService;
import com.grimm.service.impl.RoleServiceImpl;
import com.grimm.service.impl.UserServiceImpl;
import com.grimm.service.session.SessionUtil;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;

public class Authen {
    public static Authen of(){
        return new Authen();
    }
    public String auth(Auth auth, HttpServletRequest request) throws IllegalAccessException, InvocationTargetException, ObjectNotFoundException, InstantiationException, SQLException, NoSuchMethodException, NoSuchFieldException {
        UserResponse userResponse = new UserServiceImpl().findUserByUserNameAndPassWord(auth);
        SessionUtil.setSession(request, "USER", userResponse);
        if (userResponse == null){
            SessionUtil.removeSession(request,"USER");
        }
        String url=null ;
        RoleResponse roleResponse = new RoleServiceImpl().findById(userResponse.getRoleId());
        if(RoleConstant.ADMIN.getValue().equals(roleResponse.getName())){
            url="/admin-home";
        }else if(RoleConstant.USER.getValue().equals(roleResponse.getName())){
            url="/index";
        }
        return url;
    }
}
