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
 <link rel="icon" type="image/png" href="${root}/img/favicon.ico"/>
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
				        i.fa-user{
				        color: black;
				        }
				        strong {
						color: black;
						}
						li.user{
						color: black;
						}
						div.header-area{
						background-color:#F0F0F0 ;color: white;
						}

			</style>
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
		
    <div  class="header-area">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div  class="user-menu">
                        <ul>
                        <li><a href="index.jsp" style="text-decoration: none;"><img style="width: 25px" alt="" src="/baitap/imagesphone/a.png"></a></li>
                        <li style="color: black;"><%if(user!=null){ %>
                   			 Chao User: <%=user.getUserName()%> <br>
                   			 <% } %></li>
                            <li><a  class="non-textdecoration"  href="myaccount.jsp"><i  class="fa fa-user"></i><strong > My Account </strong></a></li>
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