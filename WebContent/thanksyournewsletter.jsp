
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
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>CHINH_SHOP</title>
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

   
</head>
<body>
	<%
   user user=null;
   
   if(session.getAttribute("user") != null){
       user = (user) session.getAttribute("user");
   }
   String category_1="1";
   String brand_1="1";
   if(request.getParameter("brand")!=null){
		brand_1 = request.getParameter("brand");
		}
	
	if(request.getParameter("category")!=null){
		category_1 = request.getParameter("category");
		}
	ProductGet productGet=new ProductGet();
	Cart cart = (Cart) session.getAttribute("cart");
    if (cart == null) {
        cart = new Cart();
        session.setAttribute("cart", cart);
    }
    DecimalFormat formatter = new DecimalFormat("###,###,###");
   %>
    <jsp:include page="header_2.jsp"></jsp:include>
	<jsp:include page="header_bottom.jsp"></jsp:include>
	 <div class="product-big-title-area">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="product-bit-title text-center">
                        <h2>Thanks You NewSletter </h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
	
	
			
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>