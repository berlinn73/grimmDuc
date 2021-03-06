<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 4/1/2020
  Time: 9:10 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ include file="/common/web/header.banner.1920x300.jsp" %>

<!-- Blog Archive -->
<section id="aa-blog-archive">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="aa-blog-archive-area">
                    <div class="row">
                        <div class="col-md-9">
                            <!-- Blog details -->
                            <div class="aa-blog-content aa-blog-details">
                                <article class="aa-blog-content-single">
                                    <h2><a href="#">${MODEL.title}</a></h2>
                                    <div class="aa-article-bottom">
                                        <div class="aa-post-author">
                                            Posted By <a href="#">Teo</a>
                                        </div>
                                        <div class="aa-post-date">
                                            ${MODEL.createdDate}
                                        </div>
                                    </div>
                                    <figure class="aa-blog-img">
                                        <a href="#"><img src="<c:url value="${MODEL.image}"/>" alt="fashion img"></a>
                                    </figure>
                                    <p>${MODEL.content}</p>
                                    <blockquote>
                                        Nghệ thuật tiết kiệm tiền hiệu quả từ những tín đồ sống tối giản
                                    </blockquote>
                                    <p>Khi giảm bớt những đồ dùng không cần thiết trong nhà và không chú trọng quá nhiều về vật chất, bạn sẽ cảm thấy cuộc sống nhẹ nhàng hơn. Ngoài ra, phương châm sống này cũng giúp bạn tiết kiệm thời gian và tiền bạc, dành tâm sức cho những mục tiêu quan trọng hơn. Vậy thì hãy cùng tìm hiểu một số bí quyết quản lý ngân sách mà các minimalist đang áp dụng nhé.</p>
                                    <ul>
                                        <li>Lập kế hoạch chi tiêu rõ ràng</li>
                                        <li>Thực hiện kế hoạch chi tiêu một cách nghiêm túc</li>
                                        <li>Mua sắm đồ dùng chất lượng tốt và bền</li>
                                        <li>Chỉ nên mua sắm vì nhu cầu, không nên mua sắm theo sở thích.</li>
                                    </ul>
                                    <div class="blog-single-bottom">
                                        <div class="row">
                                            <div class="col-md-8 col-sm-6 col-xs-12">
                                                <div class="blog-single-tag">
                                                    <span>Tags:</span>
                                                    <a href="#">Fashion,</a>
                                                    <a href="#">Beauty,</a>
                                                    <a href="#">Lifestyle</a>
                                                </div>
                                            </div>
                                            <div class="col-md-4 col-sm-6 col-xs-12">
                                                <div class="blog-single-social">
                                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                                    <a href="#"><i class="fa fa-linkedin"></i></a>
                                                    <a href="#"><i class="fa fa-google-plus"></i></a>
                                                    <a href="#"><i class="fa fa-pinterest"></i></a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </article>
                                <!-- blog navigation -->
                                <div class="aa-blog-navigation">
                                    <a class="aa-blog-prev" href="#"><span class="fa fa-arrow-left"></span>Prev Post</a>
                                    <a class="aa-blog-next" href="#">Next Post<span class="fa fa-arrow-right"></span></a>
                                </div>
                                <!-- Blog Comment threats -->
                                <div class="aa-blog-comment-threat">
                                    <h3>Comments (4)</h3>
                                    <div class="comments">
                                        <ul class="commentlist">
                                            <li>
                                                <div class="media">
                                                    <div class="media-left">
                                                        <img class="media-object news-img" src="img/testimonial-img-3.jpg" alt="img">
                                                    </div>
                                                    <div class="media-body">
                                                        <h4 class="author-name">Charlie Balley</h4>
                                                        <span class="comments-date"> March 26th 2016</span>
                                                        <p>Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English</p>
                                                        <a href="#" class="reply-btn">Reply</a>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="media">
                                                    <div class="media-left">
                                                        <img class="media-object news-img" src="img/testimonial-img-2.jpg" alt="img">
                                                    </div>
                                                    <div class="media-body">
                                                        <h4 class="author-name">Charlie Balley</h4>
                                                        <span class="comments-date"> March 26th 2016</span>
                                                        <p>Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English</p>
                                                        <a href="#" class="reply-btn">Reply</a>
                                                    </div>
                                                </div>
                                            </li>
                                            <ul class="children">
                                                <li class="author-comments">
                                                    <div class="media">
                                                        <div class="media-left">
                                                            <img class="media-object news-img" src="img/testimonial-img-3.jpg" alt="img">
                                                        </div>
                                                        <div class="media-body">
                                                            <h4 class="author-name">Admin</h4>
                                                            <span class="comments-date"> March 26th 2016</span>
                                                            <span class="author-tag">Author</span>
                                                            <p>Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English</p>
                                                            <a href="#" class="reply-btn">Reply</a>
                                                        </div>
                                                    </div>
                                                </li>
                                                <ul class="children">
                                                    <li>
                                                        <div class="media">
                                                            <div class="media-left">
                                                                <img class="media-object news-img" src="img/testimonial-img-2.jpg" alt="img">
                                                            </div>
                                                            <div class="media-body">
                                                                <h4 class="author-name">Charlie Balley</h4>
                                                                <span class="comments-date"> March 26th 2016</span>
                                                                <p>Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English</p>
                                                                <a href="#" class="reply-btn">Reply</a>
                                                            </div>
                                                        </div>
                                                    </li>
                                                </ul>
                                            </ul>
                                            <li>
                                                <div class="media">
                                                    <div class="media-left">
                                                        <img class="media-object news-img" src="img/testimonial-img-2.jpg" alt="img">
                                                    </div>
                                                    <div class="media-body">
                                                        <h4 class="author-name">Charlie Balley</h4>
                                                        <span class="comments-date"> March 26th 2016</span>
                                                        <p>Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English</p>
                                                        <a href="#" class="reply-btn">Reply</a>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="aa-blog-archive-pagination">
                                        <nav>
                                            <ul class="pagination">
                                                <li>
                                                    <a href="#" aria-label="Previous">
                                                        <span aria-hidden="true">«</span>
                                                    </a>
                                                </li>
                                                <li><a href="#">1</a></li>
                                                <li><a href="#">2</a></li>
                                                <li><a href="#">3</a></li>
                                                <li><a href="#">4</a></li>
                                                <li><a href="#">5</a></li>
                                                <li>
                                                    <a href="#" aria-label="Next">
                                                        <span aria-hidden="true">»</span>
                                                    </a>
                                                </li>
                                            </ul>
                                        </nav>
                                    </div>
                                </div>
                                <!-- blog comments form -->
                                <div id="respond">
                                    <h3 class="reply-title">Leave a Comment</h3>
                                    <form id="commentform">
                                        <p class="comment-notes">
                                            Your email address will not be published. Required fields are marked <span class="required">*</span>
                                        </p>
                                        <p class="comment-form-author">
                                            <label for="author">Name <span class="required">*</span></label>
                                            <input type="text" id="author" value="" size="30" required="required">
                                        </p>
                                        <p class="comment-form-email">
                                            <label for="email">Email <span class="required">*</span></label>
                                            <input type="email" id="email" value="" aria-required="true" required="required">
                                        </p>
                                        <p class="comment-form-url">
                                            <label for="url">Website</label>
                                            <input type="url" id="url" value="">
                                        </p>
                                        <p class="comment-form-comment">
                                            <label for="comment">Comment</label>
                                            <textarea id="comment" cols="45" rows="8" aria-required="true" required="required"></textarea>
                                        </p>
                                        <p class="form-submit">
                                            <input type="submit" name="submit" class="aa-browse-btn" value="Post Comment">
                                        </p>
                                    </form>
                                </div>
                            </div>
                        </div>

                        <!-- blog sidebar -->
                        <div class="col-md-3">
                            <aside class="aa-blog-sidebar">
                                <div class="aa-sidebar-widget">
                                    <h3>Category</h3>
                                    <ul class="aa-catg-nav">
                                        <li><a href="#">Men</a></li>
                                        <li><a href="">Women</a></li>
                                        <li><a href="">Kids</a></li>
                                        <li><a href="">Electornics</a></li>
                                        <li><a href="">Sports</a></li>
                                    </ul>
                                </div>
                                <div class="aa-sidebar-widget">
                                    <h3>Tags</h3>
                                    <div class="tag-cloud">
                                        <a href="#">Fashion</a>
                                        <a href="#">Ecommerce</a>
                                        <a href="#">Shop</a>
                                        <a href="#">Hand Bag</a>
                                        <a href="#">Laptop</a>
                                        <a href="#">Head Phone</a>
                                        <a href="#">Pen Drive</a>
                                    </div>
                                </div>
                                <div class="aa-sidebar-widget">
                                    <h3>Recent Post</h3>
                                    <div class="aa-recently-views">
                                        <ul>
                                            <li>
                                                <a class="aa-cartbox-img" href="#"><img src="img/woman-small-2.jpg" alt="img"></a>
                                                <div class="aa-cartbox-info">
                                                    <h4><a href="#">Lorem ipsum dolor sit amet.</a></h4>
                                                    <p>March 26th 2016</p>
                                                </div>
                                            </li>
                                            <li>
                                                <a class="aa-cartbox-img" href="#"><img src="img/woman-small-1.jpg" alt="img"></a>
                                                <div class="aa-cartbox-info">
                                                    <h4><a href="#">Lorem ipsum dolor.</a></h4>
                                                    <p>March 26th 2016</p>
                                                </div>
                                            </li>
                                            <li>
                                                <a class="aa-cartbox-img" href="#"><img src="img/woman-small-2.jpg" alt="img"></a>
                                                <div class="aa-cartbox-info">
                                                    <h4><a href="#">Lorem ipsum dolor.</a></h4>
                                                    <p>March 26th 2016</p>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </aside>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- / Blog Archive -->

</body>
</html>
