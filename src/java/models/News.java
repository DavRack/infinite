package models;

import java.util.LinkedList;

public class News {

    public static LinkedList<News> news = new LinkedList<>();
    

    private String titular;
    private String body;

    public static LinkedList get_news() {
        return models.News.news;
    }

    public void set_titular(String text1) {
        this.titular = text1;
    }

    public String get_titular() {
        return this.titular;
    }

    public void set_body(String text2) {
        this.body = text2;
    }

    public String get_body() {
        return this.body;
    }

    public News(String titular, String body) {
        this.set_titular(titular);
        this.set_body(body);
        news.addFirst(this);
    }
}
