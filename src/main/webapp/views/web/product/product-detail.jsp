<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 3/31/2020
  Time: 2:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@include file="/common/taglib.jsp"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ include file="/common/web/header.banner.1920x300.jsp" %>
<!-- product category -->
<section id="aa-product-details">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="aa-product-details-area">
                    <div class="aa-product-details-content">
                        <div class="row">
                            <!-- Modal view slider -->
                            <div class="col-md-5 col-sm-5 col-xs-12">
                                <div class="aa-product-view-slider">
                                    <div id="demo1" class="simpleLens-gallery-container">
                                        <div class="simpleLens-container">
                                            <div class="simpleLens-big-image-container"><a data-lens-image="img/view-slider/large/polo-shirt-1.png" class="simpleLens-lens-image"><img src="<c:url value="${entity.hinhAnh}"/>"></a></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Modal view content -->
                            <div class="col-md-7 col-sm-7 col-xs-12">
                                <div class="aa-product-view-content">
                                    <h3>${entity.tenSanPham}</h3>
                                    <div class="aa-price-block">
                                        <span class="aa-product-view-price">${entity.giaBan}</span>
                                        <p class="aa-product-avilability">Avilability: <span>In stock</span></p>
                                    </div>
                                    <p>${entity.thongTinChiTiet}</p>
                                    <h4>Size</h4>
                                    <div class="aa-prod-view-size">
                                        <a href="#">S</a>
                                        <a href="#">M</a>
                                        <a href="#">L</a>
                                        <a href="#">XL</a>
                                    </div>
                                    <h4>Color</h4>
                                    <div class="aa-color-tag">
                                        <a href="#" class="aa-color-green"></a>
                                        <a href="#" class="aa-color-yellow"></a>
                                        <a href="#" class="aa-color-pink"></a>
                                        <a href="#" class="aa-color-black"></a>
                                        <a href="#" class="aa-color-white"></a>
                                    </div>
                                    <div class="aa-prod-quantity">
                                        <form action="">
                                            <select id="aa" name="">
                                                <option selected="1" value="0">1</option>
                                                <option value="1">2</option>
                                                <option value="2">3</option>
                                                <option value="3">4</option>
                                                <option value="4">5</option>
                                                <option value="5">6</option>
                                            </select>
                                        </form>
                                        <p class="aa-prod-category">
                                            Category: <a href="#">${entity.idMenuCon}</a>
                                        </p>
                                    </div>
                                    <div class="aa-prod-view-bottom">
                                        <a class="aa-add-to-cart-btn" href="/MyCart?maSp=${entity.id}&action=insert">Add To Cart</a>
                                        <a class="aa-add-to-cart-btn" href="/WishList?id=${item.id}&page=1&maxPageItem=3&action=insert">Wishlist</a>
                                        <a class="aa-add-to-cart-btn" href="#">Compare</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="aa-product-details-bottom">
                        <ul class="nav nav-tabs" id="myTab2">
                            <li><a href="#description" data-toggle="tab">Preservation</a></li>
                            <li><a href="#review" data-toggle="tab">Reviews</a></li>
                        </ul>

                        <!-- Tab panes -->
                        <div class="tab-content">
                            <div class="tab-pane fade in active" id="description">
                                <p>Chi ti???t b???o qu???n s???n ph???m :</p>
                                <ul>
                                    <li>V???i d???t kim : sau khi gi???t s???n ph???m ph???i ???????c ph??i ngang tr??nh bai d??n.</li>
                                    <li>V???i th?? , tuytsy , kaki kh??ng c?? ph???i hay trang tr?? ???? c?????m th?? c?? th??? gi???t m??y.</li>
                                    <li>V???i th?? , tuytsy, kaki c?? ph???i m??u t?????ng ph???n hay trang tr?? voan , l???a , ???? c?????m th?? c???n gi???t tay.</li>
                                    <li>????? Jeans n??n h???n ch??? gi???t b???ng m??y gi???t v?? s??? l??m phai m??u jeans.N???u gi???t th?? n??n l???n tr??i s???n ph???m khi gi???t , ????ng khuy , k??o kh??a, kh??ng n??n gi???t chung c??ng ????? s??ng m??u , tr??nh d??nh m??u v??o c??c s???n ph???m kh??c. </li>
                                    <li>C??c s???n ph???m c???n ???????c gi???t ngay kh??ng ng??m tr??nh b??? loang m??u , ph??n bi???t m??u v?? lo???i v???i ????? tr??nh tr?????ng h???p v???i phai. Kh??ng n??n gi???t s???n ph???m v???i x?? ph??ng c?? ch???t t???y m???nh , n??n gi???t c??ng x?? ph??ng pha lo??ng.</li>
                                    <li>Nh???ng ch???t v???i 100% cotton , kh??ng n??n ph??i s???n ph???m b???ng m???c ??o m?? n??n v???t ngang s???n ph???m l??n d??y ph??i ????? tr??nh t??nh tr???ng r???n v???i.</li>
                                    <li>Khi ???i s???n ph???m b???ng b??n l?? v?? s??? d???ng ch??? ????? h??i n?????c s??? l??m cho s???n ph???m d??? ???i ph???ng , m??t v?? kh??ng b??? ch??y , gi??? m??u s???n ph???m ???????c ?????p v?? b???n l??u h??n. Nhi???t ????? c???a b??n l?? t??y theo t???ng lo???i v???i. </li>
                                </ul>
                            </div>
                            <div class="tab-pane fade " id="review">
                                <div class="aa-product-review-area">
                                    <h4>2 Reviews for T-Shirt</h4>
                                    <ul class="aa-review-nav">
                                        <li>
                                            <div class="media">
                                                <div class="media-left">
                                                    <a href="#">
                                                        <img class="media-object" src="img/testimonial-img-3.jpg" alt="girl image">
                                                    </a>
                                                </div>
                                                <div class="media-body">
                                                    <h4 class="media-heading"><strong>Marla Jobs</strong> - <span>March 26, 2016</span></h4>
                                                    <div class="aa-product-rating">
                                                        <span class="fa fa-star"></span>
                                                        <span class="fa fa-star"></span>
                                                        <span class="fa fa-star"></span>
                                                        <span class="fa fa-star"></span>
                                                        <span class="fa fa-star-o"></span>
                                                    </div>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                                                </div>
                                            </div>
                                        </li>
                                        <li>
                                            <div class="media">
                                                <div class="media-left">
                                                    <a href="#">
                                                        <img class="media-object" src="img/testimonial-img-3.jpg" alt="girl image">
                                                    </a>
                                                </div>
                                                <div class="media-body">
                                                    <h4 class="media-heading"><strong>Marla Jobs</strong> - <span>March 26, 2016</span></h4>
                                                    <div class="aa-product-rating">
                                                        <span class="fa fa-star"></span>
                                                        <span class="fa fa-star"></span>
                                                        <span class="fa fa-star"></span>
                                                        <span class="fa fa-star"></span>
                                                        <span class="fa fa-star-o"></span>
                                                    </div>
                                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.</p>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                    <h4>Add a review</h4>
                                    <div class="aa-your-rating">
                                        <p>Your Rating</p>
                                        <a href="#"><span class="fa fa-star-o"></span></a>
                                        <a href="#"><span class="fa fa-star-o"></span></a>
                                        <a href="#"><span class="fa fa-star-o"></span></a>
                                        <a href="#"><span class="fa fa-star-o"></span></a>
                                        <a href="#"><span class="fa fa-star-o"></span></a>
                                    </div>
                                    <!-- review form -->
                                    <form action="" class="aa-review-form">
                                        <div class="form-group">
                                            <label for="message">Your Review</label>
                                            <textarea class="form-control" rows="3" id="message"></textarea>
                                        </div>
                                        <div class="form-group">
                                            <label for="name">Name</label>
                                            <input type="text" class="form-control" id="name" placeholder="Name">
                                        </div>
                                        <div class="form-group">
                                            <label for="email">Email</label>
                                            <input type="email" class="form-control" id="email" placeholder="example@gmail.com">
                                        </div>

                                        <button type="submit" class="btn btn-default aa-review-submit">Submit</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- Related product -->
                    <div class="aa-product-related-item">
                        <h3>Related Products</h3>
                        <ul class="aa-product-catg aa-related-item-slider">
                            <c:forEach var="item" items="${related}">
                            <!-- start single product item -->
                                <li>
                                    <figure>
                                        <a class="aa-product-img" href="#"><img src="<c:url value="${item.hinhAnh}"/>" alt="polo shirt img"></a>
                                        <a class="aa-add-card-btn"href="#"><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                                        <figcaption>
                                            <h4 class="aa-product-title"><a href="#">${item.tenSanPham}</a></h4>
                                            <span class="aa-product-price">${item.giaBan}</span><span class="aa-product-price"><del>$65.50</del></span>
                                        </figcaption>
                                    </figure>
                                    <div class="aa-product-hvr-content">
                                        <a href="#" data-toggle="tooltip" data-placement="top" title="Add to Wishlist"><span class="fa fa-heart-o"></span></a>
                                        <a href="/product/detail?id=${item.id}" data-toggle="tooltip" data-placement="top" title="View detail"><span class="fa fa-exchange"></span></a>
                                        <a href="#" data-toggle2="tooltip" data-placement="top" title="Quick View" data-toggle="modal" data-target="#quick-view-modal"><span class="fa fa-search"></span></a>
                                    </div>
                                    <!-- product badge -->
                                    <span class="aa-badge aa-sale" href="#">SALE!</span>
                                </li>
                                <%-- quick view--%>
                                <div class="modal fade" id="quick-view-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                    <div class="modal-dialog">
                                        <div class="modal-content">
                                            <div class="modal-body">
                                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                <div class="row">
                                                    <!-- Modal view slider -->
                                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                                        <div class="aa-product-view-slider">
                                                            <div class="simpleLens-gallery-container" id="demo-1">
                                                                <div class="simpleLens-container">
                                                                    <div class="simpleLens-big-image-container">
                                                                        <a class="simpleLens-lens-image" data-lens-image="img/view-slider/large/polo-shirt-1.png">
                                                                            <img src="<c:url value="${item.hinhAnh}"/>">
                                                                        </a>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- Modal view content -->
                                                    <div class="col-md-6 col-sm-6 col-xs-12">
                                                        <div class="aa-product-view-content">
                                                            <h3>${item.tenSanPham}</h3>
                                                            <div class="aa-price-block">
                                                                <span class="aa-product-view-price">${item.giaBan}</span>
                                                                <p class="aa-product-avilability">Avilability: <span>In stock</span></p>
                                                            </div>
                                                            <p>${item.trangThai}</p>
                                                            <h4>Size</h4>
                                                            <div class="aa-prod-view-size">
                                                                <a href="#">S</a>
                                                                <a href="#">M</a>
                                                                <a href="#">L</a>
                                                                <a href="#">XL</a>
                                                            </div>
                                                            <div class="aa-prod-quantity">
                                                                <form action="">
                                                                    <select name="" id="bb">
                                                                        <option value="0" selected="1">1</option>
                                                                        <option value="1">2</option>
                                                                        <option value="2">3</option>
                                                                        <option value="3">4</option>
                                                                        <option value="4">5</option>
                                                                        <option value="5">6</option>
                                                                    </select>
                                                                </form>
                                                                <p class="aa-prod-category">
                                                                    Category: <a href="#">Polo T-Shirt</a>
                                                                </p>
                                                            </div>
                                                            <div class="aa-prod-view-bottom">
                                                                <a href="#" class="aa-add-to-cart-btn"><span class="fa fa-shopping-cart"></span>Add To Cart</a>
                                                                <a href="/product/detail?id=${item.id}" class="aa-add-to-cart-btn">View Details</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div><!-- /.modal-content -->
                                    </div><!-- /.modal-dialog -->
                                </div>
                                <!-- start single product item -->
                            </c:forEach>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- / product category -->


</body>
</html>
