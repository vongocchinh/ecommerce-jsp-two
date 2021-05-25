
<%@page import="get.admin.CategoryGet"%>
<%@page import="get.admin.BrandGet"%>
<%@page import="model.admin.Cart"%>
<%@page import="model.admin.user"%>
<%@page import="java.text.NumberFormat"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="get.admin.ProductGet"%>
<%@page import="model.admin.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html >

<head>
    <c:set var="root" value="${pageContext.request.contextPath}" />
    <link rel="icon" type="image/png" href="${root}/img/favicon.ico" />
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Sản phẩm bạn đang tìm tại của hàng smartphone ngocchinh uy tín giá rẻ</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
        i.fa-user {
            color: black;
        }
        
        strong {
            color: black;
        }
    </style>

</head>

<body>
    <%
           user user=null;
       DecimalFormat formatter = new DecimalFormat("###,###,###");
              if(session.getAttribute("user") != null){
                  user = (user) session.getAttribute("user");
              }
              Cart cart = (Cart) session.getAttribute("cart");
               if (cart == null) {
                   cart = new Cart();
                   session.setAttribute("cart", cart);
               }
              %>
        <%
                       ProductGet productGet=new ProductGet();
                   
                           ArrayList<Product> list = new ArrayList<Product>();
                           list = productGet.getListProduct();
                           String product_name = "";
                           Product product1=new Product();
                           if (request.getParameter("product_name") != null ) {
                       
                               product_name = request.getParameter("product_name");
                               
                           }
                           ProductGet productGet2=new ProductGet();
                           ArrayList<Product> arrayList=productGet2.getSearch(product_name);
                           
                           
                   %>




            <div style="background-color: #F0F0F0;color: white;" class="header-area">
                <div class="container">
                    <div class="row">
                        <div class="col-md-8">
                            <div class="user-menu">
                                <ul>
                                    <li>
                                        <a href="index.jsp" style="text-decoration: none;"><img style="width: 25px" alt="" src="/baitap/imagesphone/a.png"></a>
                                    </li>
                                    <li style="color: black;">
                                        <%if(user!=null){ %>
                                            Chao User:
                                            <%=user.getUserName()%> <br>
                                                <% } %>
                                    </li>
                                    <li><a class="non-textdecoration" href="myaccount.jsp"><i  class="fa fa-user"></i><strong > My Account </strong></a></li>
                                    <li><a class="non-textdecoration" href="cart.jsp"><i  class="fa fa-user"></i> <strong > My Cart</strong></a></li>
                                    <li><a class="non-textdecoration" href="login.jsp"><i  class="fa fa-user"></i><strong > Đăng Nhập</strong></a></li>
                                    <li><a class="non-textdecoration" href="/baitap/LogoutServlet?command=logout"><i  class="fa fa-user"></i><strong > Đăng Xuất</strong></a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="header-right">
                                <ul class="list-unstyled list-inline">
                                    <li class="dropdown dropdown-small">
                                        <a style="text-decoration: none;" data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href="#"><span class="key" style="color: black;">(+847763717084) </span></a>

                                    </li>

                                    <li class="dropdown dropdown-small">
                                        <a style="text-decoration: none;" data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href="#"><span class="key" style="color: black;">Hổ Trợ</span></a>

                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div style="background-color: #F4F4F4" class="mainmenu-area">
                <div class="container">
                    <div class="row">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                           <span class="sr-only">Toggle navigation</span>
                           <span class="icon-bar"></span>
                           <span class="icon-bar"></span>
                           <span class="icon-bar"></span>
                       </button>
                        </div>
                        <div class="navbar-collapse collapse">
                            <ul class="nav navbar-nav">
                                <li class=""><a style="background-color: #" href="index.jsp">Trang Chủ</a></li>
                                <li><a href="shop.jsp">Điện Thoại</a></li>
                                <li><a href="cart.jsp">Giỏ Hàng</a></li>
                                <li><a href="checkout.jsp">Đặt Hàng</a></li>
                                <li><a href="category.jsp">Danh Muck</a></li>
                                <li><a href="#">Hổ Trợ</a></li>
                                <li><a href="contact.jsp">Liên Hệ</a></li>
                            </ul>

                        </div>
                    </div>
                </div>
            </div>


            <div style="margin-top: -60px" class="single-product-area">
                <div class="zigzag-bottom"></div>

                <div class="container">
                    <%
           BrandGet brandGet=new BrandGet();
           CategoryGet categoryGet1=new CategoryGet();
           for(Product product:arrayList){
               
           %>
                        <h4 style="color: black;">
                            <a href="shopDienthoai.jsp?brandID=<%=product.getBrandID()%>" style="color: black;">
                                <%=brandGet.getBrand(product.getBrandID()).getBrandName()%>
                            </a>/
                            <a href="shopDienthoai.jsp?brandID=<%=product.getBrandID()%>" style="color: black;">
                                <%=categoryGet1.getCategory(product.getCategoryID()).getCategoryName()%>
                            </a>/
                            <a href="shopDienthoai.jsp?brandID=<%=product.getBrandID()%>" style="color: black;">
                                <%=product.getProductName() %>
                            </a>
                        </h4>
                        <%} %>
                            <div style="padding-top: 10px" class="row">

                                <%
               for(Product product: productGet.getSearch(product_name.toLowerCase().trim())){
               %>


                                    <div class="col-md-3 col-sm-6">
                                        <div class="single-product">

                                            <div class="product-f-image">
                                                <img style="height: 260px; width: 220px" src="/baitap/imagesphone/<%=product.getProductImage()%>" alt="">
                                                <div style="display: none;" class="product-hover">
                                                    <a href="CartServlet?command=plus&productID=<%=product.getProductID()%>" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                                    <a href="single-product.jsp?productID=<%=product.getProductID()%>" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                                </div>
                                            </div>

                                            <h2>
                                                <a href="single-product.jsp?productID=<%=product.getProductID()%>">
                                                    <%=product.getProductName()%>
                                                </a>
                                            </h2>

                                            <div class="product-carousel-price">
                                                <ins><p><em style="color: white;" class="item_price"><%=formatter.format(product.getProductPrice())%> VNĐ</em></p></ins>
                                            </div>

                                        </div>
                                    </div>

                                    <%}%>
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
                <hr style="border-color: red;">
                <div class="related-products-wrapper">
                    <h2 class="related-products-title" style="padding-left: 550px">Related Products</h2>
                    <div class="related-products-carousel">
                        <%
                            for(Product product3:productGet.getRanDom()){
                            %>

                            <div class="single-product" style="padding-left: 60px;">
                                <div class="product-f-image" style="width: 300px;padding: 15px 15px;">
                                    <img src="/baitap/imagesphone/<%=product3.getProductImage() %>" style="width: 300;height: 260" alt="">
                                    <div style="display: none;" class="product-hover">
                                        <a href="" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                        <a href="" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                                    </div>
                                </div>

                                <h2>
                                    <a style="text-decoration: none;" href="single-product.jsp?productID=<%=product3.getProductID()%>">
                                        <%=product3.getProductName()%>
                                    </a>
                                </h2>

                                <div class="product-carousel-price">
                                    <ins style="color: red;"><i><%=formatter.format(product3.getProductPrice())%> VNĐ</i></ins>
                                </div>
                            </div>
                            <%} %>
                    </div>
                </div>
            </div>
            <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>