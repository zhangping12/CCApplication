package demo.model;

import java.io.Serializable;


// 图书的模型类
public class Book implements Serializable {
    private Integer id;
    private String title;
    private String author;
    private String pubTime;
    private double price;
    private int amount;
    private String picture;

    public Book() {
    }

    public Book(Integer id, String title, String author, String pubTime, double price, int amount, String picture) {

        this.id = id;
        this.title = title;
        this.author = author;
        this.pubTime = pubTime;
        this.price = price;
        this.amount = amount;
        this.picture = picture;
    }

    public Integer getId() {

        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getPubTime() {
        return pubTime;
    }

    public void setPubTime(String pubTime) {
        this.pubTime = pubTime;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }
}