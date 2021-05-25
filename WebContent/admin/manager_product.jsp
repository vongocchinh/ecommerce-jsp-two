
<%@page import="model.admin.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="get.admin.ProductGet"%>
<%@page import="get.admin.BrandGet"%>
<%@page import="get.admin.CategoryGet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
     <c:set var="root" value="${pageContext.request.contextPath}"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản Lý Sản Phẩm</title>

        <link href="${root}/images/css_main.css" rel='stylesheet' type='text/css' />
        <link rel="icon" type="image/png" href="${root}/admin/imagesAdmin/favicon.ico"/>
<style type="text/css">
    td.data {
	color:  black;
}
		table.data {
	color: black;
}
		th.data {
	color: green;
}
    </style>
    </head>
    <body>
        <jsp:include page="header1.jsp"></jsp:include>

            

<div class="container-right">

                    
					 <div style="margin-bottom: 5px" class="lable-add">
            <a href="/baitap/admin/insert_product.jsp" class="add-lable">Thêm Sản Phẩm</a>
        </div>
                     <div class="table-container">

                   
                    
                   
                    <table id="table-one" class="table-one">

                    
                        <tr class="data">
                            <th class="data" width="30px">STT</th>
                            <th class="data">Mã sản phẩm</th>
                            <th class="data">Mã loại</th>
                            <th class="data">Tên sản phẩm</th>
                            <th class="data">Thương hiệu</th>
                            <th class="data">Giá</th>
                            <th class="data">Giam Gia</th>
                            
							 <th class="data" width="100px">Hình đại diện</th>
                            <th class="data" width="100px">Hình sau</th>
                             <th class="data">Mô tả</th>
                           
                            <th >Camera Sau</th>
                            <th >Camera Truoc</th>
                            <th >He Dieu Hanh</th>
                            
                            <th >Bo Nho</th>
                            <th >Ram</th>
                            
                           
                            <th class="" width="105px">Tùy chọn</th>
                        </tr>
                    <%
                    CategoryGet categoryGet14 = new CategoryGet();
                    BrandGet brandGet = new BrandGet();
                    ProductGet productGet1411 = new ProductGet();
        DecimalFormat formatter = new DecimalFormat("###,###,###");
                    
                        int count = 0;
                        for (Product product : productGet1411.getListProduct()) {
                            count++;

                    %>
                    <tr class="data">
                        <td class="data" width="30px"><%=count%></td>
                        <td class="data"><%=product.getProductID()%></td>
                        <td class="data"><%=categoryGet14.getCategory(product.getCategoryID()).getCategoryName()%></td>
                        <td class="data"><%=product.getProductName()%></td>
                        <td class="data"><%=brandGet.getBrand(product.getBrandID()).getBrandName()%></td>
                        <td class="data"><%=formatter.format(product.getProductPrice())%></td>
                        <td class="data"><%=product.getGiam_Gia()%></td>
                        
                        
                        <td class="data"><img width="85" height="100" class="hinhql" src="/baitap/imagesphone/<%=product.getProductImage()%>"/></td>
                        <td class="data"><img width="85" height="100" style="padding: center"; class="hinhql" src="/baitap/imagesphone/<%=product.getProductImagenext()%>"/></td>
                       
                        <td class="data"><a href="/baitap/admin/product_description.jsp?product_id=<%=product.getProductID()%>">Xem chi tiết</a></td>
						<td class="data"><%=product.getCamera_Sau() %></td>
						<td class="data"><%=product.getCamera_Truoc() %></td>
						
						<td class="data"><%=product.getHe_Dieu_Hanh() %></td>
						
						<td class="data"><%=product.getBo_Nho() %></td>
						<td class="data"><%=product.getRam() %></td>
						
						
                        <td class="" width="105px">
                    <center>
                        <a href="${root}/admin/update_product.jsp?command=update&product_id=<%=product.getProductID()%>">Sửa</a>&nbsp;| &nbsp;
                        <a href="/baitap/ManagerProductServlet?command=delete&product_id=<%=product.getProductID()%>">Xóa</a>
                    </center>
                    </td>
                    </tr>
                    <% }%>
                </table>
                </div>
            </div>
            <div class="clear"></div>

            <jsp:include page="footer1.jsp"></jsp:include>

       

    </body>
</html>
<!-- -->
 <!-- <td class="data"></td>
                         -->
