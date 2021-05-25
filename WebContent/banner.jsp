
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
    <style type='text/css'>
        a.non-textdecorationbn0{
            background-color:#F15A25;
            text-decoration: none;
            color: white;
            padding: 2px 10px;
            width: 200px;
            border-radius: 15px;
            padding-left: 70px;
        }
        a.non-textdecorationbn{
            
            text-decoration: none;
           
        }
        img.recent-thumb:hover{
						transform: scale(1.1);
        				-webkit-transform: scale(1.1); 
      					  -moz-transform: scale(1.1); 
     					   -o-transform: scale(1.1);
      					  -ms-transform: scale(1.1);
    					cursor: pointer; 
				}
				img.colsp{
				margin-left: 5px;
				}
				        </style>
				        <script>
				function validateForm2() {
				  var x = document.forms["myForm"]["product_name"].value;
				  
				  if (x == "") {
				    alert("Sản Phẩm không có !!!");
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
      String category_id_1="1";
      String brand_id_1="1";
      if(request.getParameter("brand")!=null){
           brand_id_1= request.getParameter("brand");
           }
       
       if(request.getParameter("category")!=null){
           category_id_1 = request.getParameter("category");
           }
      %>
        <div class="col-md-4">
            <div class="single-sidebar">
                <h2 class="sidebar-title">Search Products</h2>
                <form name="myForm" onsubmit="return validateForm2()" action="/baitap/SearchServlet" method="post">
                    <input name="product_name" type="text" placeholder="Search products...">
                    <td>
                        <input type="hidden" name="command" value="Search">
                        <input style="border-radius: 5px;background-color: #F15A25" type="submit" class="button" value="Search">
                    </td>
                </form>
            </div>
            <div class="single-sidebar">
                <h2 class="sidebar-title">Products Random</h2>
                <%
                         for(Product product2:productGet.getRanDom()){
                         %>
                    <div class="thubmnail-recent">
                        <img style="height: 100px;width: 85px" src="/baitap/imagesphone/<%=product2.getProductImage()%>" class="recent-thumb" alt="">
                        <h2>
                            <a class="non-textdecorationbn" href="single-product.jsp?productID=<%=product2.getProductID()%>">
                                <%=product2.getProductName()%>
                            </a>
                        </h2>
                        <div class="product-sidebar-price">
                            <span class="price">  <ins style="color: red;"><%=formatter.format(product2.getProductPrice())%> VNĐ</ins></span><br>
                            <span class="price" style="color: blue;"><del>Giam: <%=product2.getGiam_Gia() %></del></span>
                        </div>
                    </div>
                    <%} %>
            </div>
            <div class="single-sidebar">
                <h2 class="sidebar-title">Recent Posts</h2>
                <ul>
                    <li><a class="non-textdecorationbn0" href="iphone.jsp">Iphone</a></li>
                    <li><a class="non-textdecorationbn0" href="samsung.jsp">SamSung</a></li>
                    <li><a class="non-textdecorationbn0" href="redmi.jsp">Redmi</a></li>
                    <li><a class="non-textdecorationbn0" href="vivo.jsp">Vivo</a></li>
                    <li><a class="non-textdecorationbn0" href="Vsmart.jsp">Vsmart</a></li>
                </ul>
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
</body>
</html>