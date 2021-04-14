package com.grimm.controller.web.product;

import com.grimm.autowire.BeanFactory;
import com.grimm.model.entity.ProductEntity;
import com.grimm.model.response.PageResponse;
import com.grimm.model.response.ProductResponse;
import com.grimm.service.ProductService;
import com.grimm.util.FormUtil;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/product/detail")
public class QuickViewController extends HttpServlet {
    private ProductService productService;
    public QuickViewController() {
        productService= (ProductService) BeanFactory.getBeans().get("productService");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        ProductEntity productEntity= productService.findById(id);
        productEntity.getIdMenuCon();
        request.setAttribute("entity",productEntity);
        request.setAttribute("related",productService.findAllById("idMenuCon", String.valueOf(productEntity.getIdMenuCon()),"null","null"));
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/product/product-detail.jsp");
        rd.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }


}
