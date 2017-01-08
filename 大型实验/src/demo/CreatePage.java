package demo;

public class CreatePage {
    private int CurrPage;    //当前页码
    private int CountPage;     //总页数
    private int Allr;     //总记录数
    private int PerR;      //每页显示记录数


    public CreatePage(){
        CurrPage=1;
        CountPage=1;
        Allr=0;
        PerR=3;
    }
    /*计算总页数*/
    public void setAllr(int Allr){
        this.Allr=Allr;
    }
    public void setCurrPage(int currPage){this.CurrPage=currPage;}
    public void setCountPage(int countPage){this.CountPage=countPage;}
    public void setPerR(int perR){this.PerR=perR;}


    public int getCurrPage(){return this.CurrPage;}
    public int getCountPage(){return this.CountPage;}
    public int getAllr(){return this.Allr;}
    public int getPerR(){return this.PerR;}

}
