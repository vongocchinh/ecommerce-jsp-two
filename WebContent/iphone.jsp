
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
<html lang="en">
  <head>
   <c:set var="root" value="${pageContext.request.contextPath}"/>
 <link rel="icon" type="image/png" href="${root}/img/favicon.ico"/>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>iphone,điện thoại smartphone giá rẻ uy tín hổ trợ mọi mặt hàng...</title>
   
    <!-- Google Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>
    
    <!-- Bootstrap -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    
    <!-- Font Awesome -->
    <link rel="stylesheet" href="css/font-awesome.min.css">
    
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/responsive.css">
 <link rel="stylesheet" href="css/css_2.css">
    <style type="text/css">
     a.non-textdecorationip{
				            
				            text-decoration: none;
				        }
    }
    </style>
  </head>
  <body>
    <%
    user user=null;
   
    if(session.getAttribute("user") != null){
        user = (user) session.getAttribute("user");
    }else{
        user=null;
    }
      ProductGet productGet = new ProductGet();
    Category category=new Category();
      BrandGet brandget = new BrandGet();
      Product product = new Product();
      String productID = "";
      if (request.getParameter("productID") != null) {
           productID = request.getParameter("productID");
           product = productGet.getProduct(Integer.parseInt(productID));
      }
      ReviewGet reviewGet = new ReviewGet();
      int category_id = product.getCategoryID();
      Review review = new Review();
      CategoryGet categoryget = new CategoryGet();
      
      DecimalFormat formatter = new DecimalFormat("###,###,###");
      Cart cart = (Cart) session.getAttribute("cart");
      if (cart == null) {
          cart = new Cart();
          session.setAttribute("cart", cart);
      }
      BrandGet brandGet2=new BrandGet();
      Brand brand=new Brand();
      Category category2=new Category();
      CategoryGet categoryget2 = new CategoryGet();
      String category_id_1="1";
      String brand_id_1="1";
      if(request.getParameter("brand")!=null){
           brand_id_1= request.getParameter("brand");
           }
           brand=brandGet2.getBrand(Integer.parseInt(brand_id_1));
       if(request.getParameter("category")!=null){
           category_id_1 = request.getParameter("category");
           }
       category2=categoryget2.getCategory(Integer.parseInt(category_id_1));
      %>
        <jsp:include page="header_2.jsp"></jsp:include>
        <jsp:include page="header_bottom.jsp"></jsp:include>


        <br>

        <div class="zigzag-bottom"></div>
        <div style="background-color: white;padding: 10px 10px;" class="container">
            <div class="row">
                <jsp:include page="banner.jsp"></jsp:include>
                <div class="col-md-8">
                    <div class="product-content-right">
                        <div class="product-breadcroumb">
                            <a class="non-textdecoration11" href="index.jsp">Home</a>
                            <a class="non-textdecoration11" href="">
                                <%=brand.getBrandName() %>
                            </a>
                            <a class="non-textdecoration11" href="">
                                <%=category2.getCategoryName() %>
                            </a>
                        </div>


                        <div style="padding-top: 15px;" class="single-product-area">
                            <div class="zigzag-bottom"></div>

                            <div class="features_items">
                                <h2 class="title text-center">San Phẩm</h2>

                                <%
 
     for(Product product3:productGet.getRandombrand_category2(Integer.parseInt(brand_id_1), Integer.parseInt(category_id_1))) {%>

                                    <div style="border-color: #EEEEEE;border-style: solid;border-width: 1px;height: 300px;" class="col-sm-4">
                                        <div class="product-image-wrapper">

                                            <div class="single-product">

                                                <div class="product-f-image">
                                                    <a class="non-textdecorationip" href="single-product.jsp?productID=<%=product3.getProductID()%>"><span class="price"  ><del style="background-color: #5CB85C;padding: 2px 3px;margin-left:190px   ;border-radius: 7px;color: white;margin-bottom: 50px;"><%=product3.getGiam_Gia() %></del></span><img src="/baitap/imagesphone/<%=product3.getProductImage()%>" style="height: 200;padding: ;"  alt=""></a>
                                                    <div class="non-textdecoration11" class="product-hover">

                                                    </div>
                                                </div>

                                                <h2>
                                                    <a style="text-decoration: none;" href="single-product.jsp?productID=<%=product3.getProductID()%>">
                                                        <%=product3.getProductName()%>
                                                    </a>
                                                </h2>

                                                <div class="product-carousel-price">
                                                    <ins><p><em class="item_price"><%=formatter.format(product3.getProductPrice())%> VNĐ  </em> </p> </ins><br><br>


                                                </div>

                                            </div>
                                        </div>
                                    </div>

                                    <%} %>

                            </div>
                            <!--features_items-->
                        </div>

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