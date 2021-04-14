<%@include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" %>
<!-- start header top  -->
<header class="header-section">
    <div class="header-top fixed-top">
        <div class="container">
            <div class="row">
                <div class="col-md-2 text-center text-lg-left">
                    <!-- logo -->
                    <a href="<c:url value="/views/web/home.jsp"/>" class="site-logo">
                        <img src="<c:url value="/template/web/img/logo.jpg"/>" alt="">
                    </a>
                </div>

                <nav class="main-navbar">
                    <div class="container">
                        <!-- menu -->
                        <ul class="main-menu">
                            <li><a href="<c:url value="/views/web/home.jsp"/>"><i class="fas fa-home"></i></a></li>
                            <li><a href="<c:url value="/views/web/home.jsp"/>">Giới thiệu</a></li>
                            <li><a href="/product?page=1&maxPageItem=9&sortName=null&sortBy=null&ten=null">Sản phẩm</a>
                                <ul class="sub-menu">
                                    <li><a href="/product?page=1&maxPageItem=9&sortName=null&sortBy=null&ten=null">Áo tay ngắn</a></li>
                                    <li><a href="/product?page=1&maxPageItem=9&sortName=null&sortBy=null&ten=null">Áo tay dài</a></li>
                                    <li><a href="/product?page=1&maxPageItem=9&sortName=null&sortBy=null&ten=null">Hoddie</a></li>
                                    <li><a href="/product?page=1&maxPageItem=9&sortName=null&sortBy=null&ten=null">Quần short</a></li>
                                    <li><a href="/product?page=1&maxPageItem=9&sortName=null&sortBy=null&ten=null">Quần dài</a></li>
                                    <li><a href="/product?page=1&maxPageItem=9&sortName=null&sortBy=null&ten=null">Mũ</a></li>
                                    <li><a href="/product?page=1&maxPageItem=9&sortName=null&sortBy=null&ten=null">Vớ</a></li>
                                </ul>
                            </li>
                            <!--<li><a href="#">Pages</a>
                                <ul class="sub-menu">
                                    <li><a href="./product.html">Product Page</a></li>
                                    <li><a href="./category.html">Category Page</a></li>
                                    <li><a href="./cart.html">Cart Page</a></li>
                                    <li><a href="./checkout.html">Checkout Page</a></li>
                                    <li><a href="./contact.html">Contact Page</a></li>
                                </ul>
                            </li>-->
                            <li><a href="<c:url value="/views/web/home.jsp"/>">Tin tức</a></li>
                            <li><a href="<c:url value="/views/web/contact.jsp"/>">Liên hệ</a></li>
                            <li><form class="header-search-form">
                                <input type="text" placeholder="Tìm kiếm ....">
                                <button><i class="flaticon-search"></i></button>
                            </form></li>
                        </ul>
                    </div>
                </nav>

                <div class="col-md-3 text-right">
                    <div class="user-panel">
                        <div class="up-item">
                            <c:if test="${empty USER}">
                                <a href="<c:url value="/login?action=login"/>"><i class="flaticon-profile"></i></a>
                            </c:if>
                            <c:if test="${not empty USER}">
                                <a data-toggle="modal" data-target="">Hello, ${USER.userName}</a>
                            </c:if>
                        </div>
                        <div class="up-item">
                            <div class="shopping-card">
                                <a href="/MyCart"><i class="flaticon-bag"></i></a>
                                <span>0</span>
                            </div>
                        </div>
                        <div class="up-item">
                            <c:if test="${not empty USER}">
                                <a href="<c:url value="/login?action=logout"/>">Đăng xuất</a>
                            </c:if>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>

</header>
<!-- / header top  -->