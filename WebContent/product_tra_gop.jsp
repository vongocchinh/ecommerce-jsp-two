
<%@page import="model.admin.Brand"%>
<%@page import="get.admin.BrandGet"%>
<%@page import="get.admin.sliderGet"%>
<%@page import="model.admin.slider"%>
<%@page import="get.admin.CategoryGet"%>
<%@page import="model.admin.Category"%>
<%@page import="model.admin.Cart"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="get.admin.ProductGet"%>
<%@page import="model.admin.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.admin.user"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
 <head>
    <c:set var="root" value="${pageContext.request.contextPath}" />
    <link rel="icon" type="image/png" href="${root}/images/favicon.ico" />
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Điện thoại smartphone giá rẻ, hổ trợ mọi mặt hàng ưa chuộng trện thị trường , uy tín chất lư</title>
    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/css_2.css">
    <link rel="stylesheet" href="css/responsive.css">

    <style type="text/css">
        em.item_price {
            color: #FD4C05;
            margin-left: -15px;
        }
        
        a.non-textdecoration {
            text-decoration: none;
        }
        
        a.non-textdecoration2 {
            text-decoration: none;
        }
        
        .block-slider1 {
            border: none;
            width: 100%;
        }
        
        .block-slider1 ul li {
            list-style: none;
        }
        
        .block-slider1 .bx-pager {
            display: none;
        }
        
        .block-slider1 .bx-prev,
        .block-slider1 .bx-next {
            width: 32px;
            height: 0px;
            border: 1px none #F15A25;
            text-align: center;
            display: none;
            border-radius: 50%;
            font-size: 30px;
            position: absolute;
            top: 50%;
            -ms-transform: translateY(-50%);
            -webkit-transform: translateY(-50%);
            transform: translateY(-50%);
            line-height: 29px;
            -moz-transition: all 0.45s ease;
            -webkit-transition: all 0.45s ease;
            -o-transition: all 0.45s ease;
            -ms-transition: all 0.45s ease;
            transition: all 0.45s ease;
        }
        
        .block-slider1 img {
            width: 100%;
            height: auto;
        }
        
        .block-slider1 .bx-prev {
            left: 0px;
            padding-right: 3px;
            padding-top: 15px;
        }
        
        .block-slider1 .bx-next {
            right: 0px;
            padding-left: 3px;
            padding-top: 15px;
        }
        
        .block-slider1:hover .bx-prev {
            left: 10px;
        }
        
        .block-slider1:hover .bx-next {
            right: 10px;
        }
        
        .block-slider1 .bx-prev:hover,
        .block-slider1 .bx-next:hover {
            background: #F15A25;
            color: #fff;
            border-color: #F15A25;
        }
        
        .block-slider1 .bx-pager {
            display: none;
            text-align: center;
        }
        
        img.colsp:hover {
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
    </style>
    <script type="text/javascript">
        function matchpass() {
            var name = document.checkout.product_name.value;


            if (name == null || name == "") {
                alert("Vui Long Nhập Tên !!!");
                return false;
            }

        }
    </script>
</head>

<body>
    <%
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null) {
            cart = new Cart();
            session.setAttribute("cart", cart);
        }
        user user=null;
        
        if(session.getAttribute("user") != null){
            user = (user) session.getAttribute("user");
        }
        String min="";
        String max="";
        if(request.getParameter("min")!=null){
             min = request.getParameter("min");
             }
         
         if(request.getParameter("max")!=null){
            max = request.getParameter("max");
             }
         String tra_gop="";
         if(request.getParameter("tra_gop")!=null){
             tra_gop = request.getParameter("tra_gop");
             }
         ProductGet productGet=new ProductGet();
         DecimalFormat formatter = new DecimalFormat("###,###,###");
         Category category=new Category();
         CategoryGet categoryGet=new CategoryGet();
        
         sliderGet sliderGet=new sliderGet();
    %>

        <jsp:include page="header_2.jsp"></jsp:include>
        <jsp:include page="header_bottom.jsp"></jsp:include>




        <div class="container">
            <hr style="border-color:#F15A25 ">
        </div>
        <%
        BrandGet brandGet=new BrandGet();
        %>

            <div style="background-color: #CCCCCC;padding: 5px 20px;" class="container">
                <div class="single-product">
                    Điện Thoai:
                    <%for(Brand br:brandGet.getListBrand()){ %>
                        <a href="shopDienthoai.jsp?brandID=<%=br.getBrandID()%>" style="padding-left: 20px;text-decoration: none;color: black;">
                            <%=br.getBrandName() %>
                        </a>
                        <%} %>
                </div>
            </div>

            <div style="background-color: #CCCCCC;padding: 5px 20px;margin-top: 10px;" class="container">
                <div class="single-product">
                    Phụ Kiện :
                    <%for(Brand br:brandGet.getListBrand()){ %>
                        <a href="shopPhukien.jsp?brandID=<%=br.getBrandID()%>" style="padding-left: 20px;text-decoration: none;color: black;">
                            <%=br.getBrandName() %>
                        </a>
                        <%} %>
                </div>
            </div>


            <div style="padding-top: 15px;" class="single-product-area">
                <div class="zigzag-bottom"></div>

                <div style="background-color: white;padding: 20px 20px;" class="container">

                    <div style="padding-left:;padding-top:5px ;" class="single-product">
                        <a style="color: black;" class="non-textdecoration">Chọn mức giá:</a>
                        <a href="product_khoan.jsp?min=0&max=1000000" class="non-textdecoration" style="background-color:#;padding: 2px 10px;color: #0078D7;border-radius:  ">Dưới 1 Triệu</a>
                        <a href="product_khoan.jsp?min=1000000&max=2000000" class="non-textdecoration" style="background-color:#;padding:2px 10px ;color: #0078D7;border-radius:  ">Từ 1 - 2 Triệu</a>
                        <a href="product_khoan.jsp?min=2000000&max=3000000" class="non-textdecoration" style="background-color:#;padding:2px 10px ;color: #0078D7;border-radius:  ">Từ 2 - 3 Triệu</a>
                        <a href="product_khoan.jsp?min=4000000&max=6000000" class="non-textdecoration" style="background-color:#;padding:2px 10px ;color: #0078D7;border-radius:  ">Từ 4 - 6 Triệu</a>
                        <a href="product_khoan.jsp?min=6000000&max=15000000" class="non-textdecoration" style="background-color:#;padding:2px 10px ;color: #0078D7;border-radius:  ">Từ 6 - 15 Triệu</a>
                        <a href="product_khoan.jsp?min=15000000&max=1000000000" class="non-textdecoration" style="background-color:#;padding: 2px 10px;color: #0078D7;border-radius:  ">15 Triệu Trở Lên</a>
                            <input style="padding-right: 5px" type="checkbox">Mới</a>

                        <a href="#" class="non-textdecoration" style="background-color:#;padding: 2px 10px;color: #0078D7;border-radius:  ">
                            <input style="padding-right: 5px;" type="checkbox">Trả góp 0%</a>
                    </div>
                    <hr style="border-color: #EEEEEE">
                    <h3 style="padding-top: 2px">Sản Phẩm</h3>
                    <div class="row">

                        <%
 
     for(Product product:productGet.getListProduct()) {%>

                            <div class="col-md-3 col-sm-6" style="border-color: #EEEEEE;border-style: solid;border-width: 0.5px">

                                <div class="single-product">

                                    <div class="product-f-image">

                                        <a class="non-textdecoration" href="single-product.jsp?productID=<%=product.getProductID()%>"><span class="price"  ><del style="background-color: #5CB85C;padding: 3px 3px;margin-left:220px   ;border-radius: 7px;color: white;margin-bottom: 50px;"><%=product.getGiam_Gia() %></del></span><img class="colsp" src="/baitap/imagesphone/<%=product.getProductImage()%>" style="height: 200;padding: ;"  alt=""></a>


                                        <div style="display: none;" class="product-hover">
                                            <a href="CartServlet?command=plus&productID=<%=product.getProductID()%>" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                            <a href="single-product.jsp?productID=<%=product.getProductID()%>" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                        </div>
                                    </div>

                                    <h2 style="padding-left: ">
                                        <a class="non-textdecoration" href="single-product.jsp?productID=<%=product.getProductID()%>">
                                            <%=product.getProductName()%>
                                        </a>
                                    </h2>
                                    <h4 style="font-size: 14px;color: ;margin-top: -13px">Bộ nhớ:
                                        <%=product.getBo_Nho() %>
                                    </h4>
                                    <h4 style="font-size: 14px;color: ;margin-top: -15px">Hệ điều hành:
                                        <%=product.getHe_Dieu_Hanh() %>
                                    </h4>

                                    <div style="padding-left: 15px;margin-top: -13px" class="product-carousel-price">
                                        <ins><p><em class="item_price"><%=formatter.format(product.getProductPrice())%> VNĐ </em><span style="font-size: 12px;color: black;">(Bảo hành 2 năm) </span>  </p> </ins>

                                    </div>

                                </div>
                            </div>

                            <%} %>
                    </div>

                    <div class="row">
                        <div class="col-md-12">
                            <div class="product-pagination text-center">
                                <nav>
                                    <ul class="pagination">
                                        <li>
                                            <a href="#" aria-label="Previous">
                                                <span aria-hidden="true">&laquo;</span>
                                            </a>
                                        </li>
                                        <li><a href="#">1</a></li>
                                        <li><a href="#">2</a></li>
                                        <li><a href="#">3</a></li>
                                        <li><a href="#">4</a></li>
                                        <li><a href="#">5</a></li>
                                        <li>
                                            <a href="#" aria-label="Next">
                                                <span aria-hidden="true">&raquo;</span>
                                            </a>
                                        </li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>





            <div style="" class="footer-top-area">
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
            <script src="https://code.jquery.com/jquery.min.js"></script>
            <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
            <script src="js/owl.carousel.min.js"></script>
            <script src="js/jquery.sticky.js"></script>
            <script src="js/jquery.easing.1.3.min.js"></script>
            <script src="js/main.js"></script>
            <script type="text/javascript" src="js/bxslider.min.js"></script>
            <script type="text/javascript" src="js/script.slider.js"></script>
</body>
</html>