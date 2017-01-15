package demo;

import java.sql.*;

public class DB {
    private Connection conn;    //声明一个Connection对象
    private Statement pstm;       //声明一个PreparedStatement对象
    private String className="com.mysql.jdbc.Driver";         //数据库驱动路径
    private String url="jdbc:mysql://localhost:3306/db_hotel?user=root&password=root&useUnicode=true&characterEncoding=UTF-8";
    private ResultSet re;

    public void doPstm(String sql) throws ClassNotFoundException, IllegalAccessException, InstantiationException, SQLException {

        Class.forName(className).newInstance();
        conn=DriverManager.getConnection(url);
        pstm=conn.createStatement();
        re=pstm.executeQuery(sql);
    }

    public void doUpdate(String sql) throws SQLException, ClassNotFoundException, IllegalAccessException, InstantiationException {
        Class.forName(className).newInstance();
        conn=DriverManager.getConnection(url);
        pstm=conn.createStatement();
        pstm.executeUpdate(sql);
    }

    public ResultSet getRs() throws SQLException{
        return this.re;                      //返回查询结果ResultSet对象
    }
}
