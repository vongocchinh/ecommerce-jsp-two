
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
    <title>LOGIN_SHOP</title>
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

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
.container12 {
  float: left;
  width: 40%;
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
    	var name=document.login.name.value;  
    	var pass=document.login.pass.value;  
    	
    	if (name==null || name==""){  
    	  alert("Vui Long Nhập Tên !!!");  
    	  return false;  
    	}else if (pass==null || pass==""){  
    	  alert("Vui Long Nhập pass !!!");  
    	  return false;  
    	}
    	
    	}  
    </script>
</head>
<body>

    <jsp:include page="header_2.jsp"></jsp:include>
    <jsp:include page="header_bottom.jsp"></jsp:include>





    <div class="row">
        <div style=" padding-left: 100px; padding-top: 30px;padding-bottom: 30px" class="container12">
            <div class="fo">
                <h3>YOU LOGIN</h3>


                <form onsubmit="return matchpass()" name="login" action="UserServlet" method="post">
                    <%if(request.getParameter("error")!=null){%>
                        <div>
                            <p style="color:red">
                                <%=request.getParameter("error")%>
                            </p>
                        </div>
                        <% } %>
                            <div class="row1">
                                <div class="col-25">
                                    <label for="fname">Name</label>
                                </div>
                                <div class="col-75">
                                    <input style="width: 400px;" type="text" id="fname" name="name" placeholder="Your name..">
                                </div>
                            </div>
                            <div class="row1">
                                <div class="col-25">
                                    <label for="fname">Mật Khẩu</label>
                                </div>
                                <div class="col-75">
                                    <input style="width: 400px;" type="password" id="fname" name="pass" placeholder="Your Pass..">
                                </div>
                            </div>

                            <a class="news-letter " href="#">
                                <label style="padding-top: 10px" class="checkbox1"><input type="checkbox" name="checkbox" ><i> </i>Nhớ mật khẩu ?</label>
                            </a>


                            <div style="padding-top: 30px;padding-left: 50px" class="row1">
                                <input type="hidden" name="command" value="login">
                                <input style="width: 200px" type="submit" value="Đăng nhập">

                            </div>
                </form>
            </div>
        </div>


        <div style=" padding-left: 100px; padding-top: 130px;padding-bottom: 30px" class="container12">
            <h2 class="sidebar-title"><ins>Bạn Có Thể Quan Tâm ...</ins></h2>

            <div class="col-md-6 login-do animated wow fadeInRight" data-wow-delay=".5s">
                <p>Bạn chưa có tài khoản ?</p>
                <label class="hvr-sweep-to-top login-sub">
                  <a href="register.jsp" class="hvr-sweep-to-top">Đăng ký</a>
					
					</label>


            </div>

            <div class="clearfix"> </div>

        </div>
    </div>

    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>