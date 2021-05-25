
<%@page import="get.admin.BillDetailGet"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="model.admin.BillDetail"%>
<%@page import="java.util.ArrayList"%>
<%@page import="get.admin.BillGet"%>
<%@page import="model.admin.Bill"%>
<%@page import="model.admin.Cart"%>
<%@page import="get.admin.UserGet"%>
<%@page import="model.admin.user"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="get.admin.ProductGet"%>
<%@page import="model.admin.Product"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html >

<head>
    <c:set var="root" value="${pageContext.request.contextPath}" />
    <link rel="icon" type="image/png" href="${root}/img/favicon.ico" />

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>CHINH_SHOP_MYACCOUNT</title>
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
    <link rel="stylesheet" href="css/css_2.css">

    <script type="text/javascript">
        function matchpasss() {
            var name = document.mys.name.value;
            var email = document.mys.email.value;
            var password = document.mys.pass.value;
            var phone = document.mys.phone.value;
            if (name == null || name == "") {
                alert("Vui Long Nhập Tên !!!");
                return false;
            } else if (email == null || email == "") {
                alert("Vui Long Nhập Email !!!");
                return false;
            } else if (phone == null || phone == "" && Number.isNaN(phone)) {
                alert("Vui Long Nhập Phone !!!");
                return false;
            } else if (password.length < 6) {
                alert("Password Không Hợp Lệ !!!");
                return false;
            }
            if (isNaN(phone)) {
                alert("Số Điện Thoai không Hợp Lệ !!!");
                return false;
            } else {
                return true;
            }

        }
    </script>
    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
    <script>
        $(document).ready(function() {
            $('input[type="password"]').after(' <input type="checkbox" class="check" /> Hiển thị mật khẩu');
            $('.check').change(function() {
                var prev = $(this).prev();
                var value = prev.val();
                var type = prev.attr('type');
                var name = prev.attr('name');
                var id = prev.attr('id');
                var klass = prev.attr('class');
                var new_type = (type == 'password') ? 'text' : 'password';
                prev.remove();
                $(this).before('<input type="' + new_type + '" value="' + value + '" name="' + name + '" value="' + value + '"id="' + id + '" class="' + klass + '" />');

            });
        })
    </script>
    <style type="text/css">
        th. {
            padding-left: 20px;
        }
    </style>
</head>

<body>
    <%
            user user=null;
       user user23=new user();
       UserGet userGet=new UserGet();
      if(session.getAttribute("user") != null){
          user = (user) session.getAttribute("user");
         
         user23=userGet.getUser(user.getUserID());
         
      }
      if(user23.getUserName()==null||user23.equals("")){
          response.sendRedirect("login.jsp");
      }
      
       
               DecimalFormat formatter = new DecimalFormat("###,###,###");
               
           ProductGet productGet=new ProductGet();
           Cart cart = (Cart) session.getAttribute("cart");
           if (cart == null) {
               cart = new Cart();
               session.setAttribute("cart", cart);
           }
   
       
           %>
        <%
           if(user23==null){
               response.sendRedirect("login.jsp");
           }
           %>
            <jsp:include page="header_2.jsp"></jsp:include>



            <jsp:include page="header_bottom.jsp"></jsp:include>



            <div class="row">
                <div style=" padding-left: 100px; padding-top: 30px;padding-bottom: 30px" class="container12">
                    <div class="fo">
                        <h3>Thông Tin Cá Nhân</h3>


                        <form name="mys" onsubmit="return matchpasss()" action="/baitap/UserServlet" method="post">

                            <div class="row1">
                                <div class="col-25">
                                    <label for="fname">Name</label>
                                    <i class="glyphicon glyphicon-user"></i>
                                    <span id="user-result"></span>
                                </div>
                                <div class="col-75">
                                    <input value="<%=user23.getUserName() %>" style="width: 400px;" type="text" id="name" name="name" placeholder="Your name..">

                                </div>
                            </div>
                            <div class="row1">
                                <div class="col-25">
                                    <label for="fname">Mail</label>
                                    <i class="glyphicon glyphicon-envelope"></i>
                                    <span id="user-result"></span>
                                </div>
                                <div class="col-75">
                                    <input value="<%=user23.getUserEmail() %>" style="width: 400px;" type="email" id="email" name="email" placeholder="Your email...">

                                </div>
                            </div>
                            <div class="row1">
                                <div class="col-25">
                                    <label for="fname">Phone</label>
                                    <i class="glyphicon glyphicon-phone"></i>
                                    <span id="user-result"></span>
                                </div>
                                <div class="col-75">
                                    <input value="<%=user23.getUserPhone() %>" style="width: 400px;" type="text" id="phone" name="phone" placeholder="Your phone...">

                                </div>
                            </div>
                            <div class="row1">
                                <div class="col-25">
                                    <label for="fname">Mật Khẩu</label>
                                    <i class="glyphicon glyphicon-lock"></i>
                                    <span></span>
                                </div>
                                <div class="col-75">
                                    <input value="<%=user23.getUserPass() %>" style="width: 400px;" class="password" type="text" id="password" name="pass" placeholder="Your Pass..">

                                </div>
                            </div>


                            <div style="padding-top: 30px;padding-left: 50px" class="row1">
                                <input type="hidden" name="command" value="update">
                                <input type="hidden" name="user_id" value="<%=user23.getUserID()%>">
                                <input style="width: 200px" type="submit" value="Update">



                            </div>
                        </form>
                    </div>
                </div>


                <div style=" padding-left: 50px; padding-top: ;padding-bottom: 30px" class="container12">

                    <table style="width: 1300px">
                        <p style="color: red;padding-left: 500px">Đây là danh sách lịch sử mua hàng của bạn.</p>


                        <tr>

                            <th class="data">STT</th>
                            <th class="data">Mã Hóa Đơn</th>
                            <th class="data " style="width: 150px">Tổng Hóa Đơn</th>
                            <th class="data" style="width: 200px">Email</th>
                            <th class="data" style="width: 100px">Phone</th>
                            <th class="data" style="width: 500px">Chi Tiết</th>
                            <th class="data" style="width: 150px">Địa Chỉ Nhận Hàng</th>
                            <th class="data" style="width:150px">Ngày Đặt Hàng</th>

                        </tr>
                        <%
          int user_id = user23.getUserID();
          
          SimpleDateFormat formatterdate = new SimpleDateFormat("dd-M-yyyy hh:mm:ss");
          BillGet billGet = new BillGet();
                 ArrayList<Bill> listBillByUser = billGet.getListBillByUser(user_id);
                 UserGet userGet1 = new UserGet();
                 ProductGet productGet1 = new ProductGet();
                 BillDetail billdetail = new BillDetail();
         BillDetailGet billDetailGet=new BillDetailGet();
              int count = 0;
              for(Bill bill1 : billGet.getListBillByUser(user_id))
          
         {
          count++;
          %>

                            <tr>
                                <th>
                                    <%=count%>
                                </th>
                                <td>
                                    <%=bill1.getBillID()%>
                                </td>
                                <td>
                                    <%=formatter.format(bill1.getTotal())%> VNĐ</td>
                                <td>
                                    <%=bill1.getPayment()%>
                                </td>
                                <td>
                                    <%=bill1.getPhone()%>
                                </td>
                                <td>
                                    <%for(BillDetail bl:billDetailGet.getProductNameByBillID(bill1.getBillID())) {%>
                                        <a style="text-decoration: none;" href="single-product.jsp?productID=<%=bl.getProductID()%>">
                                            <%=productGet1.getProduct(bl.getProductID()).getProductName() %>:
                                                <%=formatter.format(bl.getPrice())%>:
                                                    <%=bl.getQuantity() %>
                                        </a>;
                                        <%} %>
                                </td>
                                <td>
                                    <%=bill1.getAddress()%>
                                </td>
                                <td>
                                    <%=formatterdate.format(bill1.getDate())%>
                                </td>
                            </tr>

                            <% } %>
                    </table>

                </div>
                <div class="clearfix"> </div>


                <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>