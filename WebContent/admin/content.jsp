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
        <title>content</title>
        <link href="${root}/css/mos-style.css" rel='stylesheet' type='text/css' />
    </head>
</head>
<body>
		  <div id="rightContent">
            <h3  style="border-width: 1px;border-radius: 15px;border-style: solid;width: 140px;padding: 3px;background-color: #D7F1EC">Trang Quan Ly</h3>
            
            <div class="shortcutHome">
                <a href="${root}/admin/index.jsp"><img src="mos-css/Home.png"><br>Trang Chu</a>
            </div>
            <div class="shortcutHome">
                <a href="${root}/admin/manager_category.jsp"><img src="mos-css/Tag.png"><br>Danh Muc</a>
            </div>
            <div class="shortcutHome">
                <a href="${root}/admin/manager_brand.jsp"><img src="mos-css/T-Shirt.png"><br>Nhan Hieu</a>
            </div>
           
            <div class="shortcutHome">
                <a href="${root}/admin/manager_product.jsp"><img src="mos-css/Database.png"><br>San Pham</a>
            </div>
            <div class="shortcutHome">
                <a href="${root}/admin/manager_bill.jsp"><img src="mos-css/Shopping.png"><br>Hoa Đơn</a>
            </div>
            <div class="shortcutHome">
                <a href="${root}/admin/manager_user.jsp"><img src="mos-css/User.png"><br>Nguoi Dung</a>
            </div>
            <div class="shortcutHome">
                <a href="${root}/admin/manager_contact.jsp"><img src="mos-css/Mail3.png"><br>Contact</a>
            </div>
            <div class="shortcutHome">
                <a href="${root}/admin/manager_chart.jsp"><img src="mos-css/Chart.png"><br>Thong Ke</a>
            </div>
            <div class="shortcutHome">
                <a href="${root}/admin/manager_slider.jsp"><img src="mos-css/User.png"><br>Slider</a>
            </div>
             <div class="shortcutHome">
                <a href="${root}/admin/manager_QC.jsp"><img src="mos-css/User.png"><br>Quang cao</a>
            </div>

            <div class="clear"></div>

          
          
        </div>
        <div class="clear"></div>
</body>
</html>