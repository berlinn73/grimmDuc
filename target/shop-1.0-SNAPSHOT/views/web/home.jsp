<%@include file="/common/taglib.jsp"%>
<c:url var="APIurl" value="/api-user-wishlist"/>
<c:url var ="Userurl" value="/product"/>
<c:url var ="Userurl" value="/MyCart"/>
<c:url var ="Userurl" value="/WishList"/>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>Grimm DC | Trang chủ</title>
</head>
<body>

<section class="hero-section">
    <div class="hero-slider owl-carousel">
        <div class="hs-item set-bg" data-setbg="<c:url value="/template/web/img/kho.jpg"/>">
            <div class="container">
                <div class="row">
                    <div class="col-xl-4 col-lg-4 text-white">
                        <h3><a href="#">BST K’HO – NỀN VĂN HOÁ LỤI TÀN GIỮA ĐẠI NGÀN TÂY NGUYÊN.</a></h3>
                        <p>K’HO – nền văn hoá lụi tàn giữa đại ngàn Nam Tây Nguyên. Grimm DC thực hiện bộ sưu tập này, không phải để mong ghi chép lại tất cả nền văn hoá, vì nhiều lắm, làm sao mà gói gọn trong vài thiết kế được, nhưng chúng tôi làm, để cho bạn thấy rằng khắp đất nước mình, rất nhiều điều tuyệt vời đang dần mai một. Chúng ta chỉ cần bước đến, tìm hiểu và lưu giữ những điều ấy, dù trong tim mình thôi cũng đã khiến những con người đang vật lộn để gìn giữ nó ngày đêm ấm lòng.</p>
                        <a href="#" class="site-btn sb-line">XEM THÊM</a>
                    </div>
                </div>

            </div>
        </div>
        <div class="hs-item set-bg" data-setbg="<c:url value="/template/web/img/cap.jpg"/>">
            <div class="container">
                <div class="row">
                    <div class="col-xl-4 col-lg-4 text-white">
                        <h3><a href="#">BST FAM cap - nón Người một nhà</a></h3>
                        <p>Bộ sưu tập nón sử dụng công nghệ khử mùi cung cấp bởi tập đoàn Shindo - Nhật Bản. Được làm ra cho niềm đam mê trượt ván /skateboarding/. Với 4 phối màu tượng trưng cho tình anh em trong một tập thể - một gia đình.</p>
                        <a href="#" class="site-btn sb-line">XEM THÊM</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="hs-item set-bg" data-setbg="<c:url value="/template/web/img/vo.jpg"/>">
            <div class="container">
                <div class="row">
                    <div class="col-xl-4 col-lg-4 text-white">
                        <h3><a href="#">Vớ Iron flame</a></h3>
                        <p>Với những điểm đặc biệt như đường may nối linking, ba lớp chất liệu khác nhau, toàn bộ sợi tạo nên được cung cấp bởi công ty RSWM Limited. </p>
                        <a href="#" class="site-btn sb-line">XEM THÊM</a>
                    </div>
                </div>

            </div>
        </div>
        <div class="hs-item set-bg" data-setbg="<c:url value="/template/web/img/crct.jpg"/>">
            <div class="container">
                <div class="row">
                    <div class="col-xl-4 col-lg-4 text-white">
                        <h3><a href="#">BST Con rồng cháu tiên</a></h3>
                        <p>Đây là bộ sưu tập chúng tôi làm vì niềm tự hào của bản thân mình - của con cháu Rồng - Tiên. Vì niềm tự hào được mang trên mình dòng máu nóng của cha ông đất Việt. Chúng tôi làm ra nó vì muốn được cùng tất cả anh em trên đất nước này khoác lên mình cái cội nguồn chính xác của dân tộc.</p>
                        <a href="#" class="site-btn sb-line">XEM THÊM</a>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <div class="container">
        <div class="slide-num-holder" id="snh-1"></div>
    </div>
</section>
<!-- Hero section end -->

<section class="hero-section mt50">
    <div class="hero-slider owl-carousel">
        <div class="hs-item set-bg" data-setbg="<c:url value="/template/web/img/gioithieu.jpg"/>">
            <div class="container">
                <div class="row">
                    <div class="col-xl-4 col-lg-4 text-white">
                        <h3><a href="#">GIỚI THIỆU</a></h3>
                        <p>Ra đời vào ngày 15 tháng 5 năm 2015, chúng tôi thực hiện hóa giấc mơ bắt đầu từ một Start up, khởi đầu sứ mệnh tạo ra những giá trị mới mẻ và có ích cho cộng đồng mà không chỉ đơn thuần là tạo ra những sản phẩm chất lượng mà là “những sản phẩm hoàn hảo nhất do người Việt làm”</p>
                        <a href="#" class="site-btn sb-line">XEM THÊM</a>
                    </div>
                </div>

            </div>
        </div>
    </div>
</section>

<!-- Features section -->
<section class="features-section">
    <div class="container-fluid">
        <div class="row">
            <div class="col-md-4 p-0 feature">
                <div class="feature-inner">
                    <div class="feature-icon">
                        <img src="<c:url value="/template/web/img/icons/1.png"/>" alt="#">
                    </div>
                    <h2>Thanh toán nhanh chóng, bảo mật</h2>
                </div>
            </div>
            <div class="col-md-4 p-0 feature">
                <div class="feature-inner">
                    <div class="feature-icon">
                        <img src="<c:url value="/template/web/img/icons/2.png"/>" alt="#">
                    </div>
                    <h2>Sản phẩm chất lượng</h2>
                </div>
            </div>
            <div class="col-md-4 p-0 feature">
                <div class="feature-inner">
                    <div class="feature-icon">
                        <img src="<c:url value="/template/web/img/icons/3.png"/>" alt="#">
                    </div>
                    <h2>Miễn phí giao hàng</h2>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Features section end -->


<!-- letest product section -->
<section class="top-letest-product-section">
    <div class="container">
        <div class="section-title">
            <h2>SẢN PHẨM MỚI NHẤT</h2>
        </div>
        <div class="product-slider owl-carousel">
            <div class="product-item">
                <div class="pi-pic">
                    <img src="<c:url value="/template/web/img/product/ao12-ran.jpg"/>" alt="">
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
            <div class="product-item">
                <div class="pi-pic">
                    <div class="tag-new">New</div>
                    <img src="<c:url value="/template/web/img/product/aohanoi.jpg"/>" alt="">
                    <div class="pi-links">
                        <a href="#" class="add-card"><i class="flaticon-bag"></i><span>Thêm vào giỏ</span></a>
                        <a href="#" class="wishlist-btn"><i class="flaticon-heart"></i></a>
                    </div>
                </div>
                <div class="pi-text">
                    <h6>350,000đ</h6>
                    <p>Áo Hà Nội vàng</p>
                </div>
            </div>
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
            <div class="product-item">
                <div class="pi-pic">
                    <img src="<c:url value="/template/web/img/product/aoiron2.jpg"/>" alt="">
                    <div class="pi-links">
                        <a href="#" class="add-card"><i class="flaticon-bag"></i><span>Thêm vào giỏ</span></a>
                        <a href="#" class="wishlist-btn"><i class="flaticon-heart"></i></a>
                    </div>
                </div>
                <div class="pi-text">
                    <h6>350,000đ</h6>
                    <p>Áo Iron Flame Hồng</p>
                </div>
            </div>
            <div class="product-item">
                <div class="pi-pic">
                    <img src="<c:url value="/template/web/img/product/somi.jpg"/>" alt="">
                    <div class="pi-links">
                        <a href="#" class="add-card"><i class="flaticon-bag"></i><span>Thêm vào giỏ</span></a>
                        <a href="#" class="wishlist-btn"><i class="flaticon-heart"></i></a>
                    </div>
                </div>
                <div class="pi-text">
                    <h6>550,000đ</h6>
                    <p>Ivory 14th shirt a.k.a Sơ mi 14th</p>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- letest product section end -->



<!-- Product filter section -->
<section class="product-filter-section">
    <div class="container">
        <div class="section-title">
            <h2>SẢN PHẨM BÁN CHẠY</h2>
        </div>
        <ul class="row product-filter-menu">
            <li><a href="/product?page=1&maxPageItem=9&sortName=null&sortBy=null&ten=null">Áo tay ngắn</a></li>
            <li><a href="/product?page=1&maxPageItem=9&sortName=null&sortBy=null&ten=null">Áo tay dài</a></li>
            <li><a href="/product?page=1&maxPageItem=9&sortName=null&sortBy=null&ten=null">Hoodie</a></li>
            <li><a href="/product?page=1&maxPageItem=9&sortName=null&sortBy=null&ten=null">Áo khoác</a></li>
            <li><a href="/product?page=1&maxPageItem=9&sortName=null&sortBy=null&ten=null">Quần short</a></li>
            <li><a href="/product?page=1&maxPageItem=9&sortName=null&sortBy=null&ten=null">Quần dài</a></li>
            <li><a href="/product?page=1&maxPageItem=9&sortName=null&sortBy=null&ten=null">Mũ</a></li>
            <li><a href="/product?page=1&maxPageItem=9&sortName=null&sortBy=null&ten=null">Vớ</a></li>
        </ul>

        <div class="row">
            <div class="col-lg-3 col-sm-6">
                <div class="product-item">
                    <div class="pi-pic">
                        <img src="<c:url value="/template/web/img/product/aomid.jpg"/>" alt="">
                        <div class="pi-links">
                            <a href="<c:url value="/MyCart?maSp=${item.id}&action=insert"/>" data-dtid="${item.id}" class="add-card"><i class="flaticon-bag"></i><span>Thêm vào giỏ</span></a>
                            <a href="<c:url value="/WishList?id=${item.id}&page=1&maxPageItem=3&action=insert"/>" class="wishlist-btn"><i class="flaticon-heart"></i></a>
                        </div>
                    </div>
                    <div class="pi-text">
                        <h6>350,000đ</h6>
                        <p>Áo Midwaves</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6">
                <div class="product-item">
                    <div class="pi-pic">
                        <div class="tag-sale">Giảm giá</div>
                        <img src="<c:url value="/template/web/img/product/aoconrong.jpg"/>" alt="">
                        <div class="pi-links">
                            <a href="#" class="add-card"><i class="flaticon-bag"></i><span>Thêm vào giỏ</span></a>
                            <a href="#" class="wishlist-btn"><i class="flaticon-heart"></i></a>
                        </div>
                    </div>
                    <div class="pi-text">
                        <h6>350,000đ</h6>
                        <p>Áo Con Rồng - Cháu Tiên</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6">
                <div class="product-item">
                    <div class="pi-pic">
                        <div class="tag-sale">Giảm giá</div>
                        <img src="<c:url value="/template/web/img/product/ao12-cop.jpg"/>" alt="">
                        <div class="pi-links">
                            <a href="#" class="add-card"><i class="flaticon-bag"></i><span>Thêm vào giỏ</span></a>
                            <a href="#" class="wishlist-btn"><i class="flaticon-heart"></i></a>
                        </div>
                    </div>
                    <div class="pi-text">
                        <h6>270,000đ</h6>
                        <p>Áo 12 con giáp | Cọp</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6">
                <div class="product-item">
                    <div class="pi-pic">
                        <img src="<c:url value="/template/web/img/product/quan1.jpg"/>" alt="">
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
                    <div class="pi-pic">
                        <img src="<c:url value="/template/web/img/product/quandai.jpg"/>" alt="">
                        <div class="pi-links">
                            <a href="#" class="add-card"><i class="flaticon-bag"></i><span>Thêm vào giỏ</span></a>
                            <a href="#" class="wishlist-btn"><i class="flaticon-heart"></i></a>
                        </div>
                    </div>
                    <div class="pi-text">
                        <h6>450,000đ</h6>
                        <p>Cargo B-mov</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6">
                <div class="product-item">
                    <div class="pi-pic">
                        <img src="<c:url value="/template/web/img/product/cap1.jpg"/>" alt="">
                        <div class="pi-links">
                            <a href="#" class="add-card"><i class="flaticon-bag"></i><span>Thêm vào giỏ</span></a>
                            <a href="#" class="wishlist-btn"><i class="flaticon-heart"></i></a>
                        </div>
                    </div>
                    <div class="pi-text">
                        <h6>180,000đ</h6>
                        <p>Original Cap</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6">
                <div class="product-item">
                    <div class="pi-pic">
                        <img src="<c:url value="/template/web/img/product/vo.jpg"/>" alt="">
                        <div class="pi-links">
                            <a href="#" class="add-card"><i class="flaticon-bag"></i><span>Thêm vào giỏ</span></a>
                            <a href="#" class="wishlist-btn"><i class="flaticon-heart"></i></a>
                        </div>
                    </div>
                    <div class="pi-text">
                        <h6>150,000đ</h6>
                        <p>Vớ Iron Flame</p>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-sm-6">
                <div class="product-item">
                    <div class="pi-pic">
                        <img src="<c:url value="/template/web/img/product/aoconrongdai.jpg"/>" alt="">
                        <div class="pi-links">
                            <a href="#" class="add-card"><i class="flaticon-bag"></i><span>Thêm vào giỏ</span></a>
                            <a href="#" class="wishlist-btn"><i class="flaticon-heart"></i></a>
                        </div>
                    </div>
                    <div class="pi-text">
                        <h6>400,000đ</h6>
                        <p>Áo Con Rồng Cháu Tiên tay dài</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="text-center pt-5">
            <button class="site-btn sb-line sb-dark">XEM THÊM</button>
        </div>
    </div>
</section>
<!-- Product filter section end -->


<!-- Banner section -->
<section class="banner-section">
    <div class="container">
        <div class="banner set-bg" data-setbg="img/banner-bg.jpg">
            <div class="tag-new">NEW</div>
            <span>New Arrivals</span>
            <h2>STRIPED SHIRTS</h2>
            <a href="#" class="site-btn">SHOP NOW</a>
        </div>
    </div>
</section>
<!-- Banner section end  -->

<!-- / Cart view section -->
<%@ include file="/common/web/loginmodal.jsp" %>
</body>
</html>
