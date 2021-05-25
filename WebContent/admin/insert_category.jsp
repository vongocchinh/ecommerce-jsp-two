<%@page import="model.admin.userAdmin"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thêm danh mục</title>
 <c:set var="root" value="${pageContext.request.contextPath}"/>
       <!--  <c:set var="root" value="${pageContext.request.contextPath}"/> -->
        <link href="${root}/images/css_main.css" rel='stylesheet' type='text/css' />
<link rel="icon" type="image/png" href="${root}/admin/imagesAdmin/favicon.ico"/>
    </head>
    <body>
        <%
            String error = "";
            if(request.getParameter("error")!=null){
                error = (String) request.getParameter("error");
            }
           
            
       
        %>
        <jsp:include page="header1.jsp"></jsp:include>

            <div class="container-right-insert">
        <div class="container-insert">
                    <form action="/baitap/ManagerCategoryServlet" method="post">
                    <table class="table-insert">
                         <tr>
                            <td ><b class="name-insert">Mã loại</b></td>
                            <td><input type="hidden" class="sedang" name="maDanhMuc"><%=error%></td>
                        </tr>
                        <tr>
                            <td ><b class="name-insert">Tên danh mục</b></td>
                            <td><input type="text" class="sedang" name="tenDanhMuc"><%=error%></td>
                        </tr>
                        <tr><td></td><td>
                                <input type="hidden" name="command" value="insert">        
                                <input type="submit" class="button-insert" value="Lưu dữ liệu">
                                 <input type="reset" class="button-insert" value="Phục hồi">
                                
                            </td>
                        </tr>
                    </table>
                    </form>
                    </div>
                </div>
                <div class="clear"></div>

            <jsp:include page="footer1.jsp"></jsp:include>

        


    </body>
</html>

