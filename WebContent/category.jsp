<!DOCTYPE html>

<%@page import="get.admin.CategoryGet"%>
<%@page import="model.admin.Category"%>
<%@page import="get.admin.BrandGet"%>
<%@page import="model.admin.Brand"%>
<%@page import="get.admin.ProductGet"%>
<%@page import="model.admin.Product"%>
<%@page import="model.admin.Item"%>
<%@page import="java.util.Map"%>
<%@page import="model.admin.user"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="model.admin.Cart"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html >
  <head>
    <c:set var="root" value="${pageContext.request.contextPath}"/>
 	<link rel="icon" type="image/png" href="${root}/img/favicon.ico"/>
    <meta charset="utf-8">
    
  	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>CHINH_SHOP_CATEGORY</title>
    
    <!-- Google Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>
     <link rel="stylesheet" href="css/css_2.css">
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
    
    function matchpass(){ 
    	var name=document.checkout.product_name.value;  
    	
    	
    	if (name==null || name==""){  
    	  alert("Vui Long Nhập Tên !!!");  
    	  return false;  
    	}
    	
    	}  
    </script>
    <style type='text/css'>
       
        a.non-textdecorationct1{
            
            text-decoration: none;
            
            
        }
         
        i.fa {
		
	}
        </style>
  </head>
  <body>
    <%
          user user=null;
    
    if(session.getAttribute("user") != null){
        user = (user) session.getAttribute("user");
    }
    ProductGet productGet33=new ProductGet();
    Product product33=new Product();
    String productID33 = "";
    
    ProductGet productGet=new ProductGet();
    Product product3=new Product();
    String productID="";
    
   String category="1";
   String brand="1";
   if(request.getParameter("category")!=null){
       category=request.getParameter("category");
   }
   if(request.getParameter("brand")!=null){
       category=request.getParameter("brand");
   }
    
    if (request.getParameter("productID") != null) {
         productID33 = request.getParameter("productID");
         product33 = productGet.getProduct(Integer.parseInt(productID33));
    }
             Cart cart = (Cart) session.getAttribute("cart");
             if (cart == null) {
                 cart = new Cart();
                 session.setAttribute("cart", cart);
             }
             DecimalFormat formatter = new DecimalFormat("###,###,###");
             
             Brand brand2=new Brand();
             BrandGet brandGet=new BrandGet();
         
         %>
        <jsp:include page="header_2.jsp"></jsp:include>



        <jsp:include page="header_bottom.jsp"></jsp:include>




        <div style="margin-top: -60px" class="single-product-area">
            <div class="zigzag-bottom"></div>
            <div class="container">
                <div class="row">
                    <jsp:include page="banner.jsp"></jsp:include>




                    <div style="padding-left: 30px" class="container">
                        <div style="padding-left: 30px" class="row">
                            <div style="padding-left: 30px;background-color: w" class="col-sm-4">
                                <div class="left-sidebar">
                                    <h2>Category</h2>
                                    <div class="panel-group category-products" id="accordian">
                                        <!--category-productsr-->
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a class="non-textdecorationct1" data-toggle="collapse" data-parent="#accordian" href="#sportswear">
                                                        <span class="badge pull-right"><i class="fa fa-plus"></i></span> Điện Thoại
                                                    </a>
                                                </h4>
                                            </div>
                                            <div id="sportswear" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <ul>
                                                        <%
                                         BrandGet brandGet2=new BrandGet();
                                         for(Brand brand3:brandGet2.getListBrand()){
                                         %>
                                                            <a class="non-textdecorationct1" href="productDienthoai.jsp?brandID=<%=brand3.getBrandID()%>">
                                                                <%=brand3.getBrandName()%>
                                                            </a><br>
                                                            <%} %>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>


                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a class="non-textdecorationct1" data-toggle="collapse" data-parent="#accordian" href="#womens">
                                                        <span class="badge pull-right"><i class="fa fa-plus"></i></span> Máy ảnh
                                                    </a>
                                                </h4>
                                            </div>
                                            <div id="womens" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <%
                                         BrandGet brandGet23=new BrandGet();
                                         for(Brand brand3:brandGet23.getListBrand()){
                                         %>
                                                        <a class="non-textdecorationct1" href="productMayanh.jsp?brandID=<%=brand3.getBrandID()%>">
                                                            <%=brand3.getBrandName()%>
                                                        </a><br>
                                                        <%} %>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a class="non-textdecorationct1" data-toggle="collapse" data-parent="#accordian" href="#tivi">
                                                        <span class="badge pull-right"><i class="fa fa-plus"></i></span> Ipad
                                                    </a>
                                                </h4>
                                            </div>
                                            <div id="tivi" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <%
                                         BrandGet brandGet22=new BrandGet();
                                         for(Brand brand3:brandGet22.getListBrand()){
                                         %>
                                                        <a class="non-textdecorationct1" href="productDienthoai.jsp?brandID=<%=brand3.getBrandID()%>">
                                                            <%=brand3.getBrandName()%>
                                                        </a><br>
                                                        <%} %>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a class="non-textdecorationct1" data-toggle="collapse" data-parent="#accordian" href="#tivi">
                                                        <span class="badge pull-right"><i class="fa fa-plus"></i></span> Tivi
                                                    </a>
                                                </h4>
                                            </div>
                                            <div id="tivi" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <ul>

                                                    </ul>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a class="non-textdecorationct1 href=" # ">Fashion</a></h4>
                                 </div>
                             </div>
                             <div class="panel panel-default ">
                                 <div class="panel-heading ">
                                     <h4 class="panel-title "><a class="non-textdecorationct1 " href="# ">Households</a></h4>
                                 </div>
                             </div>
                             <div class="panel panel-default ">
                                 <div class="panel-heading ">
                                     <h4 class="panel-title "><a class="non-textdecorationct1 " href="# ">Interiors</a></h4>
                                 </div>
                             </div>
                             
                         </div><!--/category-productsr-->
                     
                         <div class="brands_products "><!--brands_products-->
                             <h2>Tổng Sản Phẩm</h2>
                             <div class="brands-name ">
                                 <ul class="nav nav-pills nav-stacked ">
                                 
                                 <%
                                 ProductGet productGet2=new ProductGet();
                                 
                                 for(Brand br:brandGet.getListBrand()){
                                 %>
                                     <li><a href=" "> <span class="pull-right "><%=productGet2.coutBrand(br.getBrandID()) %></span><%=br.getBrandName() %></a></li>
                                     <%} %>
                                 </ul>
                             </div>
                         </div><!--/brands_products-->
                         
                         <hr style="border-color: red; ">
                         
                         
                     </div>
                     
                     
                 </div>
                 
                 
                 
                 
                 </div>
                 </div>
                 
                 
             
                     
                 
                 
                               
                 </div>
             </div>
         </div>
     </div>
 
 
     <div class="footer-top-area ">
         <div class="zigzag-bottom "></div>
         <div class="container ">
             <div class="row ">
                 <div class="col-md-3 col-sm-6 ">
                     <div class="footer-about-us ">
                         <h2>u<span>Stora</span></h2>
                         <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis sunt id doloribus vero quam laborum quas alias dolores blanditiis iusto consequatur, modi aliquid eveniet eligendi iure eaque ipsam iste, pariatur omnis sint! Suscipit, debitis, quisquam. Laborum commodi veritatis magni at?</p>
                         <div class="footer-social ">
                             <a href="# " target="_blank "><i class="fa fa-facebook "></i></a>
                             <a href="# " target="_blank "><i class="fa fa-twitter "></i></a>
                             <a href="# " target="_blank "><i class="fa fa-youtube "></i></a>
                             <a href="# " target="_blank "><i class="fa fa-linkedin "></i></a>
                         </div>
                     </div>
                 </div>
                 
                 <div class="col-md-3 col-sm-6 ">
                     <div class="footer-menu ">
                         <h2 class="footer-wid-title ">User Navigation </h2>
                         <ul>
                             <li><a href="# ">My account</a></li>
                             <li><a href="# ">Order history</a></li>
                             <li><a href="# ">Wishlist</a></li>
                             <li><a href="# ">Vendor contact</a></li>
                             <li><a href="# ">Front page</a></li>
                         </ul>                        
                     </div>
                 </div>
                 
                 <div class="col-md-3 col-sm-6 ">
                     <div class="footer-menu ">
                         <h2 class="footer-wid-title ">Categories</h2>
                         <ul>
                             <li><a href="# ">Mobile Phone</a></li>
                             <li><a href="# ">Home accesseries</a></li>
                             <li><a href="# ">LED TV</a></li>
                             <li><a href="# ">Computer</a></li>
                             <li><a href="# ">Gadets</a></li>
                         </ul>                        
                     </div>
                 </div>
                 
                 <div class="col-md-3 col-sm-6 ">
                     <div class="footer-newsletter ">
                         <h2 class="footer-wid-title ">Newsletter</h2>
                         <p>Sign up to our newsletter and get exclusive deals you wont find anywhere else straight to your inbox!</p>
                         <div class="newsletter-form ">
                             <form action="# ">
                                 <input type="email " placeholder="Type your email ">
                                 <input type="submit " value="Subscribe ">
                             </form>
                         </div>
                     </div>
                 </div>
             </div>
         </div>
     </div> <!-- End footer top area -->
     
     <div class="footer-bottom-area ">
         <div class="container ">
             <div class="row ">
                 <div class="col-md-8 ">
                     <div class="copyright ">
                         <p>&copy; 2015 uCommerce. All Rights Reserved. <a href="http://www.freshdesignweb.com " target="_blank ">freshDesignweb.com</a></p>
                     </div>
                 </div>
                 
                 <div class="col-md-4 ">
                     <div class="footer-card-icon ">
                         <i class="fa fa-cc-discover "></i>
                         <i class="fa fa-cc-mastercard "></i>
                         <i class="fa fa-cc-paypal "></i>
                         <i class="fa fa-cc-visa "></i>
                     </div>
                 </div>
             </div>
         </div>
     </div> <!-- End footer bottom area -->
    
     <!-- Latest jQuery form server -->
     <script src="https://code.jquery.com/jquery.min.js "></script>
     
     <!-- Bootstrap JS form CDN -->
     <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js "></script>
     
     <!-- jQuery sticky menu -->
     <script src="js/owl.carousel.min.js "></script>
     <script src="js/jquery.sticky.js "></script>
     
     <!-- jQuery easing -->
     <script src="js/jquery.easing.1.3.min.js "></script>
     
     <!-- Main Script -->
     <script src="js/main.js "></script>
   </body>
</html>