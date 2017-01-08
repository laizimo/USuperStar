package demo;


import java.awt.*;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class OpenDB {
    DB mysqldb=new DB();

    public boolean LoginOn(String sql) throws SQLException, IllegalAccessException, InstantiationException, ClassNotFoundException {
        mysqldb.doPstm(sql);
        ResultSet re=mysqldb.getRs();
        boolean mark=(re==null||!re.next()?false:true);
        return mark;
    }

    public int OpUpdate(String sql) throws SQLException, IllegalAccessException, InstantiationException, ClassNotFoundException {
        int mark=-1;
        mysqldb.doUpdate(sql);
        return mark;
    }

    public Customer OpListShow(String sql) throws SQLException, IllegalAccessException, InstantiationException, ClassNotFoundException {
        Customer customer=null;
        mysqldb.doPstm(sql);
        ResultSet re=mysqldb.getRs();
        if(re!=null&&re.next())
        {
                customer=new Customer();
                customer.setCname(re.getString("cust_name"));
                customer.setCmycard(re.getNString("cust_mycard"));
                customer.setCtel(re.getNString("cust_tel"));
                customer.setCsex(re.getNString("cust_sex"));
                customer.setCroom(re.getNString("cust_room"));
                customer.setCtime(re.getDate("cust_time"));
                re.close();
        }
        return customer;
    }
}
