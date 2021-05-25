<%@page import="get.admin.ProductGet"%>
<%@page import="model.admin.Product"%>
<%@page import="get.admin.BillDetailGet"%>
<%@page import="model.admin.BillDetail"%>
<%@page import="model.admin.user"%>
<%@page import="model.admin.userAdmin"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="get.admin.UserGet"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.admin.Bill"%>
<%@page import="get.admin.BillGet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản lý hóa đơn</title>
 <c:set var="root" value="${pageContext.request.contextPath}"/>
       <!--  <c:set var="root" value="${pageContext.request.contextPath}"/> -->
         <link href="${root}/images/css_main.css" rel='stylesheet' type='text/css' />
        <link rel="icon" type="image/png" href="${root}/admin/imagesAdmin/favicon.ico"/>
<style type="text/css">
	
</style>
<script>
function showForm(){
		document.getElementById("fgForm").style.display = "block";
	}
	
	function closeForm(){
		document.getElementById("fgForm").style.display = "none";
	}
</script>
    </head>
    <body>
        
        <%        
           BillGet billGet = new BillGet();
           ArrayList<Bill> listBill = billGet.getListBill();
           UserGet userGet = new UserGet();
           user user=new user();
           DecimalFormat formatter = new DecimalFormat("###,###,###");
        %>

        <jsp:include page="header1.jsp"></jsp:include>

            <div class="container-right">

                    
					 <div style="margin-bottom: 5px" class="lable-add">
            <a href="${root}/admin/insert_brand.jsp" class="add-lable">Thêm Sản Phẩm</a>
        </div>
                     <div class="table-container">

                   
                    
                   
                    <table id="table-one" class="table-one">

                  
                        <tr >
                            <th  width="20px">Mã hóa đơn</th>
                            <th >Tên Khách hàng</th>
                            <th >Tổng hóa đơn</th>
                            <th>Gmail</th>
                            <th >Địa chỉ giao hàng</th>
                            <th >Ngày mua</th>
                            <th >Name</th>
                            <th >Phone</th>
                            <th >user_id</th>
                           
                            <th >Tùy chọn</th>
                        </tr>
                        
                        <%for(Bill bill1 :billGet.getListBill()){
                   		user=userGet.getUser(bill1.getUserID());
                        %>
                        <tr >
                            <td  width="30px"><%=bill1.getBillID()%></td>
                            <td ><%=user.getUserName()%></td>
                            <td ><%=formatter.format(bill1.getTotal())%></td>
                            <td ><%=bill1.getPayment()%></td>
                            <td ><%=bill1.getAddress()%></td>
                            <td ><%=bill1.getDate()%></td>
                            <td ><%=bill1.getName() %></td>
                            <td ><%=bill1.getPhone() %></td>
                            <td ><%=bill1.getUserID() %></td>
                             
                                <center>
                                <td  width="75px">
                                   <a href="/baitap/admin/bill_detail.jsp?getBillID=<%=bill1.getBillID()%>">XEM</a> &nbsp;&nbsp; | &nbsp;&nbsp;
                                    <a href="/baitap/ManagerBill?command=delete&bill_id=<%=bill1.getBillID()%>">HUY</a>
                                     </td>
                                </center>
                           
                        </tr>
                        <%}%>

                    </table>
                    </div>
                    
                

			
			</div>
                
                <div class="clear"></div>
			
			
            <jsp:include page="footer1.jsp"></jsp:include>

       


    </body>
</html>