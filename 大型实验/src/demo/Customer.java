package demo;

import java.util.Date;

public class Customer {
    private String Cname;      //姓名
    private String Cmycard;    //身份证件号码
    private String Ctel;       //电话号码
    private String Csex;       //性别
    private String Croom;      //房间号
    private Date Ctime;     //入住时间

    public Customer(){}

    public Customer(String cname, String cmycard, String ctel, String csex, String croom, Date ctime) {
        this.Cname=cname;
        this.Cmycard=cmycard;
        this.Ctel=ctel;
        this.Csex=csex;
        this.Croom=croom;
        this.Ctime=ctime;
    }

    public void setCname(String name)
    {
        this.Cname=name;
    }
    public  void setCmycard(String mycard)
    {
        this.Cmycard=mycard;
    }
    public void setCtel(String tel)
    {
        this.Ctel=tel;
    }
    public void setCsex(String sex)
    {
        this.Csex=sex;
    }
    public  void setCroom(String room)
    {
        this.Croom=room;
    }
    public void setCtime(Date time)
    {
        this.Ctime=time;
    }


    public String getCname()
    {
        return this.Cname;
    }
    public String getCmycard()
    {
        return this.Cmycard;
    }
    public String getCtel()
    {
        return this.Ctel;
    }
    public String getCsex()
    {
        return this.Csex;
    }
    public String getCroom()
    {
        return this.Croom;
    }
    public Date getCtime()
    {
        return this.Ctime;
    }
}
