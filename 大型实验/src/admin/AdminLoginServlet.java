package admin;

import demo.OpenDB;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;


public class AdminLoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        HttpSession session=request.getSession();
        String sRand= (String) session.getAttribute("rCode");
        String yanzhengma=request.getParameter("rCode");
        if(yanzhengma.equals(sRand)){
            OpenDB myDB=new OpenDB();
            String sql="Select * From tb_admin where username='"+username+"' and password='"+password+"'";
            try {
                boolean isLogin=myDB.LoginOn(sql);
                String location="";
                if(isLogin)
                {
                    location="/adminManager.jsp";
                }
                else {
                    location="/admin.html";
                }
                RequestDispatcher dispatcher=request.getRequestDispatcher(location);
                dispatcher.forward(request,response);
            } catch (SQLException e) {
                e.printStackTrace();
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            } catch (InstantiationException e) {
                e.printStackTrace();
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
        }else {
            RequestDispatcher dispatcher=request.getRequestDispatcher("/admin.html");
            dispatcher.forward(request,response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
