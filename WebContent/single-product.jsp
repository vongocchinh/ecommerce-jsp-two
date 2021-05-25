
<%@page import="model.admin.Comment"%>
<%@page import="get.admin.cmtGet"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="get.admin.UserGet"%>
<%@page import="model.admin.Brand"%>
<%@page import="model.admin.Cart"%>
<%@page import="model.admin.user"%>
<%@page import="model.admin.Category"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="get.admin.CategoryGet"%>
<%@page import="model.admin.Review"%>
<%@page import="get.admin.ReviewGet"%>
<%@page import="model.admin.Product"%>
<%@page import="get.admin.BrandGet"%>
<%@page import="get.admin.ProductGet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html >
  <head>
    <c:set var="root" value="${pageContext.request.contextPath}" />
    <link rel="icon" type="image/png" href="${root}/img/favicon.ico" />
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Sản phẩm smartphone của cửa hàng, điện thoại smartphone giá rẻ...</title>

    <!-- Google Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>
    <link rel='stylesheet prefetch' href='https://netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css'>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="css/font-awesome.min.css">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="style.css">

    <link rel="stylesheet" href="css/responsive.css">
    <link rel="stylesheet" href="css/css_2.css">


    <script type="text/javascript">
        function matchpass() {
            var name = document.register.product_name.value;

            if (name == null || name == "") {
                alert("Vui Long Nhập Tên Sản Phẩm !!!");
                return false;
            } else {
                return true;
            }
        }
    </script>
    <script>
        function validateFormm() {
            var x = document.forms["myFormm"]["name"].value;
            var y = document.forms["myFormm"]["email"].value;
            var a = document.forms["myFormm"]["rating"].value;
            var b = document.forms["myFormm"]["message"].value;
            if (x == "") {
                alert("Name must be filled out");
                return false;
            }
            if (y == "") {
                alert("email must be filled out");
                return false;
            }
            if (a == "") {
                alert("rating must be filled out");
                return false;
            }
            if (b == "") {
                alert("message must be filled out");
                return false;
            }
        }

        function runScript(e) {
            //See notes about 'which' and 'key'
            if (e.keyCode == 13) {
                var tb = document.getElementById("scriptBox");
                eval(tb.value);
                alert("yes it works,I'm happy ");
                return false;
            }
        }
    </script>
    <style type="text/css">
        p.ht {
            padding-left: 20px;
        }
        
        div.stars {
            width: 270px;
            display: inline-block;
        }
        
        input.star {
            display: none;
        }
        
        label.star {
            float: right;
            padding: 0px 10px;
            font-size: 20px;
            color: #444;
            transition: all .2s;
        }
        
        input.star:checked~label.star:before {
            content: '\f005';
            color: #FD4;
            transition: all .25s;
        }
        
        input.star-5:checked~label.star:before {
            color: #FE7;
            text-shadow: 0 0 20px #952;
        }
        
        input.star-1:checked~label.star:before {
            color: #F62;
        }
        
        label.star:hover {
            transform: rotate(-15deg) scale(1.3);
        }
        
        label.star:before {
            content: '\f006';
            font-family: FontAwesome;
        }
        
        h2.rv {
            padding: 0px 120px;
        }
        
        a.non-textdecorationsgle {
            text-decoration: none;
        }
        
        img.colimg:hover {
            font-size: 30px;
        }
        
        span.colcart:hover {
            font-size: 20px;
        }
        
        img.colimg:hover {
            padding: 5px 7px;
            transform: scale(1.1);
            -webkit-transform: scale(1.1);
            -moz-transform: scale(1.1);
            -o-transform: scale(1.1);
            -ms-transform: scale(1.1);
            cursor: pointer;
        }
        
        img.recent-thumb:hover {
            margin-top: 3px;
            padding-top: 3px;
            padding-bottom: 3px;
            transform: scale(1.1);
            -webkit-transform: scale(1.1);
            -moz-transform: scale(1.1);
            -o-transform: scale(1.1);
            -ms-transform: scale(1.1);
            cursor: pointer;
        }
        
        img.colsp {
            margin-left: 5px;
        }
        
        li {
            color: black;
        }
        
        i.fa-user {
            color: black;
        }
        
        strong {
            color: black;
        }
        
        div.mainmenu-area {
            background-color: #F4F4F4;
        }
        
        div.col-md-4 {
            border-color: #EEEEEE;
            border-style: solid;
            border-width: 0.2px;
            padding-left: 15px;
        }
        
        div.header-area {
            background-color: #F0F0F0;
            color: black;
        }
        
        div.single-product-area {
            margin-top: -80px;
        }
        
        img.colimg {
            width: 250;
            height: 250;
        }
        
        hr.colDes {
            border-color: red;
        }
        
        ins {
            color: white;
        }
        
        ins.colgia {
            color: white;
            background-color: red;
            padding: 5px 12px;
            border-radius: 5px;
            color: white;
        }
        
        ins.colgiam {
            background-color: yellow;
            padding: 5px 10px;
            color: black;
            border-radius: 5px;
        }
        
        div.product-inner-price {
            color: white;
        }
    </style>

</head>

<body>
    <%
    user user=null;
   user userName=new user();
   UserGet userGet=new UserGet();
    if(session.getAttribute("user") != null){
        user = (user) session.getAttribute("user");
        userName=userGet.getUser(user.getUserID());
    }else{
        user=null;
    }
      ProductGet productGet = new ProductGet();
    Category category=new Category();
    CategoryGet categoryGet=new CategoryGet();
    Brand brand=new Brand();
      BrandGet brandget = new BrandGet();
      Product product = new Product();
      String productID = "";
      if (request.getParameter("productID") != null) {
           productID = request.getParameter("productID");
           product = productGet.getProduct(Integer.parseInt(productID));
           brand=brandget.getBrand(product.getBrandID());
           category=categoryGet.getCategory(product.getCategoryID());
           
      }
      SimpleDateFormat formatterDate = new SimpleDateFormat("dd/MM/yyyy");
      ReviewGet reviewGet = new ReviewGet();
      int category_id = product.getCategoryID();
      Review review = new Review();
      CategoryGet categoryget = new CategoryGet();
      String category_id_1 = "1";
      DecimalFormat formatter = new DecimalFormat("###,###,###");
      
      Cart cart = (Cart) session.getAttribute("cart");
      if (cart == null) {
          cart = new Cart();
          session.setAttribute("cart", cart);
      }
      %>


        <jsp:include page="header_2.jsp"></jsp:include>

        <jsp:include page="header_bottom.jsp"></jsp:include>

        <div class="single-product-area">
            <div class="zigzag-bottom"></div>
            <div class="container">
                <div class="row">

                    <jsp:include page="banner.jsp"></jsp:include>


                    <div style="background-color: white;padding:  10px 10px;" class="col-md-8">
                        <div class="product-content-right">
                            <div class="product-breadcroumb">
                                <a href="index.jsp"><ins style="color: black;">HOME</ins></a>
                                <a href=""><ins style="color:blue; ;"><%=brand.getBrandName()%></ins></a>
                                <a href=""><ins style="color:red;"><%=category.getCategoryName() %></ins></a>
                            </div>

                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="product-images">
                                        <div class="product-main-img">
                                            <img class="colimg" src="/baitap/imagesphone/<%=product.getProductImage() %>" alt="">
                                        </div>

                                        <div class="product-gallery">
                                            <img class="recent-thumb" src="/baitap/imagesphone/<%=product.getProductImagenext() %>" alt="">
                                            <img class="recent-thumb" src="/baitap/imagesphone/<%=product.getProductImage() %>" alt="">
                                            <img class="recent-thumb" src="/baitap/imagesphone/<%=product.getProductImagenext()%>" alt="">
                                        </div>
                                        <div role="tabpanel" class="tab-pane fade in active" id="">
                                            <hr class="colDes">
                                            <h2>Product Description</h2>
                                            <p class="ht">
                                                <%=product.getProductDescription()%>
                                            </p>
                                            <h3>Thông Số Kĩ Thuật</h3>
                                            <p class="ht">Camera_Truoc:
                                                <%=product.getCamera_Truoc() %>
                                            </p>
                                            <p class="ht">Camera_Sau:
                                                <%=product.getCamera_Sau() %>
                                            </p>
                                            <p class="ht">He Điều Hành:
                                                <%=product.getHe_Dieu_Hanh() %>
                                            </p>
                                            <p class="ht">Bộ Nhớ:
                                                <%=product.getBo_Nho() %>
                                            </p>
                                            <p class="ht">Ram:
                                                <%=product.getRam() %>
                                            </p>
                                        </div>
                                        <div role="tabpanel" class="tab-pane fade in active" id="">
                                            <hr class="colDes">

                                            <h3>Sản Phẩm kèm theo khi mua hàng.</h3>
                                            <p class="ht">Củ Pin,Dây Sạc,Tai Nghe,Ốp Lưng,Kính cường lực</p>
                                            <p class="ht">Phiếu Bảo Hành</p>
                                            <p class="ht">* Trả đổi Sản phẩm trong vòng 1 tháng và áp dụng chương trình của cửa hàng chúng tôi.</p>

                                        </div>
                                    </div>
                                </div>

                                <div class="col-sm-6">
                                    <div class="product-inner">
                                        <h2 class="product-name">
                                            <%=product.getProductName() %>
                                        </h2>
                                        <div class="product-inner-price">
                                            <ins style="color: white;" class="colgia">Gia: <%=formatter.format(product.getProductPrice())%> VNĐ</ins> <ins style="color: white;" class="colgiam">Giam: <%=product.getGiam_Gia()%></ins>
                                        </div>

                                        <form action="${root}/CartServlet" class="cart" method="POST">
                                            <div class="quantity">
                                                <input style="padding-bottom: 1px" type="number" size="4" class="input-text qty text" title="Qty" value="1" name="quantity" min="1" step="1">
                                            </div>
                                            <span class="colcart"><a style="background-color:#00ADFF;padding: 10px 5px;color: white;border-radius: 5px;text-decoration: none;" href="CartServlet?command=plus&productID=<%=product.getProductID()%>" class="non-textdecoration"><i class="fa fa-shopping-cart"></i> Add to cart</a></span>

                                        </form>

                                        <div class="product-inner-category">
                                            <p>Category:
                                                <a style="color: red;" href="">
                                                    <%=category.getCategoryName()%>
                                                </a>.Tags: <a href="">awesome</a>, <a href="">best</a>, <a href="">sale</a>, <a href="">shoes</a>. </p>
                                            <p>Hãng:
                                                <a style="color: red;" href="">
                                                    <%=brand.getBrandName()%>
                                                </a>. </p>

                                        </div>
                                        <div class="product-inner-category">
                                            <div class="row22">
                                                <form action="${root }/DeliveryServlet" method="post">
                                                    <a class="non-textdecorationsgle" style="background-color:#E73435;padding: 15px 30px;color: white;border-radius: 5px;" href="DeliveryServlet?command=plus&productID=<%=product.getProductID()%>" class="non-textdecoration"><strong>Đặt Hàng Ngay</strong> </a>

                                                    <a class="non-textdecorationsgle" style="background-color:#FED835;padding: 15px 45px;color:black;border-radius: 5px;margin-left: 20px" href="CartServlet?command=plus&productID=<%=product.getProductID()%>" class="non-textdecoration"><strong>Dùng Thử</strong> </a>
                                                </form>
                                            </div>
                                            <div class="row22">

                                            </div>
                                        </div>
                                        <div role="tabpanel">
                                            <ul class="product-tab" role="tablist">

                                            </ul>
                                            <div class="tab-content">



                                                <h2 class="rv">Reviews</h2>
                                                <form name="myFormm" onsubmit="return validateFormm()" action="${root}/ReviewServlet" method="post">
                                                    <div class="submit-review">
                                                        <p><label for="name">Name</label> <input value="" name="name" type="text"></p>
                                                        <p><label for="email">Email</label> <input value="" name="email" type="text"></p>
                                                        <p><label for="email">Đánh Giá Sao</label>
                                                            <div class="stars">
                                                                <input class="star star-5" id="star-5" type="radio" value="5" name="rating" />
                                                                <label class="star star-5" for="star-5"></label>
                                                                <input class="star star-4" id="star-4" type="radio" value="4" name="rating" />
                                                                <label class="star star-4" for="star-4"></label>
                                                                <input class="star star-3" id="star-3" type="radio" value="3" name="rating" />
                                                                <label class="star star-3" for="star-3"></label>
                                                                <input class="star star-2" id="star-2" type="radio" value="2" name="rating" />
                                                                <label class="star star-2" for="star-2"></label>
                                                                <input class="star star-1" id="star-1" type="radio" value="1" name="rating" />
                                                                <label class="star star-1" for="star-1"></label>
                                                            </div>
                                                        </p>
                                                        <p><label for="review">Your review</label> <textarea name="message" id="" cols="30" rows="10"></textarea></p>
                                                        <p><input type="hidden" name="command" value="insert"></p>
                                                        <input type="hidden" name="product_id" value="<%=product.getProductID()%>">
                                                        <p><input style="background-color: #E73435" type="submit" class="button1" value="Gửi Đánh Giá"></p>
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>

                            <h4 style="color: #black;background-color: #EAECED;padding: 15px 15px;">Các Bình Luận Sản Phẩm
                                <%=product.getProductName() %>:</h4>
                            <%
                        
                         for(Review review2:reviewGet.getListReviewByProduct(product.getProductID())){
                             if(review2==null){
                         %>
                                <div class="submit-review">Chua Co Phan Hoi San Pham</div>
                                <%}else{ %>
                                    <div style="background-color: #;padding: 10px 10px;margin-top: -15px" class="submit-review">


                                        <label for=""><%=review2.getReviewName()%>  </label>
                                        <p style="margin-top: -7px;background-color: #D4D4D4;width: 400px;border-radius: 10px;padding: 10px 10px;padding-left: 10px"><span style="color: yellow;"><%=review2.getReviewStar()%> Sao </span>
                                            <%=review2.getReviewMessage()%>.</p>
                                        <p style="color: black;margin-top: -26px;margin-left: 330px;">
                                            <%=formatterDate.format(review2.getReviewDate())%>
                                        </p>
                                        <h4 style="font-size: 12px;padding-left: 15px;margin-top: -10px;margin-bottom: -1px">
                                            <a href="#" style="text-decoration: none;">Thích</a>
                                            <a href="#" style="text-decoration: none;padding-left: 10px">Trả Lời</a></h4>
                                        <% 
                        cmtGet cmtGet=new cmtGet();
                        for(Comment cmt:cmtGet.getProductNameByReview(review2.getReviewID())){
                        if(cmt.getComment_name()==null){
                            cmt.setComment_name("Người Khac");
                        }
                        %>
                                            <h4 style="padding-left: 20px;background-color: #D4D4D4;width: 250px;margin-left: 20px;border-radius: 7px;padding: 0 5px">
                                                <p style="font-size: 13px;color: black;"><strong><%=cmt.getComment_name()%></strong> </p>
                                                <p style="font-size: 15px;margin-top: -10px;width: 230px">
                                                    <%=cmt.getComment() %>
                                                </p>
                                                <p style="color: black;margin-top: -27px;margin-left: 250px;font-size: 12px;padding-bottom: 5px">
                                                    <%=formatterDate.format(cmt.getDate())%>
                                                </p>
                                                <h4 style="font-size: 12px;padding-left: 30px;margin-top: -10px;margin-bottom: -1px">
                                                    <a href="#" style="text-decoration: none;">Thích</a>
                                                    <a href="#" style="text-decoration: none;padding-left: 10px">Trả Lời</a></h4>
                                            </h4>
                                            <% }%>
                                                <form method="post" action="CommentServlet">
                                                    <input name="cmt" style="width: 250px;height: 25px;margin-left: 15px;margin-top: 5px;margin-bottom: -15px;border-radius: 7px;" type="text" required="required">
                                                    <input type="hidden" name="review_id" value="<%=review2.getReviewID()%>">
                                                    <input type="hidden" name="cmt_name" value="<%=userName.getUserName()%>">
                                                    <input type="hidden" name="product_id" value="<%=product.getProductID()%>">
                                                    <input value="insert" type="hidden" name="command">
                                                    <input style="padding: 3px;border-radius: 7px;background-color: #8DC9DA;" type="submit" value="Gửi">
                                                </form>
                                    </div>
                                    <%}} %>
                                        <hr style="border-color: blue;">



                                        <div class="related-products-wrapper">
                                            <h2 class="related-products-title">Related Products</h2>

                                            <div class="row">
                                                <%
                          for(Product product3:productGet.getListProductByBrand_Lienquan(product.getCategoryID(), product.getBrandID())){
                          %>
                                                    <div class="col-md-4 col-sm-6">
                                                        <div class="single-product">
                                                            <div class="product-f-image">
                                                                <a href="single-product.jsp?productID=<%=product3.getProductID()%>"><img class="colimg" style="width: 150px;height: 200;padding: 10px 10px;" src="/baitap/imagesphone/<%=product3.getProductImage() %>" alt=""></a>
                                                                <div style="display: none;" class="product-hover">
                                                                    <a href="" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                                                    <a href="" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                                                </div>
                                                            </div>

                                                            <h2>
                                                                <a class="non-textdecoration1" href="single-product.jsp?productID=<%=product3.getProductID()%>">
                                                                    <%=product3.getProductName()%>
                                                                </a>
                                                            </h2>

                                                            <div class="product-carousel-price">
                                                                <ins style="color: red;"><%=formatter.format(product3.getProductPrice())%> VNĐ</ins>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <%} %>

                                            </div>

                                        </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>




        <div class="footer-top-area">
            <div class="zigzag-bottom"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-sm-6">
                        <div class="footer-about-us">
                            <h2>u<span>Stora</span></h2>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis sunt id doloribus vero quam laborum quas alias dolores blanditiis iusto consequatur, modi aliquid eveniet eligendi iure eaque ipsam iste, pariatur omnis
                                sint! Suscipit, debitis, quisquam. Laborum commodi veritatis magni at?</p>
                            <div class="footer-social">
                                <a href="#" target="_blank"><i class="fa fa-facebook"></i></a>
                                <a href="#" target="_blank"><i class="fa fa-twitter"></i></a>
                                <a href="#" target="_blank"><i class="fa fa-youtube"></i></a>
                                <a href="#" target="_blank"><i class="fa fa-linkedin"></i></a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 col-sm-6">
                        <div class="footer-menu">
                            <h2 class="footer-wid-title">User Navigation </h2>
                            <ul>
                                <li><a href="">My account</a></li>
                                <li><a href="">Order history</a></li>
                                <li><a href="">Wishlist</a></li>
                                <li><a href="">Vendor contact</a></li>
                                <li><a href="">Front page</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-md-3 col-sm-6">
                        <div class="footer-menu">
                            <h2 class="footer-wid-title">Categories</h2>
                            <ul>
                                <li><a href="">Mobile Phone</a></li>
                                <li><a href="">Home accesseries</a></li>
                                <li><a href="">LED TV</a></li>
                                <li><a href="">Computer</a></li>
                                <li><a href="">Gadets</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-md-3 col-sm-6">
                        <div class="footer-newsletter">
                            <h2 class="footer-wid-title">Newsletter</h2>
                            <p>Sign up to our newsletter and get exclusive deals you wont find anywhere else straight to your inbox!</p>
                            <div class="newsletter-form">
                                <input type="email" placeholder="Type your email">
                                <input type="submit" value="Subscribe">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-bottom-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <div class="copyright">
                            <p>&copy; 2015 uCommerce. All Rights Reserved. <a href="http://www.freshdesignweb.com" target="_blank">freshDesignweb.com</a></p>
                        </div>
                    </div>

                    <div class="col-md-4">
                        <div class="footer-card-icon">
                            <i class="fa fa-cc-discover"></i>
                            <i class="fa fa-cc-mastercard"></i>
                            <i class="fa fa-cc-paypal"></i>
                            <i class="fa fa-cc-visa"></i>
                        </div>
                    </div>
                </div>
            </div>
        </div>




        <!-- Latest jQuery form server -->
        <script src="https://code.jquery.com/jquery.min.js"></script>

        <!-- Bootstrap JS form CDN -->
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

        <!-- jQuery sticky menu -->
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/jquery.sticky.js"></script>

        <!-- jQuery easing -->
        <script src="js/jquery.easing.1.3.min.js"></script>

        <!-- Main Script -->
        <script src="js/main.js"></script>
</body>
</html>