package demo;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by Administrator on 2016/12/12/012.
 */
public class BookCust {
    private String book_name;
    private String book_tel;
    private String book_room;
    private Date book_time;
    /*DoString doString=new DoString();
    SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd");*/

    public BookCust(){

    }

    public void setBook_name(String name)
    {
        this.book_name=name;
    }
    public void setBook_tel(String tel)
    {
        this.book_tel=tel;
    }
    public void setBook_room(String room)
    {
        this.book_room=room;
    }
    public void setBook_time(Date time) throws ParseException {
        this.book_time=time;
    }

    public String getBook_name()
    {
        return this.book_name;
    }
    public String getBook_tel()
    {
        return this.book_tel;
    }
    public String getBook_room()
    {
        return this.book_room;
    }
    public Date getBook_time()
    {
        return this.book_time;
    }
}
