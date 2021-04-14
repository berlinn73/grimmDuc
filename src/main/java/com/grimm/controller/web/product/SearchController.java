package com.grimm.controller.web.product;

import com.grimm.autowire.BeanFactory;
import com.grimm.model.entity.ProductEntity;
import com.grimm.model.response.PageResponse;
import com.grimm.model.response.ProductResponse;
import com.grimm.paging.PageRequest;
import com.grimm.repository.ProductRepository;
import com.grimm.service.ProductService;
import com.grimm.service.session.SessionUtil;
import com.grimm.util.FormUtil;
import com.grimm.util.HttpUtil;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/search")
public class SearchController extends HttpServlet {
    private ProductService productService;
    private PageResponse<ProductResponse> pageResponse;
    public SearchController() {
        productService= (ProductService) BeanFactory.getBeans().get("productService");
        pageResponse= new PageResponse<>();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PageResponse pageResponse = FormUtil.toModel(PageResponse.class, request);
        response.sendRedirect("/product?page=1&maxPageItem=5&sortName=null&sortBy=null&ten="+pageResponse.getTen()+"");
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

}
