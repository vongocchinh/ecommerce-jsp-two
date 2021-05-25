
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

    <style type="text/css">
    
.container12 {
  float: left;
  width: 50%;
  padding: 10px;
  height: ; /* Should be removed. Only for demonstration */
}
.fo{

	border-style: solid;
	border-color: red;
	border-radius: 15px;
	border-width: 1px;
	padding: 20px 20px;
}
.row1{	
	padding-top: 15px;
}
    
    </style>
    <script type="text/javascript">
    
    function matchpass(){ 
    	var name=document.register.name.value;  
    	var web=document.register.web.value;  
    	var email=document.register.email.value;
    	var title=document.register.title.value;
    	var message=document.register.message.value;
    	if (name==null || name==""){  
    	  alert("Vui Long Nhập Tên !!!");  
    	  return false;  
    	}else if (email==null || email==""){  
    	  alert("Vui Long Nhập Email !!!");  
    	  return false;  
    	}else if (web==null || web==""){  
    	  alert("Vui Long Nhập web !!!");  
    	  return false;  
    	}else if(title==null || title==""){  
    	  alert("Vui Long Nhập web !!!");  
    	  return false;  
    	  } 
    	else if(message==null || message==""){  
      	  alert("Vui Long Nhập web !!!");  
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
            
            DecimalFormat formatter = new DecimalFormat("###,###,###");
           Product product=new Product();
           
        ProductGet productGet=new ProductGet();
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null) {
            cart = new Cart();
            session.setAttribute("cart", cart);
        }
        %>
        <jsp:include page="header_2.jsp"></jsp:include>


        <jsp:include page="header_bottom.jsp"></jsp:include>

        <hr style="border-color:blue; ;width: 1200px">
        <div class="row">
            <div style=" padding-left: 130px; padding-top: 30px;padding-bottom: 30px" class="container12">
                <div class="fo">
                    <h3>YOU CONTACT</h3>
                    <form onsubmit="return matchpass()" name="register" action="ContactServlet" method="post">
                        <div class="row1">
                            <div class="col-25">
                                <label for="fname">Name</label>
                            </div>
                            <div class="col-75">
                                <input style="width: 500px;" type="text" id="fname" name="name" placeholder="Your name..">
                            </div>
                        </div>
                        <div class="row1">
                            <div class="col-25">
                                <label for="fname">Website</label>
                            </div>
                            <div class="col-75">
                                <input style="width: 500px;" type="text" id="fname" name="web" placeholder="Your web..">
                            </div>
                        </div>
                        <div class="row1">
                            <div class="col-25">
                                <label for="fname">Email</label>
                            </div>
                            <div class="col-75">
                                <input style="width: 500px;" type="text" id="fname" name="email" placeholder="Your email..">
                            </div>
                        </div>
                        <div class="row1">
                            <div class="col-25">
                                <label for="lname">Tiêu Đề</label>
                            </div>
                            <div class="col-75">
                                <input style="width: 500px;" type="text" id="lname" name="title" placeholder="Your tiêu đề..">
                            </div>
                        </div>

                        <div class="row1">
                            <div class="col-25">
                                <label for="subject">Lời Nhắn</label>
                            </div>
                            <div class="col-75">
                                <textarea style="width: 500px;height: 150px;" id="subject" name="message" placeholder="Write something contact.." style="height:200px"></textarea>
                            </div>
                        </div>
                        <div style="padding-top: 30px;padding-left: 50px" class="row1">
                            <input type="hidden" name="command" value="insert">
                            <input style="width: 200px" type="submit" value="Gửi Liên Hệ">
                        </div>
                    </form>
                </div>
            </div>


            <div style=" padding-left: 130px; padding-top: 130px;padding-bottom: 30px" class="container12">
                <h2 class="sidebar-title"><ins>Bạn Có Thể Quan Tâm ...</ins></h2>

                <div class="single-sidebar" style="padding-top: 10px">


                    <%
                        for(Product product2:productGet.getRanDom_1sp()){
                        %>
                        <div class="thubmnail-recent">
                            <a href="single-product.jsp?productID=<%=product2.getProductID()%>"><img style="height: 300px;width: 285px" src="/baitap/imagesphone/<%=product2.getProductImage()%>" class="recent-thumb" alt=""></a>

                            <h2>
                                <a style="text-decoration: none;" href="single-product.jsp?productID=<%=product2.getProductID()%>">
                                    <%=product2.getProductName()%>
                                </a>
                            </h2>
                            <div class="product-sidebar-price">
                                <span class="price">  <ins style="color: red;"><%=formatter.format(product2.getProductPrice())%> VNĐ</ins></span><br>
                                <ins><p><em ><i style="color: blue;"> Giam: <%=product2.getGiam_Gia() %></i> <img style="width: 40px" class="hot" alt="" src="/baitap/imagesphone/1_hot.gif"> </em></p></ins><br><br>
                                <a style="text-decoration: none;" class="add-to-cart-link" href="single-product.jsp?productID=<%=product2.getProductID()%>">Xem Chi Tiết</a>
                            </div>

                        </div>
                        <%} %>

                </div>
                <hr style="border-color: blue;width: 450px">
            </div>
        </div>



        <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>