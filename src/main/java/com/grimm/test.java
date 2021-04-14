package com.grimm;

import com.grimm.model.response.CheckOutResponse;
import com.grimm.service.impl.CheckOutServiceImpl;
import com.grimm.util.ObjectUtil;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class test {
    public static void main(String[] args) throws SQLException {
        CheckOutResponse checkOutResponse = new CheckOutServiceImpl().findById(5);

        String a= checkOutResponse.getListProduct();
        ObjectUtil.convertStringToList(a).stream().forEach(System.out::println);
    }
}
