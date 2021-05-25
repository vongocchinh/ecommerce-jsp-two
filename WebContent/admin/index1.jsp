<%@page import="model.admin.userAdmin"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Quan Ly Du Lieu</title>
 <c:set var="root" value="${pageContext.request.contextPath}"/>
<link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css' />
<link rel="icon" type="image/png" href="${root}/admin/imagesAdmin/favicon_1.ico"/>
</head>
 
<body>
		<%
            userAdmin useradmin = (userAdmin) session.getAttribute("userad");
		 if (useradmin == null) {
             response.sendRedirect("/baitap/admin/loginAdmin.jsp");
         }
        %>
         <jsp:include page="header.jsp"></jsp:include>

            <div id="wrapper">

            <jsp:include page="menu.jsp"></jsp:include>

            <jsp:include page="/admin/content.jsp"></jsp:include>

            <jsp:include page="footer.jsp"></jsp:include>

        </div>


</body>
</html>