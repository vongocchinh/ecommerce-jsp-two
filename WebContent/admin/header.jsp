<%@page import="model.admin.userAdmin"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

 <link rel="stylesheet" href="css\bootstrap.min.css">
 <c:set var="root" value="${pageContext.request.contextPath}"/>
	<meta charset="utf-8">
 	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
        <link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css' />
</head>
<body>
		<%
        userAdmin useradmin = null;;
        if(session.getAttribute("userad") != null){
            useradmin = (userAdmin) session.getAttribute("userad");
        }else{
                response.sendRedirect("/baitap/admin/loginAdmin.jsp");
        }
        %>
       
        <div id="header" style="background-color: #F2F6F9;color: white;">
            <div class="">
                <div class="mosAdmin" style="color:black;font-size: 20px">
                     <%if(useradmin!=null){ %>
                    Chao Admin: <%=useradmin.getUserNameAdmin()%> <br>
                    <% } %>
                    <a href="" style="color:black ;">CHINH IPHONE SHOP</a> | <a style="color:black;" href="">Help</a> | <a style="color:black;" href="${root}/LogoutAdminServlet?command=logout">Đăng Xuất</a> | <a style="color:black ;" href="/baitap/admin/loginAdmin.jsp">Đăng Nhập</a>
                </div>
                <div class="clear"></div>
            </div>
        </div> 
</body>
</html>