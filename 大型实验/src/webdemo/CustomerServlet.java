package webdemo;

import demo.Customer;
import demo.DB;
import demo.OpenDB;
import demo.Waiter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;


public class CustomerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out1=response.getWriter();
        String Cname=new String(request.getParameter("Cname").getBytes("ISO-8859-1"),"UTF-8");
        String Cmycard=request.getParameter("Cmycard");
        String Ctel=request.getParameter("Ctel");
        String Csex=new String(request.getParameter("Csex").getBytes("ISO-8859-1"),"UTF-8");
        String Croom=request.getParameter("Croom");
        String Ctime=request.getParameter("Ctime");
        DB mydb=new DB();
        int count=-1;
        try {
            String sql = "INSERT INTO tb_cust VALUES('"+Cname+"','"+Cmycard+"','"+Csex+"','"+Ctel+"','"+Croom+"','"+Ctime+"')";
            mydb.doUpdate(sql);
            sql="Update tb_room set isCheck=true where room_id='"+Croom+"'";
            mydb.doUpdate(sql);
            RequestDispatcher re=request.getRequestDispatcher("/success_reg.jsp");
            re.forward(request,response);
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InstantiationException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } /*catch (ParseException e) {
            e.printStackTrace();
        }*/
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
