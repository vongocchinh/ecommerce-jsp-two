<%@page import="model.admin.userAdmin"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Quan Ly Du Lieu</title>
 <c:set var="root" value="${pageContext.request.contextPath}"/>
<link href="${root} /css/mos-style.css"  rel='stylesheet' type='text/css'>
</head>
 <%
            userAdmin useradmin = (userAdmin) session.getAttribute("userAdmin");
            if (useradmin == null) {
                response.sendRedirect("/baitap/admin/loginAdmin.jsp");
            }
        %>
<body>
	
         <jsp:include page="header.jsp"></jsp:include>

            <div id="wrapper">

            <jsp:include page="menu.jsp"></jsp:include>

            <jsp:include page="content.jsp"></jsp:include>

            <jsp:include page="footer.jsp"></jsp:include>

        </div>


</body>
</html>