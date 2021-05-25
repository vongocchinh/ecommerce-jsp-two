<%@page import="model.admin.QC"%>
<%@page import="get.admin.QCGet"%>
<%@page import="get.admin.sliderGet"%>
<%@page import="model.admin.slider"%>
<%@page import="model.admin.Cart"%>
<%@page import="model.admin.user"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="get.admin.ProductGet"%>
<%@page import="model.admin.Product"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
    <c:set var="root" value="${pageContext.request.contextPath}" />
  <link rel="icon" type="image/png" href="${root}/img/favicon.ico"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Trang chủ cửa hàng smartphone , ngocchinh điện thoại smartphone giá rẻ uy tín...</title>
    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/responsive.css">
    <link rel="stylesheet" href="css/chinh.css">


    <style type="text/css">
        h2 {
            color: #3B95DA;
        }
        
        div.product-carousel {
            border-radius: 0;
            border-style: solid;
            border-width: 1px;
            border-color: #FFFFFF;
            padding: 25px 25px;
            background-color: #FFFFFF
        }
        
        .block-slider .bx-prev:hover,
        .block-slider .bx-next:hover {
            background: #F15A25;
            color: #fff;
            border-color: #F15A25;
        }
        
        .mainmenu-area ul.navbar-nav li:hover a,
        .mainmenu-area ul.navbar-nav li.active a {
            background: #F15A25;
            color: #FFF;
        }
        
        .block-slider .bx-prev,
        .block-slider .bx-next {
            width: 32px;
            height: 32px;
            border: 1px none #F15A25;
            text-align: center;
            display: block;
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
        
        .block-slider .bx-pager {
            display: none;
            text-align: center;
        }
        
        .block-slider .bx-pager-item {
            width: 15px;
            height: 15px;
            background: #fff;
            font-size: 0;
            display: none;
            border-radius: 50%;
            margin: 0 3px;
        }
        
        .block-slider .bx-pager-item a {
            width: 100%;
            height: 100%;
            background: #999;
            display: none;
            border-radius: 50%;
        }
        
        a.non-textdecoration {
            text-decoration: none;
        }
        
        .single-wid-product h2 a:hover,
        .single-product h2 a:hover {
            color: #F15A25;
        }
        
        div.header-area {
            background-color: #F0F0F0;
            color: black;
        }
        
        div.header-area:hover {}
        
        i.fa,
        i.fa-user {
            color: black;
        }
        
        strong {
            color: black;
        }
        
        strong:hover {
            color: #F0F0F0;
        }
        
        img.user {
            width: 25px;
        }
        
        span.key {
            color: black;
        }
        
        div.mainmenu-area {
            background-color: #F4F4F4;
            position: sticky;
            top: 0px;
           
        }
        
        div.slider-area {
            padding-top: 15px;
            width: 1150px;
        }
        
        ul.slider {
            border-color: #C21D32;
            border-style: solid;
            border-width: 2px
        }
        
        h4.pro {
            color: white;
            background-color: #F15A25;
            padding: 10px 25px;
            padding-top: 10px;
            margin-bottom: -8px;
            margin-right: -15px;
            margin-left: -15px;
        }
        
        img.col {
            height: 100px;
            padding-top: 5px";

        }
        
        div.product-carousel {
            border-color: #F15A25;
            height: 350px;
        }
        
        div.coln {
            color: white;
            background-color: #;
            padding: 1px 20px;
            padding-top: 10px";

        }
        
        strong.coln {
            color: black;
        }
        
        div.colc {
            padding-top: 20px;
        }
        
        div.product-carousel-price {
            margin-top: -13px;
            '

        }
        
        h4.col4bn {
            font-size: 14px;
            margin-top: -15px;
        }
        
        h2.col2 {
            font-size: 17px;
        }
        
        span.price {
            background-color: #FFD767;
            padding: 1px 1px;
            margin-left: 160px;
            border-radius: 7px;
            color: white;
            position: relative;
            margin-top: 10px;
        }
        
        img.colsp {
            height: 200;
            background-repeat: no-repeat;
            position: static;
        }
        
        input.colk:hover {
            background-color: black;
            color: white;
            border-color: blue;
            font-size: 30px;
        }
         border: 1px solid #ABABAB;
        input.colk:active {
            color: blue;
        }
        
        div.single-product:hover {
            transform: scale(1.05);
            -webkit-transform: scale(1.075);
            -moz-transform: scale(1.075);
            -o-transform: scale(1.075);
            -ms-transform: scale(1.075);
            cursor: pointer;
        }
        
        div.single-product {
            padding-left: 10px;
            margin-top: 10px;
        }
        
        img.product-thumb:hover {
            border-color: #FFFFFF;
            border-style: solid;
            border-width: 1px;
        }
        
        div.product-carousel {
            height: 365px;
        }
        
        input.search {
            margin-top: 15.5px;
            margin-left: 100px;
            width: 200px;
            height: 30px;
            border-radius: 15px;
        }
        
        span.search {
            margin-left: 50px;
            padding-left: 5px;
            margin-top: 10px;
            color: #A0A0A0;
        }
        
        li.active1 {
            color: black;
        }
        a.cart-item{
       margin-left: 20px;
        }
         a.cart-item:hover {
		background-color: #E1FCFF;
}
    </style>

    <script>
        function validateFormindex() {

            var y = document.forms["formindex"]["email"].value;


            if (y == "") {
                alert("email must be filled out");
                return false;
            }

        }

        function runScript(e) {
            //See notes about 'which' and 'key'
            if (e.keyCode == 13) {
                var tb = document.getElementById("scriptBox");
                eval(tb.value);
                alert("Sản phẩm không có !!!");
                return false;
            }
        }
    </script>
</head>

<body>
    <%
           user user=null;
              if(session.getAttribute("user") != null){
                  user = (user) session.getAttribute("user");
              }
              sliderGet sliderGet=new sliderGet();
           ProductGet productGet=new ProductGet();
           String category_id_1 = "1";
           String brand_1="1";
           String brand_2="2";
           String brand_3="3";
           if(request.getParameter("category")!=null){
           category_id_1 = request.getParameter("category");
           }
           if(request.getParameter("brand")!=null){
               brand_1 = request.getParameter("brand");
               }
           if(request.getParameter("brand")!=null){
               brand_2 = request.getParameter("brand");
               }
           if(request.getParameter("brand")!=null){
               brand_3 = request.getParameter("brand");
               }
           DecimalFormat formatter = new DecimalFormat("###,###,###");
           String category_id_10="10";
           String barnd_id_3="3";
           String brand_id_12121="12";
           if(request.getParameter("category")!=null){
               category_id_10 = request.getParameter("category");
               }
               if(request.getParameter("brand")!=null){
                   barnd_id_3 = request.getParameter("brand");
                   }
               if(request.getParameter("brand")!=null){
                   brand_id_12121=request.getParameter("brand");
               }
               String category_id_11="11";
               String barnd_id_2="2";
               if(request.getParameter("category")!=null){
                   category_id_11 = request.getParameter("category");
                   }
                   if(request.getParameter("brand")!=null){
                       barnd_id_2 = request.getParameter("brand");
                       }
                   String category_id_9="9";
                   
                   if(request.getParameter("category")!=null){
                       category_id_9 = request.getParameter("category");
                       }
                       
                    Cart cart = (Cart) session.getAttribute("cart");
                       if (cart == null) {
                           cart = new Cart();
                           session.setAttribute("cart", cart);
                       }
                       

                       int a;
            
                       try {
                           Integer count = new Integer(0);
                           Class.forName("com.mysql.jdbc.Driver").newInstance();
                           Connection con = DriverManager.getConnection
           				("jdbc:mysql://localhost:3306/iphoneshop", "root", "123456");
                           Statement st = con.createStatement();
                           ResultSet rs = st.executeQuery("select * from coun_ter");
                               while (rs.next()) 
                                   count = rs.getInt("count");
                           if (session.isNew()) {                 
                           } else { 
                               Integer oldcount = (Integer) session.getAttribute("count");
                               if (oldcount != null) {

                                   count = new Integer(oldcount.intValue() + 1);
                               } 
                               session.setAttribute("count", count);                  
             					st.executeUpdate("update coun_ter set count =" + count + "");
                               while (rs.next()) {
                                   a = rs.getInt("count");
                                   out.println(a);
                               }
                           }
                       } catch (Exception e) {
                       }
                           
                   
           %>

        <div class="header-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <div class="user-menu">
                            <ul>
                                <li>
                                    <a href="index.jsp" class="non-textdecoration"><img class="user" alt="" src="/baitap/imagesphone/a.png"></a>
                                </li>
                                <li>
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
                                    <a class="non-textdecoration" data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href="#"><span class="key" >(+847763717084) </span></a>

                                </li>

                                <li class="dropdown dropdown-small">
                                    <a class="non-textdecoration" data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href="#"><span class="key" >Hổ Trợ</span></a>

                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="mainmenu-area">
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
                            <li class="active1"><a href="index.jsp">Trang Chủ</a></li>
                            <li><a href="shop.jsp">Điện Thoại</a></li>

                            <li><a href="cart.jsp">Giỏ Hàng</a></li>
                            <li><a href="checkout.jsp">Đặt Hàng</a></li>
                            <li><a href="category.jsp">Danh Mục</a></li>
                            <li><a href="#">Hổ TRợ</a></li>
                            <li><a href="contact.jsp">Liên Hệ</a></li>
                            <li>
                                <form action="/baitap/SearchServlet" method="post">
                                    
                                    <input placeholder="Search..." id="scriptBox" name="product_name" class="search" type="text" onkeypress="return runScript(event)" />
                                    <input type="hidden" name="command" value="Search">
                                </form>
                            </li>
                            <li>
                            <a class="cart-item" href="cart.jsp"><span style="color: black;" class="cart-amunt"><%=formatter.format(cart.totalCart())%></span> <i class="fa fa-shopping-cart"></i> <span class="product-count"><%=cart.countItem()%></span></a>
                            </li>
                        </ul>

                    </div>
                </div>
            </div>
        </div>






        <div class="slider-area">
            <div class="block-slider block-slider4">
                <div class="row">
                    <div class="col-sm-8" style="height: 400px;">
                        <ul class="slider" id="bxslider-home4">
                            <%
                         for(slider slider:sliderGet.getListUser()){
                           %>
                                <li>
                                    <a class="non-textdecoration" href="single-product.jsp?productID=<%=slider.getProduct_id()%>">  <img style="height: 390px" src="/baitap/imagesphone/<%=slider.getImages_slider() %>" alt="Slide"></a>
                                </li>
                                <%
                             }
                             %>
                        </ul>
                    </div>
                    <div class="col-sm-4">
                        <%
                           QCGet qcGet1=new QCGet();
                           for(QC qc:qcGet1.getQC_muc_qc(1)){
                           %>
                            <a href="single-product.jsp?productID=<%=qc.getProduct_id()%>"> <img style="height: 130px" alt="" src="/baitap/imagesphone/<%=qc.getImages_QC()%>"></a>
                            <%
                           }
                           %>
                                <%
                       QCGet qcGet2=new QCGet();
                       for(QC qc:qcGet2.getQC_muc_qc(2)){
                        %>
                                    <a href="single-product.jsp?productID=<%=qc.getProduct_id()%>">	    <img style="padding-top: 20px;height: 130px;" alt="" src="/baitap/imagesphone/<%=qc.getImages_QC()%>"> </a>
                                    <%
                       }
                       %>
                                        <%
                       QCGet qcGet8=new QCGet();
                       for(QC qc:qcGet2.getQC_muc_qc(8)){
                        %>
                                            <a href="single-product.jsp?productID=<%=qc.getProduct_id()%>">	    <img style="padding-top: 20px;height: 130px;" alt="" src="/baitap/imagesphone/<%=qc.getImages_QC()%>"> </a>
                                            <%
                       }
                       %>

                    </div>
                </div>
            </div>
        </div>
        <div class="zigzag-bottom"></div>
        <div class="container" style="padding-top: 30px">
            <%
           QCGet qcGet3=new QCGet();
           for(QC qc:qcGet3.getQC_muc_qc(3)){
            %>
                <a href="single-product.jsp?productID=<%=qc.getProduct_id()%>"> <img alt="" src="/baitap/imagesphone/<%=qc.getImages_QC()%>"></a>
                <%
           }
           %>
        </div>
        <div class="zigzag-bottom"></div>
        <div class="container" style="padding-top: 30px">
            <%
           QCGet qcGet4=new QCGet();
           for(QC qc:qcGet4.getQC_muc_qc(4)){
            %>
                <a href="single-product.jsp?productID=<%=qc.getProduct_id()%>">  <img style="height: 100px" alt="" src="/baitap/imagesphone/<%=qc.getImages_QC()%>"></a>
                <%
           }
           %>

        </div>
        <hr>
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="latest-product">
                        <div class="coln">
                            <h4><strong class="coln">Điện Thoại REDMI</strong></h4>
                        </div>
                        <div class="product-carousel">
                            <%
               for (Product p : productGet.getRandombrand_category_12(Integer.parseInt(brand_id_12121), Integer.parseInt(category_id_1))) { 
                                    %>
                                <div class="single-product">
                                    <div class="product-f-image">
                                        <a class="non-textdecoration" href="single-product.jsp?productID=<%=p.getProductID()%>"><span class="price"  ><%=p.getGiam_Gia() %></span><img class="colsp" src="/baitap/imagesphone/<%=p.getProductImage()%>"   alt=""></a>
                                        <div style="display: none;" class="product-hover">
                                        </div>
                                    </div>
                                    <h2 class="col2">
                                        <a class="non-textdecoration" href="single-product.jsp?productID=<%=p.getProductID()%>">
                                            <%=p.getProductName()%>
                                        </a>
                                    </h2>
                                    <h4 class="col4bn">Bộ nhớ:
                                        <%=p.getBo_Nho() %>
                                    </h4>
                                    <h4 class="col4bn">Hệ điều hành:
                                        <%=p.getHe_Dieu_Hanh() %>
                                    </h4>
                                    <div class="product-carousel-price">
                                        <ins><p><em  class="item_price">Gia:<%=formatter.format(p.getProductPrice())%> VNĐ</em></p></ins>
                                    </div>
                                </div>
                                <%}%>
                        </div>
                        <div class="colc"></div>
                        <div class="coln">
                            <h4><strong class="coln" ">Điện Thoại Iphone</strong></h4></div>
                           <div class="product-carousel ">
                  <%
               for (Product p : productGet.getRandombrand_category_12(Integer.parseInt(brand_1), Integer.parseInt(category_id_1))) { 
                                    %>
                               <div  class="single-product " >
                                   <div class="product-f-image ">
                                   <a class="non-textdecoration " href="single-product.jsp?productID=<%=p.getProductID()%>" ><span class="price"><%=p.getGiam_Gia() %></span><img class="colsp" src="/baitap/imagesphone/<%=p.getProductImage()%>" alt=""></a>
                                <div style="display: none;" class="product-hover">
                                </div>
                        </div>
                        <h2 class="col2">
                            <a class="non-textdecoration" href="single-product.jsp?productID=<%=p.getProductID()%>">
                                <%=p.getProductName()%>
                            </a>
                        </h2>
                        <h4 class="col4bn">Bộ nhớ:
                            <%=p.getBo_Nho() %>
                        </h4>
                        <h4 class="col4bn">Hệ điều hành:
                            <%=p.getHe_Dieu_Hanh() %>
                        </h4>
                        <div class="product-carousel-price">
                            <ins><p><em  class="item_price">Gia:<%=formatter.format(p.getProductPrice())%> VNĐ</em></p></ins>
                        </div>
                    </div>
                    <%}%>
                </div>
                <div class="colc"></div>
                <div class="coln">
                    <h4><strong class="coln" ">Điện Thoại SAMSUNG</strong></h4></div>
                           <div class="product-carousel ">
       <%
       for (Product p : productGet.getRandombrand_category_12(Integer.parseInt(brand_2), Integer.parseInt(category_id_1))) { 
                                    %>
                               <div  class="single-product " ">
                        <div class="product-f-image">
                            <a class="non-textdecoration" href="single-product.jsp?productID=<%=p.getProductID()%>"><span class="price"  ><%=p.getGiam_Gia() %></span><img class="colsp" src="/baitap/imagesphone/<%=p.getProductImage()%>"   alt=""></a>
                            <div style="display: none;" class="product-hover">
                            </div>
                        </div>
                        <h2 class="col2">
                            <a class="non-textdecoration" href="single-product.jsp?productID=<%=p.getProductID()%>">
                                <%=p.getProductName()%>
                            </a>
                        </h2>
                        <h4 class="col4bn">Bộ nhớ:
                            <%=p.getBo_Nho() %>
                        </h4>
                        <h4 class="col4bn">Hệ điều hành:
                            <%=p.getHe_Dieu_Hanh() %>
                        </h4>
                        <div class="product-carousel-price">
                            <ins><p><em  class="item_price">Gia:<%=formatter.format(p.getProductPrice())%> VNĐ</em></p></ins>
                        </div>
                </div>
                <%}%>
            </div>
            <div class="colc"></div>
            <div class="coln">
                <h4><strong class="coln" ">Điện Thoại OPPO</strong></h4></div>
                           <div class="product-carousel ">
       <%
       for (Product p : productGet.getRandombrand_category_12(Integer.parseInt(brand_3), Integer.parseInt(category_id_1))) { 
                                    %>
                              <div  class="single-product " ">
                    <div class="product-f-image">
                        <a class="non-textdecoration" href="single-product.jsp?productID=<%=p.getProductID()%>"><span class="price"  ><%=p.getGiam_Gia() %></span><img class="colsp" src="/baitap/imagesphone/<%=p.getProductImage()%>"   alt=""></a>
                        <div style="display: none;" class="product-hover">
                        </div>
                    </div>
                    <h2 class="col2">
                        <a class="non-textdecoration" href="single-product.jsp?productID=<%=p.getProductID()%>">
                            <%=p.getProductName()%>
                        </a>
                    </h2>
                    <h4 class="col4bn">Bộ nhớ:
                        <%=p.getBo_Nho() %>
                    </h4>
                    <h4 class="col4bn">Hệ điều hành:
                        <%=p.getHe_Dieu_Hanh() %>
                    </h4>
                    <div class="product-carousel-price">
                        <ins><p><em  class="item_price">Gia:<%=formatter.format(p.getProductPrice())%> VNĐ</em></p></ins>
                    </div>
            </div>
            <%}%>

        </div>
        </div>
        </div>
        </div>
        </div>
        <div class="zigzag-bottom"></div><br><br>

        <div class="container" style="background-color: ;width: 1135px;border-color: #F15A25;border-style: solid;border-width: 1px;padding: 20px 10px">

            <div class="row">
                <h4 style="padding-left: 15px; ">Khuyến Mãi Siêu Khủng</h4>
                <%
                       QCGet qcGet5=new QCGet();
                       for(QC qc:qcGet5.getQC_muc_qc(5)){
                        %>
                    <div class="col-md-4 col-sm-6">
                        <div class="">
                            <a href="single-product.jsp?productID=<%=qc.getProduct_id()%>"><img class="col"  alt="" src="/baitap/imagesphone/<%=qc.getImages_QC()%>"></a>

                        </div>
                    </div>

                    <%
                       }
                    %>
                        <%
                       QCGet qcGet6=new QCGet();
                       for(QC qc:qcGet6.getQC_muc_qc(6)){
                        %>
                            <div class="col-md-4 col-sm-6">
                                <div class="">
                                    <a href="single-product.jsp?productID=<%=qc.getProduct_id()%>"><img class="col"  alt="" src="/baitap/imagesphone/<%=qc.getImages_QC()%>"></a>

                                </div>
                            </div>

                            <%
                       }
                    %>
                                <%
                       QCGet qcGet7=new QCGet();
                       for(QC qc:qcGet7.getQC_muc_qc(7)){
                        %>
                                    <div class="col-md-4 col-sm-6">
                                        <div class="">
                                            <a href="single-product.jsp?productID=<%=qc.getProduct_id()%>"><img class="col" alt="" src="/baitap/imagesphone/<%=qc.getImages_QC()%>"></a>

                                        </div>
                                    </div>

                                    <%
                       }
                    %>

            </div>
        </div>

        <div class="product-widget-area">
            <div class="zigzag-bottom"></div>
            <div style="padding: 0px 33px;" class="container">
                <h4 class="pro">Sản Phấm Khác</h4>
                <div style="border-color: #F15A25;border-style: solid;border-width: 1px;background-color: white;padding: 10px 20px;" class="row">
                    <div class="col-md-4">
                        <div class="single-product-widget">
                            <h2 class="product-wid-title">TiVi</h2>
                            <a class="non-textdecoration" href="tivi.jsp" class="wid-view-more">View All</a>
                            <%
                     for(Product product:productGet.getRandombrand_category(Integer.parseInt(barnd_id_2), Integer.parseInt(category_id_11))){
                     %>
                                <div class="single-wid-product">
                                    <a class="non-textdecoration" href="single-product.jsp?productID=<%=product.getProductID()%>"><img  src="/baitap/imagesphone/<%=product.getProductImage()%>" style="width: 180; height: 170" alt="" class="product-thumb"></a>
                                    <h2>
                                        <a class="non-textdecoration" href="single-product.jsp?productID=<%=product.getProductID()%>">
                                            <%=product.getProductName() %>
                                        </a>
                                    </h2>
                                    <div class="product-wid-rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                    <div class="product-wid-price">
                                        <ins style="color: red;"><%=formatter.format(product.getProductPrice())%> VNĐ</ins> <del><%=product.getGiam_Gia()%></del>
                                    </div>
                                </div>
                                <%}%>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="single-product-widget">
                            <h2 class="product-wid-title">LapTop</h2>
                            <a class="non-textdecoration" href="laptop.jsp" class="wid-view-more">View All</a>
                            <%
                     for(Product product:productGet.getRandombrand_category(Integer.parseInt(barnd_id_2), Integer.parseInt(category_id_9))){
                 
                     %>
                                <div class="single-wid-product">
                                    <a class="non-textdecoration" href="single-product.jsp?productID=<%=product.getProductID()%>"><img src="/baitap/imagesphone/<%=product.getProductImage()%>" style="width: 120; height: 170" alt="" class="product-thumb"></a>
                                    <h2>
                                        <a class="non-textdecoration" href="single-product.jsp?productID=<%=product.getProductID()%>">
                                            <%=product.getProductName() %>
                                        </a>
                                    </h2>
                                    <div class="product-wid-rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                    <div class="product-wid-price">
                                        <ins style="color: red;"><%=formatter.format(product.getProductPrice())%> VNĐ</ins> <del><%=product.getGiam_Gia()%></del>
                                    </div>
                                </div>
                                <%}%>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="single-product-widget">
                            <h2 class="product-wid-title">Loa</h2>

                            <%
                     for(Product product:productGet.getRandombrand_category(Integer.parseInt(barnd_id_3), Integer.parseInt(category_id_10))){
                     %>
                                <a class="non-textdecoration" href="shopPhukien.jsp?categoryID=<%=Integer.parseInt(category_id_10) %>&productID=<%=Integer.parseInt(barnd_id_3) %>" class="wid-view-more">View All</a>
                                <div class="single-wid-product">
                                    <a class="non-textdecoration" href="single-product.jsp?productID=<%=product.getProductID()%>"><img src="/baitap/imagesphone/<%=product.getProductImage()%>" style="width: 120; height: 170" alt="" class="product-thumb"></a>
                                    <h2>
                                        <a class="non-textdecoration" href="single-product.jsp?productID=<%=product.getProductID()%>">
                                            <%=product.getProductName() %>
                                        </a>
                                    </h2>
                                    <div class="product-wid-rating">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                    </div>
                                    <div class="product-wid-price">
                                        <ins style="color: red;"><%=formatter.format(product.getProductPrice())%> VNĐ</ins> <del><%=product.getGiam_Gia()%></del>
                                    </div>
                                </div>
                                <%}%>
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
                                <li><a href="#">My account</a></li>
                                <li><a href="#">Order history</a></li>
                                <li><a href="#">Wishlist</a></li>
                                <li><a href="#">Vendor contact</a></li>
                                <li><a href="#">Front page</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="footer-menu">
                            <h2 class="footer-wid-title">Categories</h2>
                            <ul>
                                <li><a href="#">Mobile Phone</a></li>
                                <li><a href="#">Home accesseries</a></li>
                                <li><a href="#">LED TV</a></li>
                                <li><a href="#">Computer</a></li>
                                <li><a href="#">Gadets</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="footer-newsletter">
                            <h2 class="footer-wid-title">Newsletter</h2>
                            <p>Sign up to our newsletter and get exclusive deals you wont find anywhere else straight to your inbox!</p>
                            <div class="newsletter-form">
                                <form name="formindex" onsubmit="return validateFormindex()" action="NewsletterServlet" method="post">
                                    <input id="email" name="email" type="email" placeholder="Nhập Mail Đăng Kí">

                                    <input type="hidden" value="insert" name="command">
                                    <input class="colk" type="submit" value="Đăng Kí">
                                </form>
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