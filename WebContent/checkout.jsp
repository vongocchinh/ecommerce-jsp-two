<!DOCTYPE html>
<!--
	ustora by freshdesignweb.com
	Twitter: https://twitter.com/freshdesignweb
	URL: https://www.freshdesignweb.com/ustora/
-->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="get.admin.ProductGet"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="model.admin.Cart"%>
<%@page import="model.admin.Product"%>
<%@page import="model.admin.user"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html >
  <head>
    <c:set var="root" value="${pageContext.request.contextPath}"/>
 	<link rel="icon" type="image/png" href="${root}/img/favicon.ico"/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Điện thoại smartphone giá rẻ có đầy đủ mọi mặt hàng...</title>
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

   
     <script type="text/javascript">
    
    function matchpass(){ 
    	var name=document.checkout.product_name.value;  
    	  
    	
    	if (name==null || name==""){  
    	  alert("Vui Long Nhập Tên !!!");  
    	  return false;  
    	}
    	
    	}  
    </script>
    <script>
function validateForm1() {
  var x = document.forms["myForm1"]["name"].value;
  var y = document.forms["myForm1"]["phone"].value;
  var a = document.forms["myForm1"]["address"].value;
  var b = document.forms["myForm1"]["payment"].value;
  if (x == "") {
    alert("Name must be filled out");
    return false;
  }
  if (y == "") {
	    alert("email must be filled out");
	    return false;
	  }
  if (a == "") {
	    alert("rating must be filled out");
	    return false;
	  }
  if (b == "") {
	    alert("message must be filled out");
	    return false;
	  }
}
</script>
  </head>
  <body>
    <% 
    ProductGet productGet=new ProductGet();
         user user=null;
           
            if(session.getAttribute("user") != null){
                user = (user) session.getAttribute("user");
            }
            if(user==null){
                response.sendRedirect("login.jsp");
            }
            Cart cart = (Cart) session.getAttribute("cart");
            if (cart == null) {
                cart = new Cart();
                session.setAttribute("cart", cart);
            }
            DecimalFormat formatter = new DecimalFormat("###,###,###");
            
            %>


        <jsp:include page="header_2.jsp"></jsp:include>



        <jsp:include page="header_bottom.jsp"></jsp:include>



        <div style="margin-top: -60px" class="single-product-area">

            <div class="zigzag-bottom"></div>
            <div class="container">
                <div class="row">
                    <jsp:include page="banner.jsp"></jsp:include>

                    <div style="background-color: white;padding: 10px 10px;" class="col-md-8">
                        <div class="product-content-right">
                            <div class="woocommerce">
                                <div class="woocommerce-info"><a class="showlogin" data-toggle="collapse" href="#login-form-wrap" aria-expanded="false" aria-controls="login-form-wrap">Click here to login</a>
                                </div>

                                <form id="login-form-wrap" class="login collapse" action="${root}/UserServlet" method="post">


                                    <p>If you have shopped with us before, please enter your details in the boxes below. If you are a new customer please proceed to the Billing &amp; Shipping section.</p>

                                    <p class="form-row form-row-first">
                                        <label for="username">Username or email <span class="required">*</span>
                                     </label>
                                        <input type="text" id="username" name="name" class="input-text">
                                    </p>
                                    <p class="form-row form-row-last">
                                        <label for="password">Password <span class="required">*</span>
                                     </label>
                                        <input type="password" id="password" name="pass" class="input-text">
                                    </p>
                                    <div class="clear"></div>


                                    <p class="form-row">
                                        <input type="submit" value="Login" name="login" class="button">
                                        <input type="hidden" value="login" name="command" class="button">
                                        <label class="inline" for="rememberme"><input type="checkbox" value="forever" id="rememberme" name="rememberme"> Remember me </label>
                                    </p>
                                    <p class="lost_password">
                                        <a href="#">Lost your password?</a>
                                    </p>

                                    <div class="clear"></div>
                                </form>

                                <div class="woocommerce-info"><a class="showcoupon" data-toggle="collapse" href="#coupon-collapse-wrap" aria-expanded="false" aria-controls="coupon-collapse-wrap">Click here to enter your code</a>
                                </div>

                                <form id="coupon-collapse-wrap" method="post" class="checkout_coupon collapse">

                                    <p class="form-row form-row-first">
                                        <input type="text" value="" id="coupon_code" placeholder="Coupon code" class="input-text" name="coupon_code">
                                    </p>

                                    <p class="form-row form-row-last">
                                        <input type="submit" value="Apply Coupon" name="apply_coupon" class="button">
                                    </p>

                                    <div class="clear"></div>
                                </form>
                                <!--  -->
                                <hr style="border-color: red;">
                                <%
             
                         
                     
             %>
                                    <form name="myForm1" onsubmit="return validateForm1()" action="CheckOutServlet" method="post" style="padding-left: 50px">
                                        <div id="customer_details" class="col2-set">
                                            <div class="">
                                                <div class="woocommerce-billing-fields">
                                                    <h3>Billing Details</h3>
                                                    <p id="billing_company_field" class="form-row form-row-first">
                                                        <label class="" for="billing_company">Name</label>
                                                        <input style="width:350px; " type="text" value="" placeholder="" id="billing_company" name="name" class="input-text ">
                                                    </p>
                                                    <p id="billing_company_field" class="form-row form-row-wide">
                                                        <label class="" for="billing_company">Phone</label>
                                                        <input style="width:350px; " type="text" value="" placeholder="" id="billing_company" name="phone" class="input-text ">
                                                    </p>
                                                    <p id="billing_company_field" class="form-row form-row-wide">
                                                        <label class="" for="billing_company">Address</label>
                                                        <input style="width:350px; " type="text" value="" placeholder="" id="billing_company" name="address" class="input-text ">
                                                    </p>
                                                    <p id="billing_company_field" class="form-row form-row-wide">
                                                        <label class="" for="billing_company">Gmail</label>
                                                        <input style="width:350px; " type="text" value="" placeholder="" id="billing_company" name="payment" class="input-text ">
                                                    </p>
                                                    <div class="clear"></div>

                                                </div>

                                            </div>
                                            <div id="order_review" style="position: relative;">
                                                <table class="shop_table">
                                                    <thead>
                                                        <tr>
                                                            <th class="product-name">Product</th>
                                                            <th class="product-total">Total</th>
                                                            
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr class="cart_item">
                                                            <td class="product-name">
                                                                Số Lượng<strong class="product-quantity"> </strong> </td>
                                                            <td class="Tổng Sản Phẩm">
                                                                <span class="amount"><%=cart.countItem() %></span> </td>
                                                        </tr>
                                                    </tbody>
                                                    <tbody>
                                                        <tr class="cart_item">
                                                            <td class="product-name">
                                                               Sản Phẩm <strong class="product-quantity"> </strong> </td>
                                                            <td class="Tổng Sản Phẩm">
                                                                <span class="amount"><%=cart.sp() %></span> </td>
                                                        </tr>
                                                    </tbody>
                                                    <tfoot>
                                                        <tr class="shipping">
                                                            <th>Phí Vận Chuyển</th>
                                                            <td>

                                                                Free Shipping
                                                                <input type="hidden" class="shipping_method" value="free_shipping" id="shipping_method_0" data-index="0" name="shipping_method[0]">
                                                            </td>
                                                        </tr>


                                                        <tr class="Tổng Tiền">
                                                            <th>Tổng Hóa Đơn</th>
                                                            <td><strong><span class="amount"><%=cart.totalCart() %></span></strong> </td>
                                                        </tr>

                                                    </tfoot>
                                                </table>
                                                <p style="color: red;">*Thanh Toan Khi Nhan Hang*</p>
                                            </div>
                                            <p class="form-row">
                                                <input type="submit" value="thanh toan" name="thanh toan" class="button">


                                            </p>
                                        </div>
                                    </form>
                                    <hr style="border-color: red;">
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