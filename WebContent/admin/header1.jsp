<!DOCTYPE  html>

<%@page import="model.admin.userAdmin"%>
<%@page import="get.admin.CategoryGet"%>
<%@page import="get.admin.BrandGet"%>
<%@page import="get.admin.BillGet"%>
<%@page import="get.admin.ReviewGet"%>
<%@page import="get.admin.ProductGet"%>
<%@page import="get.admin.UserGet"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<html>

<head>
<c:set var="root" value="${pageContext.request.contextPath}"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    <meta charset='utf-8'>
     <link href="${root}/images/css_main.css" rel='stylesheet' type='text/css' />
    <title>Trang chủ admin...</title>
    <script src='https://kit.fontawesome.com/a076d05399.js'></script>
</head>
<%
        userAdmin useradmin = null;;
        if(session.getAttribute("userad") != null){
            useradmin = (userAdmin) session.getAttribute("userad");
        }else{
                response.sendRedirect("/baitap/admin/loginAdmin.jsp");
        }
        %>
       
<body>
  <div class="header-area">
        <div class="row">
            <div class="col-md-8">
                <div class="user-menu">
                    <ul>
                        <a class="logo"><img class="logo" src="${root}/images/images/logo (1).png"></a>
                        <li class="col2">
                            <a class="col2" href="TrangChu1.jsp"><img class="img-user" src="${root}/images/images/Home.png"> Trang Chủ</a>
                        </li>
                        <li class="col2">
                            <a class="col2" href="#"><img class="img-user" src="${root}/images/images/USER_MOI.png"> My Account</a>
                        </li>
                        <li class="col2">
                            <a class="col2" href="${root}/LogoutAdminServlet?command=logout"><img class="img-user" src="${root}/images/images/LOGOUT.png"> Logout</a>
                        </li>
                        <li class="col2">
                        	<a class="col2"> <%if(useradmin!=null){ %>
                    Chao Admin: <%=useradmin.getUserNameAdmin()%> <br>
                    <% } %></a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="container-left">
        <div class="banner-left">
            <div class="banner"><img class="banner-img" src="${root}/images/images/Home.png"> <a href="${root}/admin/index.jsp" class="banner">Trang Chủ</a></div>
            <div class="banner"> <img class="banner-img" src="${root}/images/images/USER_MOI.png"><a href="${root}/admin/manager_user.jsp"" class="banner">User</a></div>
            <div class="banner"><img class="banner-img" src="${root}/images/images/BRAND_Moi.png"> <a href="${root}/admin/manager_brand.jsp" class="banner">Brand</a></div>
            <div class="banner"><img class="banner-img" src="${root}/images/images/CATEGORY_moi.png"> <a href="${root}/admin/manager_category.jsp" class="banner">Category</a></div>
            <div class="banner"><img class="banner-img" src="${root}/images/images/PRODUCT.png"> <a href="${root}/admin/manager_product.jsp" class="banner">Product</a></div>
            <div class="banner"><img class="banner-img" src="${root}/images/images/CONATC.png"> <a href="${root}/admin/manager_contact.jsp" class="banner">Contact</a></div>
            <div class="banner"><img class="banner-img" src="${root}/images/images/BILL_Moi.png"> <a href="${root}/admin/manager_bill.jsp" class="banner">Bill detail</a></div>
            <div class="banner"><img class="banner-img" src="${root}/images/images/NEWSLETTER.png"> <a href="${root}/admin/manager_newsletter.jsp" class="banner">NewSletter</a></div>
            <div class="banner"><img class="banner-img" src="${root}/images/images/m_3.png"> <a href="${root}/admin/manager_chart.jsp" class="banner">Thóng kê</a></div>
        </div>
    </div>

</body>
</html>