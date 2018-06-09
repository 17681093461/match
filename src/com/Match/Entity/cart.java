package com.Match.Entity;

public class cart  {
    private int id;
    private String name;
    private int typeid;
    private String company;
    private double price;
    private int store;
    private String pic;
    private int status;
    private String text;
    private int clicknum;
    private int addtime;
    private Integer state;
    private String descr;

    public cart(String descr,int id, String name, int typeid, String company, double price, int store, String pic, int status, String text, int clicknum, int addtime, Integer state) {
        this.id = id;
        this.name = name;
        this.typeid = typeid;
        this.company = company;
        this.price = price;
        this.store = store;
        this.pic = pic;
        this.status = status;
        this.text = text;
        this.clicknum = clicknum;
        this.addtime = addtime;
        this.state = state;
        this.descr=descr;
    }

    public cart() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getTypeid() {
        return typeid;
    }

    public void setTypeid(int typeid) {
        this.typeid = typeid;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getStore() {
        return store;
    }

    public void setStore(int store) {
        this.store = store;
    }

    public String getPic() {
        return pic;
    }

    public void setPic(String pic) {
        this.pic = pic;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public int getClicknum() {
        return clicknum;
    }

    public void setClicknum(int clicknum) {
        this.clicknum = clicknum;
    }

    public int getAddtime() {
        return addtime;
    }

    public void setAddtime(int addtime) {
        this.addtime = addtime;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public String getDescr() {
        return descr;
    }

    public void setDescr(String descr) {
        this.descr = descr;
    }

    @Override
    public String toString() {
        return "cart{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", typeid=" + typeid +
                ", company='" + company + '\'' +
                ", price=" + price +
                ", store=" + store +
                ", pic='" + pic + '\'' +
                ", status=" + status +
                ", text='" + text + '\'' +
                ", clicknum=" + clicknum +
                ", addtime=" + addtime +
                ", state=" + state +
                '}';
    }
}
