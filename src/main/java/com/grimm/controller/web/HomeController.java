package com.grimm.controller.web;

import com.grimm.autowire.BeanFactory;
import com.grimm.model.entity.ProductEntity;
import com.grimm.model.response.UserResponse;
import com.grimm.repository.ProductRepository;
import com.grimm.repository.impl.ProductRepositoryImpl;
import com.grimm.service.CardService;
import com.grimm.service.CheckOutService;
import com.grimm.service.ProductService;
import com.grimm.service.session.SessionUtil;
import com.grimm.util.HttpUtil;
import com.sun.xml.internal.fastinfoset.algorithm.BASE64EncodingAlgorithm;
import org.omg.PortableServer.POA;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/index")
public class HomeController extends HttpServlet {
    private ProductService productService;
    public HomeController() {
        productService= (ProductService) BeanFactory.getBeans().get("productService");
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpUtil.setCategory(request,productService);
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/home.jsp");
        rd.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

}
