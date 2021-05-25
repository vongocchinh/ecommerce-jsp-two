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
    <title>Giỏ hàng điện thoại smartphone ,điện thoại giá rẻ có mặt tại thị trường việt nam...</title>
    
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
    <link rel="stylesheet" href="css/css_2.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/responsive.css">

   
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
        a.non-textdecoration5{
          background-color:#E6001B;
            text-decoration: none;
            color:white;
            padding: 2px 10px;
            width: 200px;
            border-radius: 15px;
            padding-left: 20px;
        }
        a.non-textdecoration{
        text-decoration: none;
        }
        img.wp-post-image:hover{

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
             
         
         
         %>
        <jsp:include page="header_2.jsp"></jsp:include>



        <jsp:include page="header_bottom.jsp"></jsp:include>



        <div style="margin-top: -60px" class="single-product-area">
            <div class="zigzag-bottom"></div>
            <div class="container">
                <div class="row">
                    <jsp:include page="banner.jsp"></jsp:include>

                    <div style="background-color: white;padding: 10px 10px; " class="col-md-8">
                        <div class="product-content-right">
                            <div class="woocommerce">
                                <form action="/baitap/CartServlet" method="post">
                                    <table cellspacing="0" class="shop_table cart">
                                        <thead>
                                            <tr>
                                                <th class="product-remove">&nbsp;</th>
                                                <th class="product-thumbnail">&nbsp;</th>
                                                <th class="product-name">Tên Sp</th>
                                                <th class="product-price">Giá</th>
                                                <th class="product-quantity">Số Lượng</th>
                                                <th class="product-subtotal">Tổng</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%for (Map.Entry<Integer, Item> list : cart.getCartItems().entrySet()) {%>
                                                <tr class="cart_item">
                                                    <td class="product-remove">
                                                        <a class="non-textdecoration" title="Remove this item" class="remove" href="CartServlet?command=remove&productID=<%=list.getValue().getProduct().getProductID()%>">×</a>
                                                    </td>

                                                    <td class="product-thumbnail">
                                                        <a class="non-textdecoration" href="single-product.jsp?productID=<%=list.getValue().getProduct().getProductID()%>"><img width="145" height="145" alt="poster_1_up" class="shop_thumbnail" src="/baitap/imagesphone/<%=list.getValue().getProduct().getProductImage()%>"></a>
                                                    </td>

                                                    <td class="product-name">
                                                        <a class="non-textdecoration" href="single-product.jsp?productID=<%=list.getValue().getProduct().getProductID()%>">
                                                            <%=list.getValue().getProduct().getProductName() %>
                                                        </a>
                                                    </td>

                                                    <td class="product-price">
                                                        <span class="amount"><%=formatter.format(list.getValue().getProduct().getProductPrice())%></span>
                                                    </td>

                                                    <td class="product-quantity">
                                                        <div class="quantity buttons_added">
                                                            <a class="non-textdecoration" style="color: red;" class="cart_quantity_up" href="CartServlet?command=subToCart&productID=<%=list.getValue().getProduct().getProductID()%>">-</a>
                                                            <input style="width: 30px;padding: 0px 8px;border-color: black;" type="" size="5" class="input-text qty text" title="Qty" value="<%=list.getValue().getQuantity()%>" min="1" step="1">
                                                            <input type="hidden" value="plus" name="command">
                                                            <a style="color: red;text-decoration: none;" class="cart_quantity_up" href="CartServlet?command=plus&productID=<%=list.getValue().getProduct().getProductID()%>"> + </a>
                                                        </div>
                                                    </td>


                                                    <td class="product-subtotal">
                                                        <span class="amount"><%=list.getValue().getQuantity()%></span>
                                                    </td>
                                                </tr>
                                                <%} %>

                                                    <tr>

                                                        <td class="actions" colspan="6">
                                                            <div class="coupon">
                                                                <label for="coupon_code">Coupon:</label>
                                                                <input type="text" placeholder="Coupon code" value="" id="coupon_code" class="input-text" name="coupon_code">
                                                                <input style="background-color: #F15A25;border-radius: 5px" type="submit" value="Apply Coupon" name="apply_coupon" class="button">
                                                            </div>
                                                            <input style="background-color: #F15A25;border-radius: 5px" type="submit" value="Update Cart" name="#" class="button">
                                                            <a style="background-color: #F15A25;padding: 13px 10px;margin-left: 15px;color:white;border-radius: 5px" class="non-textdecoration" type="sumbit" href="checkout.jsp">Đặt Hàng</a>

                                                        </td>
                                                    </tr>
                                        </tbody>
                                    </table>
                                </form>

                                <div class="cart-collaterals">


                                    <div class="cross-sells">
                                        <h2>You may be interested in...</h2>
                                        <ul class="products">
                                            <%for(Product product12:productGet33.getRandombrand_category1(Integer.parseInt(brand), Integer.parseInt(category))){ %>
                                                <li class="product">
                                                    <a class="non-textdecoration" href="single-product.jsp?productID=<%=product12.getProductID()%>">
                                             <img style="padding: 15px 15px;  height: 260px; width: 240px;"  alt="T_4_front" class="attachment-shop_catalog wp-post-image" src="/baitap/imagesphone/<%=product12.getProductImage()%>">
                                             <h3><%=product12.getProductName() %></h3>
                                             <span class="price"><span class="amount" style="color: red;">Gia: <%=formatter.format(product12.getProductPrice())%> VNĐ</span></span>
                                             <span class="price" style="color: blue;" ><del>Giam: <%=product12.getGiam_Gia() %></del></span>
                                         </a>

                                                    <a style="background-color: #23A9E7" class="add_to_cart_button" data-quantity="1" data-product_sku="" data-product_id="22" rel="nofollow" href="single-product.jsp?productID=<%=product12.getProductID()%>">Select options</a>
                                                </li>

                                                <%} %>
                                        </ul>
                                    </div>


                                    <div class="cart_totals ">
                                        <h2>Cart Totals</h2>

                                        <table cellspacing="0">
                                            <tbody>
                                                <tr class="cart-subtotal">
                                                    <th>Cart Subtotal</th>
                                                    <td><span class="amount">0 VND</span></td>
                                                </tr>

                                                <tr class="shipping">
                                                    <th>Shipping and Handling</th>
                                                    <td>Free Shipping</td>
                                                </tr>

                                                <tr class="order-total">
                                                    <th>Order Total</th>
                                                    <td><strong><span class="amount"><%=formatter.format(cart.totalCart())%>VND </span></strong> </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>

                                </form>
                                <form method="post" action="#" class="shipping_calculator">
                                    <h2 style="padding: 20px;"><a class="shipping-calculator-button" data-toggle="collapse" href="#calcalute-shipping-wrap" aria-expanded="false" aria-controls="calcalute-shipping-wrap">Calculate Shipping</a></h2>

                                    <section id="calcalute-shipping-wrap" class="shipping-calculator-form collapse">

                                        <p class="form-row form-row-wide">
                                            <select rel="calc_shipping_state" class="country_to_state" id="calc_shipping_country" name="calc_shipping_country">
                                     <option value="">Select a country…</option>
                                     <option value="AX">Åland Islands</option>
                                     <option value="AF">Afghanistan</option>
                                     <option value="AL">Albania</option>
                                     <option value="DZ">Algeria</option>
                                     <option value="AD">Andorra</option>
                                     <option value="AO">Angola</option>
                                     <option value="AI">Anguilla</option>
                                     <option value="AQ">Antarctica</option>
                                     <option value="AG">Antigua and Barbuda</option>
                                     <option value="AR">Argentina</option>
                                     <option value="AM">Armenia</option>
                                     <option value="AW">Aruba</option>
                                     <option value="AU">Australia</option>
                                     <option value="AT">Austria</option>
                                     <option value="AZ">Azerbaijan</option>
                                     <option value="BS">Bahamas</option>
                                     <option value="BH">Bahrain</option>
                                     <option value="BD">Bangladesh</option>
                                     <option value="BB">Barbados</option>
                                     <option value="BY">Belarus</option>
                                     <option value="PW">Belau</option>
                                     <option value="BE">Belgium</option>
                                     <option value="BZ">Belize</option>
                                     <option value="BJ">Benin</option>
                                     <option value="BM">Bermuda</option>
                                     <option value="BT">Bhutan</option>
                                     <option value="BO">Bolivia</option>
                                     <option value="BQ">Bonaire, Saint Eustatius and Saba</option>
                                     <option value="BA">Bosnia and Herzegovina</option>
                                     <option value="BW">Botswana</option>
                                     <option value="BV">Bouvet Island</option>
                                     <option value="BR">Brazil</option>
                                     <option value="IO">British Indian Ocean Territory</option>
                                     <option value="VG">British Virgin Islands</option>
                                     <option value="BN">Brunei</option>
                                     <option value="BG">Bulgaria</option>
                                     <option value="BF">Burkina Faso</option>
                                     <option value="BI">Burundi</option>
                                     <option value="KH">Cambodia</option>
                                     <option value="CM">Cameroon</option>
                                     <option value="CA">Canada</option>
                                     <option value="CV">Cape Verde</option>
                                     <option value="KY">Cayman Islands</option>
                                     <option value="CF">Central African Republic</option>
                                     <option value="TD">Chad</option>
                                     <option value="CL">Chile</option>
                                     <option value="CN">China</option>
                                     <option value="CX">Christmas Island</option>
                                     <option value="CC">Cocos (Keeling) Islands</option>
                                     <option value="CO">Colombia</option>
                                     <option value="KM">Comoros</option>
                                     <option value="CG">Congo (Brazzaville)</option>
                                     <option value="CD">Congo (Kinshasa)</option>
                                     <option value="CK">Cook Islands</option>
                                     <option value="CR">Costa Rica</option>
                                     <option value="HR">Croatia</option>
                                     <option value="CU">Cuba</option>
                                     <option value="CW">CuraÇao</option>
                                     <option value="CY">Cyprus</option>
                                     <option value="CZ">Czech Republic</option>
                                     <option value="DK">Denmark</option>
                                     <option value="DJ">Djibouti</option>
                                     <option value="DM">Dominica</option>
                                     <option value="DO">Dominican Republic</option>
                                     <option value="EC">Ecuador</option>
                                     <option value="EG">Egypt</option>
                                     <option value="SV">El Salvador</option>
                                     <option value="GQ">Equatorial Guinea</option>
                                     <option value="ER">Eritrea</option>
                                     <option value="EE">Estonia</option>
                                     <option value="ET">Ethiopia</option>
                                     <option value="FK">Falkland Islands</option>
                                     <option value="FO">Faroe Islands</option>
                                     <option value="FJ">Fiji</option>
                                     <option value="FI">Finland</option>
                                     <option value="FR">France</option>
                                     <option value="GF">French Guiana</option>
                                     <option value="PF">French Polynesia</option>
                                     <option value="TF">French Southern Territories</option>
                                     <option value="GA">Gabon</option>
                                     <option value="GM">Gambia</option>
                                     <option value="GE">Georgia</option>
                                     <option value="DE">Germany</option>
                                     <option value="GH">Ghana</option>
                                     <option value="GI">Gibraltar</option>
                                     <option value="GR">Greece</option>
                                     <option value="GL">Greenland</option>
                                     <option value="GD">Grenada</option>
                                     <option value="GP">Guadeloupe</option>
                                     <option value="GT">Guatemala</option>
                                     <option value="GG">Guernsey</option>
                                     <option value="GN">Guinea</option>
                                     <option value="GW">Guinea-Bissau</option>
                                     <option value="GY">Guyana</option>
                                     <option value="HT">Haiti</option>
                                     <option value="HM">Heard Island and McDonald Islands</option>
                                     <option value="HN">Honduras</option>
                                     <option value="HK">Hong Kong</option>
                                     <option value="HU">Hungary</option>
                                     <option value="IS">Iceland</option>
                                     <option value="IN">India</option>
                                     <option value="ID">Indonesia</option>
                                     <option value="IR">Iran</option>
                                     <option value="IQ">Iraq</option>
                                     <option value="IM">Isle of Man</option>
                                     <option value="IL">Israel</option>
                                     <option value="IT">Italy</option>
                                     <option value="CI">Ivory Coast</option>
                                     <option value="JM">Jamaica</option>
                                     <option value="JP">Japan</option>
                                     <option value="JE">Jersey</option>
                                     <option value="JO">Jordan</option>
                                     <option value="KZ">Kazakhstan</option>
                                     <option value="KE">Kenya</option>
                                     <option value="KI">Kiribati</option>
                                     <option value="KW">Kuwait</option>
                                     <option value="KG">Kyrgyzstan</option>
                                     <option value="LA">Laos</option>
                                     <option value="LV">Latvia</option>
                                     <option value="LB">Lebanon</option>
                                     <option value="LS">Lesotho</option>
                                     <option value="LR">Liberia</option>
                                     <option value="LY">Libya</option>
                                     <option value="LI">Liechtenstein</option>
                                     <option value="LT">Lithuania</option>
                                     <option value="LU">Luxembourg</option>
                                     <option value="MO">Macao S.A.R., China</option>
                                     <option value="MK">Macedonia</option>
                                     <option value="MG">Madagascar</option>
                                     <option value="MW">Malawi</option>
                                     <option value="MY">Malaysia</option>
                                     <option value="MV">Maldives</option>
                                     <option value="ML">Mali</option>
                                     <option value="MT">Malta</option>
                                     <option value="MH">Marshall Islands</option>
                                     <option value="MQ">Martinique</option>
                                     <option value="MR">Mauritania</option>
                                     <option value="MU">Mauritius</option>
                                     <option value="YT">Mayotte</option>
                                     <option value="MX">Mexico</option>
                                     <option value="FM">Micronesia</option>
                                     <option value="MD">Moldova</option>
                                     <option value="MC">Monaco</option>
                                     <option value="MN">Mongolia</option>
                                     <option value="ME">Montenegro</option>
                                     <option value="MS">Montserrat</option>
                                     <option value="MA">Morocco</option>
                                     <option value="MZ">Mozambique</option>
                                     <option value="MM">Myanmar</option>
                                     <option value="NA">Namibia</option>
                                     <option value="NR">Nauru</option>
                                     <option value="NP">Nepal</option>
                                     <option value="NL">Netherlands</option>
                                     <option value="AN">Netherlands Antilles</option>
                                     <option value="NC">New Caledonia</option>
                                     <option value="NZ">New Zealand</option>
                                     <option value="NI">Nicaragua</option>
                                     <option value="NE">Niger</option>
                                     <option value="NG">Nigeria</option>
                                     <option value="NU">Niue</option>
                                     <option value="NF">Norfolk Island</option>
                                     <option value="KP">North Korea</option>
                                     <option value="NO">Norway</option>
                                     <option value="OM">Oman</option>
                                     <option value="PK">Pakistan</option>
                                     <option value="PS">Palestinian Territory</option>
                                     <option value="PA">Panama</option>
                                     <option value="PG">Papua New Guinea</option>
                                     <option value="PY">Paraguay</option>
                                     <option value="PE">Peru</option>
                                     <option value="PH">Philippines</option>
                                     <option value="PN">Pitcairn</option>
                                     <option value="PL">Poland</option>
                                     <option value="PT">Portugal</option>
                                     <option value="QA">Qatar</option>
                                     <option value="IE">Republic of Ireland</option>
                                     <option value="RE">Reunion</option>
                                     <option value="RO">Romania</option>
                                     <option value="RU">Russia</option>
                                     <option value="RW">Rwanda</option>
                                     <option value="ST">São Tomé and Príncipe</option>
                                     <option value="BL">Saint Barthélemy</option>
                                     <option value="SH">Saint Helena</option>
                                     <option value="KN">Saint Kitts and Nevis</option>
                                     <option value="LC">Saint Lucia</option>
                                     <option value="SX">Saint Martin (Dutch part)</option>
                                     <option value="MF">Saint Martin (French part)</option>
                                     <option value="PM">Saint Pierre and Miquelon</option>
                                     <option value="VC">Saint Vincent and the Grenadines</option>
                                     <option value="SM">San Marino</option>
                                     <option value="SA">Saudi Arabia</option>
                                     <option value="SN">Senegal</option>
                                     <option value="RS">Serbia</option>
                                     <option value="SC">Seychelles</option>
                                     <option value="SL">Sierra Leone</option>
                                     <option value="SG">Singapore</option>
                                     <option value="SK">Slovakia</option>
                                     <option value="SI">Slovenia</option>
                                     <option value="SB">Solomon Islands</option>
                                     <option value="SO">Somalia</option>
                                     <option value="ZA">South Africa</option>
                                     <option value="GS">South Georgia/Sandwich Islands</option>
                                     <option value="KR">South Korea</option>
                                     <option value="SS">South Sudan</option>
                                     <option value="ES">Spain</option>
                                     <option value="LK">Sri Lanka</option>
                                     <option value="SD">Sudan</option>
                                     <option value="SR">Suriname</option>
                                     <option value="SJ">Svalbard and Jan Mayen</option>
                                     <option value="SZ">Swaziland</option>
                                     <option value="SE">Sweden</option>
                                     <option value="CH">Switzerland</option>
                                     <option value="SY">Syria</option>
                                     <option value="TW">Taiwan</option>
                                     <option value="TJ">Tajikistan</option>
                                     <option value="TZ">Tanzania</option>
                                     <option value="TH">Thailand</option>
                                     <option value="TL">Timor-Leste</option>
                                     <option value="TG">Togo</option>
                                     <option value="TK">Tokelau</option>
                                     <option value="TO">Tonga</option>
                                     <option value="TT">Trinidad and Tobago</option>
                                     <option value="TN">Tunisia</option>
                                     <option value="TR">Turkey</option>
                                     <option value="TM">Turkmenistan</option>
                                     <option value="TC">Turks and Caicos Islands</option>
                                     <option value="TV">Tuvalu</option>
                                     <option value="UG">Uganda</option>
                                     <option value="UA">Ukraine</option>
                                     <option value="AE">United Arab Emirates</option>
                                     <option selected="selected" value="GB">United Kingdom (UK)</option>
                                     <option value="US">United States (US)</option>
                                     <option value="UY">Uruguay</option>
                                     <option value="UZ">Uzbekistan</option>
                                     <option value="VU">Vanuatu</option>
                                     <option value="VA">Vatican</option>
                                     <option value="VE">Venezuela</option>
                                     <option value="VN">Vietnam</option>
                                     <option value="WF">Wallis and Futuna</option>
                                     <option value="EH">Western Sahara</option>
                                     <option value="WS">Western Samoa</option>
                                     <option value="YE">Yemen</option>
                                     <option value="ZM">Zambia</option>
                                     <option value="ZW">Zimbabwe</option>
                                 </select>
                                        </p>

                                        <p class="form-row form-row-wide"><input type="text" id="calc_shipping_state" name="calc_shipping_state" placeholder="State / county" value="" class="input-text"> </p>

                                        <p class="form-row form-row-wide"><input type="text" id="calc_shipping_postcode" name="calc_shipping_postcode" placeholder="Postcode / Zip" value="" class="input-text"></p>


                                        <p><button class="button" value="1" name="calc_shipping" type="submit">Update Totals</button></p>

                                    </section>
                                </form>


                            </div>
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
                                <form action="#">
                                    <input type="email" placeholder="Type your email">
                                    <input type="submit" value="Subscribe">
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End footer top area -->

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
        <!-- End footer bottom area -->

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