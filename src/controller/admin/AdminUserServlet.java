/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller.admin;

import java.io.IOException;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import get.admin.GetdateloginAdmin;
import get.admin.UserAdminGet;
import model.admin.DateLoginAdmin;
import model.admin.userAdmin;


@WebServlet("/AdminUserServlet")
public class AdminUserServlet extends HttpServlet {

  UserAdminGet userAdminGet = new UserAdminGet();


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
   
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	 request.setCharacterEncoding("utf-8");
         response.setCharacterEncoding("utf-8");
        String commandadmin = request.getParameter("commandadmin");
        String url = "";
        userAdmin userAdmin = new userAdmin();
        HttpSession session = request.getSession();
        GetdateloginAdmin getdateloginAdmin=new GetdateloginAdmin();
        switch (commandadmin) {
            
            case "login":
                userAdmin = userAdminGet.login2(request.getParameter("userAdmin"), (request.getParameter("passAdmin")));
               
              
                if (userAdmin != null) {
                	
                	session.setAttribute("userad", userAdmin);
                	try {
						getdateloginAdmin.insert(new DateLoginAdmin(new Timestamp(new Date().getTime())));
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
                	
                   
                   url = "/baitap/admin/index.jsp";
                   
                }
                
                else{
                	
                    request.setAttribute("error", "Loi Danh Nhap");
                    url = "/baitap/admin/loginAdmin.jsp";
                }
                break;
        }
        response.sendRedirect(url);
       
    }
    
  
    

 }

