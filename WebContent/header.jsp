<%@page import="java.text.DecimalFormat"%>
<%@page import="model.admin.Cart"%>
<%@page import="model.admin.user"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<c:set var="root" value="${pageContext.request.contextPath}"/>

<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
   	<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>

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
    a.non-textdecoration{
	 text-decoration: none;
				        }
				        input.search{
						
						margin-top: 15.5px;
						margin-left: 5px;
						}
						span.search {
						margin-left: 50px;
						padding-left: 5px;
						margin-top: 10px;
						color: #A0A0A0;
						}
						i.fa-user{
						color: black;
						}
						strong {
	color: black;
}
    </style>
    <script type="text/javascript">
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
</head>
<body>

<%
		user user=null;
		  
Cart cart = (Cart) session.getAttribute("cart");
if (cart == null) {
    cart = new Cart();
    session.setAttribute("cart", cart);
}

		   if(session.getAttribute("user") != null){
		       user = (user) session.getAttribute("user");
		       response.sendRedirect("/baitap/cart.jsp");
		   }else{
			   
		   }
		   DecimalFormat formatter = new DecimalFormat("###,###,###");
		   %>
<div style="color: white;background-color:#F0F0F0 ;" class="header-area">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                    <div  class="user-menu">
                        <ul>
                        <li><a href="index.jsp" style="text-decoration: none;"><img style="width: 25px" alt="" src="/baitap/imagesphone/a.png"></a></li>
                        <li><%if(user!=null){ %>
                   			 Chao User: <%=user.getUserName()%> <br>
                   			 <% } %></li>
                            <li ><a  class="non-textdecoration"  href="myaccount.jsp"><i  class="fa fa-user"></i><strong > My Account </strong></a></li>
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
                                <a style="text-decoration: none;" data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href="#"><span class="key" style="color: white;">(+847763717084) </span></a>
                               
                            </li>
                           
                            <li class="dropdown dropdown-small">
                                <a style="text-decoration: none;" data-toggle="dropdown" data-hover="dropdown" class="dropdown-toggle" href="#"><span class="key" style="color: white;">Hổ Trợ</span></a>
                               
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
                        <li class=""><a href="index.jsp">Home</a></li>
                        <li><a href="shop.jsp">Shop page</a></li>
                        <li><a href="single-product.jsp">Single product</a></li>
                        <li><a href="cart.jsp">Cart</a></li>
                        <li><a href="checkout.jsp">Checkout</a></li>
                        <li><a href="category.jsp">Category</a></li>
                        <li><a href="#">Others</a></li>
                        <li><a href="contact.jsp">Contact</a></li>
                        <li>
	                        <form action="/baitap/SearchServlet" method="post">
	                        <span class="search">Search</span>
	                        <input id="scriptBox" name="product_name" class="search" type="search" onkeypress="return runScript(event)"/>
	                        <input type="hidden" name="command" value="Search">     
	                        </form>
                         </li>
                    </ul>
                </div>  
            </div>
        </div>
    </div> 
    
   
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

    <!-- Slider -->
    <script type="text/javascript" src="js/bxslider.min.js"></script>
    <script type="text/javascript" src="js/script.slider.js"></script>
</body>
</html>