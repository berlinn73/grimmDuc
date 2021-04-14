package com.grimm.controller.web.product;

import com.grimm.autowire.BeanFactory;
import com.grimm.model.entity.SyntheticEntity;
import com.grimm.model.entity.UserEntity;
import com.grimm.model.request.WishListRequest;
import com.grimm.model.response.PageResponse;
import com.grimm.model.response.UserResponse;
import com.grimm.paging.PageRequest;
import com.grimm.repository.WishlistRepository;
import com.grimm.repository.impl.WistlistRepositoryImpl;
import com.grimm.service.WishListService;
import com.grimm.service.impl.WishListServiceImpl;
import com.grimm.service.session.SessionUtil;
import com.grimm.util.FormUtil;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/WishList")
public class WishListController extends HttpServlet {
    private WishListService wishListService;
    public WishListController() {
        wishListService= (WishListService) BeanFactory.getBeans().get("wishListService");
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserResponse userResponse = (UserResponse) SessionUtil.getSession(request,"USER");
        PageResponse<SyntheticEntity> pageResponse = FormUtil.toModel(PageResponse.class, request);
        String maSpD = request.getParameter("maSp");
        String maSpI = request.getParameter("id");
        String action= request.getParameter("action");
        if (maSpD != null && action.equals("delete")){
            new WistlistRepositoryImpl().delete(Integer.parseInt(maSpD));
            if (pageResponse.getPage()==0){
                pageResponse.setMaxPageItem(3);
                pageResponse.setPage(1);
            }
        }
        if (maSpI != null && action.equals("insert")){
            if(!wishListService.kiemTraSanPhamCoTrongCard(Integer.parseInt(maSpI))){
                WishListRequest wishListRequest= new WishListRequest(Integer.parseInt(maSpI),1,userResponse.getId());
                wishListService.insert(wishListRequest);
            }

        }
        pageResponse.setTotalItem((int) wishListService.count());
        pageResponse.setTotalPage((int) Math.ceil((double) pageResponse.getTotalItem() / pageResponse.getMaxPageItem()));
        PageRequest pageRequest = new PageRequest(pageResponse.getPage(), pageResponse.getMaxPageItem());
        pageResponse.setListResult(wishListService.findAllByIdUser(pageRequest,"id", String.valueOf(userResponse.getId())));
        request.setAttribute("model",pageResponse);
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/wishlist.jsp");
        rd.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
