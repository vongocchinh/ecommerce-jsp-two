<%@page import="get.admin.sliderGet"%>
<%@page import="model.admin.slider"%>
<%@page import="model.admin.Cart"%>
<%@page import="model.admin.user"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="get.admin.ProductGet"%>
<%@page import="model.admin.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html >

<head>
 <c:set var="root" value="${pageContext.request.contextPath}"/>
 <link rel="icon" type="image/png" href="${root}/images/favicon.ico"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>chinh_shop_home</title>
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
					color:#3B95DA;
						}
					div.product-carousel {
						border-radius: 0;
						border-style: solid;
						border-width: 1px;
						border-color: #FFFFFF;
						padding: 25px 25px;
						background-color: #FFFFFF
						}
			</style>
			<style type='text/css'>
				        a.non-textdecoration12{
				            
				            text-decoration: none;
				        }
				        input.search{
						
						margin-top: 15.5px;
						margin-left: 100px;
			            width: 200px;
			            height: 30px;
						border-radius: 15px;
						}
						span.search {
						margin-left: 50px;
						
						margin-top: 10px;
						color: #A0A0A0;
						 
						}
						div.mainmenu-area{
						background-color: #F3F3F3;
						} 
			</style>
			<script type="text/javascript">
			function runScript(e) {
			    //See notes about 'which' and 'key'
			    if (e.keyCode == 13) {
			        var tb = document.getElementById("scriptBox");
			        eval(tb.value);
			        alert("Bạn Nhập Mã Tìm Kiếm");
			        return false;
			    }
			}
			</script>
</head>
<body >
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
		if(request.getParameter("category")!=null){
			category_id_10 = request.getParameter("category");
			}
			if(request.getParameter("brand")!=null){
				barnd_id_3 = request.getParameter("brand");
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
		%>
		
    
    
    <div class="mainmenu-area">
        <div class="container">
            <div class="row" >
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <div  class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li class=""><a href="index.jsp">Trang Chủ</a></li>
                        <li><a href="shop.jsp">Điện Thoại</a></li>
                        
                        <li><a href="cart.jsp">Giỏ Hàng</a></li>
                        <li><a href="checkout.jsp">Đặt Hàng</a></li>
                        <li><a href="category.jsp">Danh Mục</a></li>
                        <li><a href="#">Hổ Trợ</a></li>
                        <li><a href="contact.jsp">Liên Hệ</a></li>
                         <li>
	                        <form action="/baitap/SearchServlet" method="post">
	                        
	                        <input placeholder="Search..." id="scriptBox" name="product_name" class="search" type="text" onkeypress="return runScript(event)"/>
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