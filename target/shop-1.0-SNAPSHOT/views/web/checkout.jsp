<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ include file="/common/web/header.banner.1920x300.jsp" %>
<!-- Cart view section -->
<!-- Cart view section -->
<section class="checkout-section spad">
    <div class="container">
        <form action="/checkout" method="post">
        <div class="row">
            <div class="col-lg-8 order-2 order-lg-1">
                <form class="checkout-form">
                    <div class="cf-title">Địa chỉ giao hàng</div>
                    <div class="row">
                        <div class="col-md-7">
                            <p>*Thông tin giao hàng</p>
                        </div>
                        <div class="col-md-5">
                            <div class="cf-radio-btns address-rb">
                                <div class="cfr-item">
                                    <input type="radio" name="pm" id="one">
                                    <label for="one">Sử dụng địa chỉ thường dùng</label>
                                </div>
                                <div class="cfr-item">
                                    <input type="radio" name="pm" id="two">
                                    <label for="two">Sử dụng địa chỉ khác</label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row address-inputs">
                        <div class="col-md-12">
                            <input type="text" placeholder="Họ tên">
                            <input type="text" placeholder="Email">
                            <input type="text" placeholder="Địa chỉ">
                            <input type="text" placeholder="Thành phố">
                        </div>
                        <div class="col-md-6">
                            <input type="text" placeholder="Mã bưu điện">
                        </div>
                        <div class="col-md-6">
                            <input type="text" placeholder="Số điện thoại">
                        </div>
                    </div>
                    <div class="cf-title">Thông tin giao hàng</div>
                    <div class="row shipping-btns">
                        <div class="col-6">
                            <h4>Thông thường</h4>
                        </div>
                        <div class="col-6">
                            <div class="cf-radio-btns">
                                <div class="cfr-item">
                                    <input type="radio" name="shipping" id="ship-1">
                                    <label for="ship-1">Miễn phí</label>
                                </div>
                            </div>
                        </div>
                        <div class="col-6">
                            <h4>Giao hàng ngay </h4>
                        </div>
                        <div class="col-6">
                            <div class="cf-radio-btns">
                                <div class="cfr-item">
                                    <input type="radio" name="shipping" id="ship-2">
                                    <label for="ship-2">30,000đ</label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="cf-title">Phương thức thanh toán</div>
                    <ul class="payment-list">
                        <li>Paypal<a href="#"><img src="<c:url value="/template/web/img/paypal.png"/>" alt=""></a></li>
                        <li>Credit / Debit card<a href="#"><img src="<c:url value="/template/web/img/mastercart.png"/>" alt=""></a></li>
                        <li>Thanh toán khi nhận hàng</li>
                    </ul>
                    <button class="site-btn submit-order-btn">Đặt hàng</button>
                </form>
            </div>
            <div class="col-lg-4 order-1 order-lg-2">
                <div class="checkout-cart">
                    <h3>Giỏ hàng</h3>
                    <ul class="product-list">
                        <li>
                            <c:forEach var="item" items="${model}">
                                <tbody>
                                <tr>
                                    <td>${item.ten}<strong>x${item.soLuongBan}</strong></td>
                                    <td>${item.tongTien}</td>
                                </tr>
                                </tbody>
                            </c:forEach>
                        </li>
                    </ul>
                    <ul class="price-list">
                        <li>Tổng cộng<span>${sum}</span></li>
                        <li>Phí giao hàng<span>Miễn phí</span></li>
                        <li class="total">TỔNG CỘNG<span>${sum}</span></li>
                    </ul>
                </div>
            </div>
        </div>
        </form>
    </div>
</section>
<!-- checkout section end -->

<!-- / Cart view section -->
<!-- / Cart view section -->

</body>
</html>
