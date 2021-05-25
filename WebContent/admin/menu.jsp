<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<head>
 <c:set var="root" value="${pageContext.request.contextPath}"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>menu</title>
    </head>
</head>
<body>
		<div id="leftBar">
            <ul>
                <li><a href="${root}/admin/index.jsp">Trang chủ</a></li>
                <li><a href="${root}/admin/manager_category.jsp">Danh Muc</a></li>
                <li><a href="${root}/admin/manager_brand.jsp">Nhan Hieu</a></li>
                <li><a href="${root}/admin/manager_product.jsp">San Pham</a></li>
                <li><a href="${root}/admin/manager_bill.jsp">Hóa Đơn</a></li>
                 <li><a href="${root}/admin/manager_chart.jsp">Thống Kê</a></li>
                <li><a href="${root}/admin/manager_user.jsp">User</a></li>
                <li><a href="${root}/admin/manager_newsletter.jsp">Newsletter</a></li>
                <li><a href="${root}/admin/manager_contact.jsp">Contact</a></li>
                <li><a href="${root}/admin/manager_slider.jsp">Slider</a></li>
                 <li><a href="${root}/admin/manager_QC.jsp">Quang Cao</a></li>
               
            </ul>
        </div>
</body>
</html>