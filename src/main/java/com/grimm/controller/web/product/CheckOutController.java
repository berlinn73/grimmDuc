package com.grimm.controller.web.product;

import com.grimm.autowire.BeanFactory;
import com.grimm.model.entity.CheckOutEntity;
import com.grimm.model.request.Auth;
import com.grimm.model.request.CheckOutRequest;
import com.grimm.model.response.PageResponse;
import com.grimm.model.response.UserResponse;
import com.grimm.service.CardService;
import com.grimm.service.CheckOutService;
import com.grimm.service.WishListService;
import com.grimm.service.impl.CheckOutServiceImpl;
import com.grimm.service.session.SessionUtil;
import com.grimm.util.FormUtil;
import com.grimm.util.ObjectUtil;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.time.LocalDate;

@WebServlet("/checkout")
public class CheckOutController extends HttpServlet {
    private CardService cardService;
    private CheckOutService checkOutService;
    public CheckOutController() {
        cardService= (CardService) BeanFactory.getBeans().get("cardService");
        checkOutService= (CheckOutService) BeanFactory.getBeans().get("checkOutService");
    }
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        UserResponse userResponse = (UserResponse) SessionUtil.getSession(req,"USER");
        req.setAttribute("model",checkOutService.listNameProduct(userResponse.getId()));
        req.setAttribute("sum",cardService.tongTien(userResponse.getId()));
        RequestDispatcher rd = req.getRequestDispatcher("/views/web/checkout.jsp");
        rd.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        UserResponse userResponse = (UserResponse) SessionUtil.getSession(req,"USER");
        CheckOutRequest checkOutRequest = FormUtil.toModel(CheckOutRequest.class, req);
        checkOutRequest.setModifiedDate(LocalDate.now());
        checkOutRequest.setListProduct(ObjectUtil.convertListToString(userResponse.getId()));
        checkOutRequest.setTongTien(cardService.tongTien(userResponse.getId()));
        checkOutRequest.setId_user(userResponse.getId());
        checkOutService.insert(checkOutRequest);
        resp.sendRedirect("/index");
    }
}
