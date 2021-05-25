package controller.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import get.admin.UserGet;
import model.admin.Cart;
import model.admin.user;



@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {

  UserGet userGet = new UserGet();
  Cart cart = new Cart();


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String command = request.getParameter("command");
        
        
        String url = "";
        user users = new user();
        HttpSession session = request.getSession();
        switch (command) {
            case "insert":

            	
                users.setUserID((int) new java.util.Date().getTime());
                users.setUserName(request.getParameter("name"));
                users.setUserEmail(request.getParameter("email"));    
                users.setUserPass(request.getParameter(("pass")));
                users.setUserRole(Boolean.valueOf(request.getParameter("checkbox")));
                
                users.setUserPhone(request.getParameter("phone"));       
                userGet.insertUser(users);             
               // session.setAttribute("user", users);
                url = "/baitap/login.jsp";   
                break;
              case "update":
                  int user_id = Integer.parseInt(request.getParameter("user_id"));
        String username = request.getParameter("name");
        String useremail = request.getParameter("email");
        String password = request.getParameter("pass");
        boolean role = false;
        String phone = request.getParameter("phone");
                       userGet.updateUser(new user(user_id, username, useremail, password, role, phone));
                        url = "/baitap/myaccount.jsp";
                        break; 
            case "logindeal":
                users = userGet.login(request.getParameter("name"), (request.getParameter("pass")));                
                if (users != null) {
                    session.setAttribute("user", users);
                    url = "/deal.jsp";        
                }
                break;
              
                  
            case "login":
                users = userGet.login(request.getParameter("name"), (request.getParameter("pass")));                
                if (users != null) {
                    session.setAttribute("user", users);
                    url = "/baitap/single-product.jsp";        
                }
                
                
                else{
                	String error="Loi Dang Nhap !!!";
                    request.setAttribute("error",error);
                    url = "/baitap/login.jsp";
                }
                break;
                
        }
        response.sendRedirect(url);
    

    }

}
