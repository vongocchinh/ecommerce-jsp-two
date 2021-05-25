
<%@page import="java.text.DecimalFormat"%>
<%@page import="get.admin.ProductGet"%>
<%@page import="model.admin.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html >

<head>
    <c:set var="root" value="${pageContext.request.contextPath}" />
    <link rel="icon" type="image/png" href="${root}/img/favicon.ico" />
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>CHINH_SHOP_DANGKI</title>
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


    <style type="text/css">
        .container12 {
            float: left;
            width: 40%;
            padding: 10px;
            height: ;
            /* Should be removed. Only for demonstration */
        }
        
        .fo {
            border-style: solid;
            border-color: red;
            border-radius: 15px;
            border-width: 1px;
            padding: 20px 20px;
        }
        
        .row1 {
            padding-top: 15px;
        }
    </style>
    <script type="text/javascript">
        function matchpass() {
            var name = document.register.name.value;
            var password = document.register.password.value;
            var email = document.register.email.value;
            var phone = document.register.phone.value;
            var password_2 = document.register.password_2.value;
            if (name == null || name == "") {
                alert("Vui Long Nhập Tên !!!");
                return false;
            } else if (email == null || email == "") {
                alert("Vui Long Nhập Email !!!");
                return false;
            } else if (phone == null || phone == "" && !Number.isNaN(phone)) {
                alert("Vui Long Nhập Phone !!!");
                return false;
            } else if (password.length < 6) {
                alert("Password Không Hợp Lệ !!!");
                return false;
            } else if (password != password_2) {
                alert("Mật Khẩu Không Khớp !!!");
                return false;
            }
        }
    </script>
</head>

<body>
    <jsp:include page="header_2.jsp"></jsp:include>
    <jsp:include page="header_bottom.jsp"></jsp:include>

    <div class="product-big-title-area">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="product-bit-title text-center">
                        <h2>Đăng Kí </h2>
                    </div>
                </div>
            </div>
        </div>
    </div>





    <div class="row">
        <div style=" padding-left: 100px; padding-top: 30px;padding-bottom: 30px" class="container12">
            <div class="fo">
                <h3>Đăng Kí</h3>


                <form onsubmit="return matchpass()" action="UserServlet" method="post" name="register">

                    <div class="row1">
                        <div class="col-25">
                            <label for="fname">Name</label>
                            <i class="glyphicon glyphicon-user"></i>
                            <span id="user-result"></span>
                        </div>
                        <div class="col-75">
                            <input style="width: 400px;" type="text" id="name" name="name" placeholder="Your name..">

                        </div>
                    </div>
                    <div class="row1">
                        <div class="col-25">
                            <label for="fname">Mail</label>
                            <i class="glyphicon glyphicon-envelope"></i>
                            <span id="user-result"></span>
                        </div>
                        <div class="col-75">
                            <input style="width: 400px;" type="email" id="email" name="email" placeholder="Your name..">

                        </div>
                    </div>
                    <div class="row1">
                        <div class="col-25">
                            <label for="fname">Phone</label>
                            <i class="glyphicon glyphicon-phone"></i>
                            <span id="user-result"></span>
                        </div>
                        <div class="col-75">
                            <input style="width: 400px;" type="text" id="phone" name="phone" placeholder="Your name..">

                        </div>
                    </div>
                    <div class="row1">
                        <div class="col-25">
                            <label for="fname">Mật Khẩu</label>
                            <i class="glyphicon glyphicon-lock"></i>
                            <span></span>
                        </div>
                        <div class="col-75">
                            <input style="width: 400px;" type="password" id="password" name="pass" placeholder="Your Pass..">

                        </div>
                    </div>
                    <div class="row1">
                        <div class="col-25">
                            <label for="fname">Xác Nhận Mật Khẩu</label>
                            <i class="glyphicon glyphicon-lock"></i>
                            <span></span>
                        </div>
                        <div class="col-75">
                            <input style="width: 400px;" type="password" id="password2" name="password_2" placeholder="Your name..">

                        </div>
                    </div>

                    <a class="news-letter " href="#">
                        <label style="padding-top: 10px" class="checkbox1"><input id="myCheck" value="true" type="checkbox" name="checkbox" ><i> </i>Đồng ý Điều Khoản Của Shop ?</label>
                    </a>


                    <div style="padding-top: 30px;padding-left: 50px" class="row1">
                        <input type="hidden" name="command" value="insert">
                        <input style="width: 200px" type="submit" value="Đăng Kí">

                    </div>
                </form>
            </div>
        </div>


        <div style=" padding-left: 100px; padding-top: 130px;padding-bottom: 30px" class="container12">
            <h2 class="sidebar-title"><ins>Bạn Có Thể Quan Tâm ...</ins></h2>

            <div class="col-md-6 login-do animated wow fadeInRight" data-wow-delay=".5s">
                <p>Bạn chưa có tài khoản ?</p>
                <label class="hvr-sweep-to-top login-sub">
                     <a href="login.jsp" class="hvr-sweep-to-top">Đăng Nhập</a>
                       
                       </label>


            </div>

            <div class="clearfix"> </div>

        </div>
    </div>



    <script>
        function myFunction() {
            document.getElementById("myCheck").value = "newCheckboxValue";
            document.getElementById("demo").innerHTML = "The value of the value attribute was changed. Try to submit the form again.";
        }
    </script>

    <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>