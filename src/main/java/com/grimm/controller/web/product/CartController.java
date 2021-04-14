package com.grimm.controller.web.product;

import com.grimm.autowire.BeanFactory;
import com.grimm.model.entity.SyntheticEntity;
import com.grimm.model.request.CardRequest;
import com.grimm.model.request.WishListRequest;
import com.grimm.model.response.PageResponse;
import com.grimm.model.response.ProductResponse;
import com.grimm.model.response.UserResponse;
import com.grimm.repository.impl.CardRepositoryImpl;
import com.grimm.repository.impl.WistlistRepositoryImpl;
import com.grimm.service.CardService;
import com.grimm.service.session.SessionUtil;
import com.grimm.util.FormUtil;
import com.grimm.util.MySqlConnectionUtil;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/MyCart")
public class CartController extends HttpServlet {
    private CardService cardService;
    private PageResponse<ProductResponse> pageResponse;

    public CartController() {
        cardService = (CardService) BeanFactory.getBeans().get("cardService");
        this.pageResponse = new PageResponse<>();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserResponse userResponse = (UserResponse) SessionUtil.getSession(request, "USER");
        PageResponse<SyntheticEntity> pageResponse = FormUtil.toModel(PageResponse.class, request);
        String maSp = request.getParameter("maSp");
        String id = request.getParameter("id");
        String action = request.getParameter("action");
        if (id != null && action.equals("delete")) {
            cardService.delete(Integer.parseInt(id));
            if (pageResponse.getPage() == 0) {
                pageResponse.setMaxPageItem(3);
                pageResponse.setPage(1);
            }
        }
        if (maSp != null && action.equals("insert")) {
            if (!cardService.kiemTraSanPhamCoTrongCard(Integer.parseInt(maSp), userResponse.getId().toString())) {
                CardRequest cardRequest = new CardRequest(Integer.valueOf(maSp), 1, userResponse.getId());
                cardService.insert(cardRequest);
            }
            else{

            }
        }
        request.setAttribute("model", cardService.findAllByIdUser("id_user", String.valueOf(userResponse.getId())));
        request.setAttribute("sum", cardService.tongTien(userResponse.getId()));
        RequestDispatcher rd = request.getRequestDispatcher("/views/web/card.jsp");
        rd.forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UserResponse userResponse = (UserResponse) SessionUtil.getSession(request, "USER");
        List<SyntheticEntity> syntheticEntityList = cardService.findAllByIdUser("id_user", String.valueOf(userResponse.getId()));
        int result = 1;
        try {
            for (int i = 0; i < cardService.countById("id_user", String.valueOf(userResponse.getId())); i++) {
                String index2 = request.getParameter("index" + result + "");
                request.setAttribute("MODEL", ((UserResponse) SessionUtil.getSession(request, "USER")));
                cardService.updateCard(index2, String.valueOf(userResponse.getId()), syntheticEntityList.get(i).getMaSp());
                result++;
            }
        } catch (IndexOutOfBoundsException e) {
            RequestDispatcher rd = request.getRequestDispatcher("/views/web/card.jsp");
            rd.forward(request, response);
        }
        response.sendRedirect("/MyCart");
    }

}
