package demo;

import java.sql.SQLException;
import java.util.Date;

public class Waiter {
    OpenDB mydb=new OpenDB();
    public boolean LoginIn(String username,String password) throws ClassNotFoundException, SQLException, InstantiationException, IllegalAccessException      //验证登录
    {
        if(username!=null&&password!=null) {

            boolean mark;
            String sql = "Select password from tb_waiter where username= '" + username + "' and password='" + password + "'";
            mark=mydb.LoginOn(sql);
            return mark;
        }
        else
        {
            return false;
        }
    }

    public int setCust(Customer customer) throws ClassNotFoundException, SQLException, InstantiationException, IllegalAccessException {
        String Cname=customer.getCname();
        String Cmycard=customer.getCmycard();
        String Ctel=customer.getCtel();
        String Csex=customer.getCsex();
        String Croom=customer.getCroom();
        Date Ctime=customer.getCtime();
        String sql = "INSERT INTO tb_cust VALUES('"+Cname+"','"+Cmycard+"','"+Ctel+"','"+Csex+"','"+Croom+"','"+Ctime+"')";
        return mydb.OpUpdate(sql);
    }

}
