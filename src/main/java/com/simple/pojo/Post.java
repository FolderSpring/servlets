package com.simple.pojo;


import java.util.Date;

public class Post {

    private Integer id;
    private Date date;
    private String postContent;

    public Post() {
    }

    public Post(Integer id, Date date, String postContent) {
        this.id = id;
        this.date = date;
        this.postContent = postContent;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getPostContent() {
        return postContent;
    }

    public void setPostContent(String postContent) {
        this.postContent = postContent;
    }

    @Override
    public String toString() {
        return "Post{" +
                "id=" + id +
                ", date=" + date +
                ", postContent='" + postContent + '\'' +
                '}';
    }
}
