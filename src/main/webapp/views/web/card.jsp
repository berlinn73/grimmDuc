
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Card</title>
</head>
<body>
<%@ include file="/common/web/header.banner.1920x300.jsp" %>
<%int i=1;%>
<!-- Cart view section -->
<div class="page-top-info">
    <div class="container">
        <h4>Giỏ hàng</h4>
        <div class="site-pagination">
            <a href="<c:url value="/views/web/home.jsp"/>">Trang chủ</a> /
            <a href="">Giỏ hàng</a> /
        </div>
    </div>
</div>
<!-- Page info end -->


<!-- cart section end -->
<section class="cart-section spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-8">
                <div class="cart-table">
                    <form action="/MyCart" method="post">
                    <h3>Giỏ hàng của bạn</h3>
                    <div class="cart-table-warp">
                        <table>
                            <thead>
                            <tr>
                                <th class="product-th">Cart</th>
                                <th class="quy-th">Hinh anh</th>
                                <th class="size-th">Ten san pham</th>
                                <th class="total-th">So Luong || Giá</th>
                            </tr>
                            </thead>
                            <tbody>
                                    <c:forEach var="item" items="${model}">
                                        <tr>
                                            <td><a class="remove" href="/MyCart?id=${item.id_myCard}&action=delete"><fa class="fa fa-close"></fa></a></td>
                                            <td><a href="/product/detail?id=${item.maSp}"><img src="<c:url value="${item.hinhAnh}"/>" alt="img"></a></td>
                                            <td><a class="aa-cart-title" href="/product/detail?id=${item.maSp}">${item.ten}</a></td>

                                            <td><input class="aa-cart-quantity" type="number" min="1" step="1" value="${item.soLuongMua}" name="index<%=i%>" placeholder=""></td>
                                            <td>${item.giaBan}</td>
                                        </tr>
                                        <%i++;%>
                                    </c:forEach>
                                    <tr>
                                        <td colspan="6" class="aa-cart-view-bottom" align="center">
                                            <input class="aa-cart-view-btn" type="submit" value="Update Cart" align="center">
                                        </td>
                                    </tr>
                            </tbody>
                        </table>
                    </div>
                    </form>
                    <div class="total-cost">
                        <h6>Tổng cộng <span>${sum}</span></h6>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 card-right">
                <form class="promo-code-form">
                    <input type="text" placeholder="Nhập mã giảm giá">
                    <button>Áp dụng</button>
                </form>
                <a href="<c:url value="/views/web/checkout.jsp"/>" class="site-btn">Thanh toán</a>
                <a href="<c:url value="/views/web/home.jsp"/>" class="site-btn sb-dark">Tiếp tục mua hàng</a>
            </div>
        </div>
    </div>
</section>
<!-- cart section end -->

<!-- Related product section -->
<section class="related-product-section">
    <div class="container">
        <div class="section-title text-uppercase">
            <h2>Tiếp tục mua hàng</h2>
        </div>
        <div class="row">
            <div class="col-lg-3 col-sm-6">
                <div class="product-item">
                    <div class="pi-pic">
                        <img src="<c:url value="/template/web/img/product/ao12-ran.jpg"/>" alt="">
                        <div class="pi-links">
                            <a href="#" class="add-card"><i class="flaticon-bag"></i><span>Thêm vào giỏ</span></a>
                            <a href="#" class="wishlist-btn"><i class="flaticon-heart"></i></a>
                        </div>
                    </div>
                    <div class="pi-text">
                        <h6>470,000đ</h6>
                        <p>Quần shorts UJ không dây</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6">
                <div class="product-item">
                    <div class="product-item">
                        <div class="pi-pic">
                            <img src="<c:url value="/template/web/img/product/quan1.jpg"/>" alt="">
                            <div class="pi-links">
                                <a href="#" class="add-card"><i class="flaticon-bag"></i><span>Thêm vào giỏ</span></a>
                                <a href="#" class="wishlist-btn"><i class="flaticon-heart"></i></a>
                            </div>
                        </div>
                        <div class="pi-text">
                            <h6>350,000đ</h6>
                            <p>Áo 12 con giáp | Rắn</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6">
                <div class="product-item">
                    <div class="pi-pic">
                        <img src="<c:url value="/template/web/img/product/quandai.jpg"/>" alt="">
                        <div class="pi-links">
                            <a href="#" class="add-card"><i class="flaticon-bag"></i><span>Thêm vào giỏ</span></a>
                            <a href="#" class="wishlist-btn"><i class="flaticon-heart"></i></a>
                        </div>
                    </div>
                    <div class="pi-text">
                        <h6>450,000đ</h6>
                        <p>Cargo B-mov </p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6">
                <div class="product-item">
                    <div class="pi-pic">
                        <img src="<c:url value="/template/web/img/product/aoiron.jpg"/>" alt="">
                        <div class="pi-links">
                            <a href="#" class="add-card"><i class="flaticon-bag"></i><span>Thêm vào giỏ</span></a>
                            <a href="#" class="wishlist-btn"><i class="flaticon-heart"></i></a>
                        </div>
                    </div>
                    <div class="pi-text">
                        <h6>350,000đ</h6>
                        <p>Áo Iron Flame Xanh</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Related product section end -->
<!-- / Cart view section -->

</body>
</html>
