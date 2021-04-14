package com.grimm.controller.admin;

import com.grimm.autowire.BeanFactory;
import com.grimm.paging.PageRequest;
import com.grimm.paging.Pageable;
import com.grimm.repository.ProductRepository;
import com.grimm.repository.impl.CheckOutRepositoryImpl;
import com.grimm.service.CheckOutService;
import com.grimm.service.ProductService;
import com.grimm.service.impl.ProductServiceImpl;
import com.grimm.util.FormUtil;
import com.opensymphony.module.sitemesh.Page;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(urlPatterns = {"/admin-home"})
public class HomeController extends HttpServlet {
    private CheckOutService checkOutService;

    public HomeController() {
        checkOutService= (CheckOutService) BeanFactory.getBeans().get("checkOutService");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        request.setAttribute("order",checkOutService.findAll());
        request.setAttribute("revenue",checkOutService.tongTien());
        RequestDispatcher rd = request.getRequestDispatcher("/views/admin/home.jsp");
        rd.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
