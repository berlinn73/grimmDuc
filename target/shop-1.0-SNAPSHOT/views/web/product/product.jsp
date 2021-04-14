<%@ page import="com.grimm.repository.ProductRepository" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="com.grimm.repository.impl.ProductRepositoryImpl" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<html>
<head>
    <title>Product</title>
</head>
<body>
<%@ include file="/common/web/header.banner.1920x300.jsp" %>
<!-- product category -->
<%
    ProductRepository product = new ProductRepositoryImpl();
    NumberFormat nf = NumberFormat.getInstance();
    nf.setMinimumIntegerDigits(0);
%>
<section class="category-section spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 order-2 order-lg-1">
                <div class="filter-widget">
                    <h2 class="fw-title">Danh mục</h2>
                    <ul class="category-menu">
                        <li><a href="#">Áo</a>
                            <ul class="sub-menu">
                                <li><a href="#">Áo dài tay <span>(2)</span></a></li>
                                <li><a href="#">Áo ngắn tay<span>(56)</span></a></li>
                                <li><a href="#">Áo sơ mi<span>(36)</span></a></li>
                                <li><a href="#">Áo hoodie<span>(19)</span></a></li>
                            </ul>
                        </li>
                        <li><a href="#">Quần</a>
                            <ul class="sub-menu">
                                <li><a href="#">Quần dài <span>(2)</span></a></li>
                                <li><a href="#">Quần short<span>(56)</span></a></li>
                            </ul></li>
                        <li><a href="#">Mũ</a></li>

                        <li><a href="#">Vớ</a></li>

                    </ul>
                </div>
                <div class="filter-widget">
                    <h2 class="fw-title">Sắp xếp</h2>
                    <ul class="category-menu">
                        <li><a href="/product?page=1&maxPageItem=9&sortName=null&sortBy=null&ten=null">Mặc định</a></li>
                        <li><a href="/product?page=1&maxPageItem=9&sortName=asc&sortBy=null&ten=null">Giá tăng dần</a></li>
                        <li><a href="/product?page=1&maxPageItem=9&sortName=desc&sortBy=null&ten=null">Giá giảm dần</a></li>
                    </ul>
                </div>
                <div class="filter-widget mb-0">
                    <h2 class="fw-title">Tìm kiếm theo</h2>
                    <div class="price-range-wrap">
                        <h4>Giá</h4>
                        <div class="price-range ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content" data-min="10" data-max="200">
                            <div class="ui-slider-range ui-corner-all ui-widget-header" style="left: 0%; width: 100%;"></div>
                            <span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default" style="left: 0%;">
								</span>
                            <span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default" style="left: 100%;">
								</span>
                        </div>
                        <div class="range-slider">
                            <div class="price-input">
                                <input type="text" id="minamount">
                                <input type="text" id="maxamount">
                            </div>
                        </div>
                    </div>
                </div>
                <div class="filter-widget mb-0">
                    <h2 class="fw-title">Màu sắc</h2>
                    <div class="fw-color-choose">
                        <div class="cs-item">
                            <input type="radio" name="cs" id="gray-color">
                            <label class="cs-gray" for="gray-color">
                                <span>(3)</span>
                            </label>
                        </div>
                        <div class="cs-item">
                            <input type="radio" name="cs" id="orange-color">
                            <label class="cs-orange" for="orange-color">
                                <span>(25)</span>
                            </label>
                        </div>
                        <div class="cs-item">
                            <input type="radio" name="cs" id="yollow-color">
                            <label class="cs-yollow" for="yollow-color">
                                <span>(12)</span>
                            </label>
                        </div>
                        <div class="cs-item">
                            <input type="radio" name="cs" id="green-color">
                            <label class="cs-green" for="green-color">
                                <span>(75)</span>
                            </label>
                        </div>
                        <div class="cs-item">
                            <input type="radio" name="cs" id="purple-color">
                            <label class="cs-purple" for="purple-color">
                                <span>(9)</span>
                            </label>
                        </div>
                        <div class="cs-item">
                            <input type="radio" name="cs" id="blue-color" checked="">
                            <label class="cs-blue" for="blue-color">
                                <span>(29)</span>
                            </label>
                        </div>
                    </div>
                </div>
                <div class="filter-widget mb-0">
                    <h2 class="fw-title">Size</h2>
                    <div class="fw-size-choose">
                        <div class="sc-item">
                            <input type="radio" name="sc" id="xs-size">
                            <label for="xs-size">XS</label>
                        </div>
                        <div class="sc-item">
                            <input type="radio" name="sc" id="s-size">
                            <label for="s-size">S</label>
                        </div>
                        <div class="sc-item">
                            <input type="radio" name="sc" id="m-size"  checked="">
                            <label for="m-size">M</label>
                        </div>
                        <div class="sc-item">
                            <input type="radio" name="sc" id="l-size">
                            <label for="l-size">L</label>
                        </div>
                        <div class="sc-item">
                            <input type="radio" name="sc" id="xl-size">
                            <label for="xl-size">XL</label>
                        </div>
                        <div class="sc-item">
                            <input type="radio" name="sc" id="xxl-size">
                            <label for="xxl-size">XXL</label>
                        </div>
                    </div>
                </div>
                <div class="filter-widget">
                    <h2 class="fw-title">Bộ sưu tập</h2>
                    <ul class="category-menu">
                        <li><a href="#">Quần đi rừng <span>(2)</span></a></li>
                        <li><a href="#">Con rồng cháu tiên<span>(10)</span></a></li>
                        <li><a href="#">12 con giáp<span>(12)</span></a></li>
                        <li><a href="#">Sơn hà đại định<span>(27)</span></a></li>
                        <li><a href="#">K'ho<span>(19)</span></a></li>
                    </ul>
                </div>
            </div>



            <div class="col-lg-9  order-1 order-lg-2 mb-5 mb-lg-0">
                <div class="row">
                    <div>
                        <ul>
                            <c:forEach var="item" items="${model.listResult}">
                                <!-- start single product item -->
                                <li>
                                    <figure>
                                        <div class="product-item">
                                            <div class="pi-pic">
                                                <div class="tag-sale">Giảm giá</div>
                                                <a href="/product/detail?id=${item.id}"><img src="<c:url value="${item.hinhAnh}"/>" alt="${item.tenSanPham}"></a>

                                                <div class="pi-links">
                                                    <a href="/MyCart?maSp=${item.id}&action=insert" class="add-card"><i class="flaticon-bag"></i><span>Thêm vào giỏ</span></a>
                                                    <a href="/WishList?id=${item.id}&page=1&maxPageItem=3&action=insert" class="wishlist-btn"><i class="flaticon-heart"></i></a>
                                                </div>
                                            </div>
                                            <figcaption>
                                                <div class="pi-text">
                                                    <span class="aa-product-price"><fmt:formatNumber value="${item.giaBan}" type="currency" ></fmt:formatNumber></span><span class="aa-product-price"></span>
                                                    <a href="/product/detail?id=${item.id}"> ||    ${item.tenSanPham} </a>
                                                    <a href="/product/detail?id=${item.id}" data-toggle="tooltip" data-placement="top" title="View detail"><span class="fa fa-exchange"></span></a>
                                                    <a href="#" data-toggle2="tooltip" data-placement="top" title="Quick View" data-toggle="modal" data-target="#quick-view-modal"><span class="fa fa-search"></span></a>
                                                </div>
                                            </figcaption>
                                        </div>
                                    </figure>
                                    <!-- product badge -->
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
                                </li>

                            </c:forEach>
                        </ul>
                    </div>
                    <div class="text-center w-100 pt-3">
                        <button class="site-btn sb-line sb-dark"><a href="/product?page=1&maxPageItem=20&sortName=null&sortBy=null&ten=null">Xem thêm</a> </button>
                    </div>
                </div>
            </div>

        </div>
    </div>
</section>
<script type="text/javascript">
    var totalPage = ${model.totalPage}; //tong so trang
    var currentPage = ${model.page};     //trang hien tai
    var visiblePages = ${model.maxPageItem};
    var sortName= '${model.sortName}';
    var sortBy= '${model.sortBy}';
    var ten='${model.ten}';
    var limit =9;   //so phan tu hien ra
    $(function () {
        window.pagObj = $('#pagination').twbsPagination({
            totalPages: totalPage,
            visiblePages: 10,        //tong so item tren 1 page
            startPage: currentPage,
            onPageClick: function (event, page) {
                if (currentPage!= page) {
                    $('#maxPageItem').val(limit);
                    $('#page').val(page);
                    $('#sortName').val(sortName);
                    $('#sortBy').val(sortBy);
                    $('#ten').val(ten);
                    $('#formSubmit').submit();
                }
            }
        }).on('page', function (event, page) {
            console.info(page + ' (from event listening)');
        });
    });
</script>
<!-- / product category -->
</body>
</html>
