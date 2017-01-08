package webdemo;

import demo.Waiter;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;

public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request,HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        Waiter waiter=new Waiter();
        HttpSession session=request.getSession();
        boolean isLogin;
        try {
            isLogin = waiter.LoginIn(username,password);
            String location="";
            if(isLogin) {
                session.setAttribute("user",username);
                location="/waiter.jsp";
            }
            else {location="login.html";}
            RequestDispatcher dispatcher=request.getRequestDispatcher(location);
            dispatcher.forward(request,response);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (InstantiationException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request,HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        doPost(request,response);
    }
}
