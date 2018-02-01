package com.simple;

import com.simple.pojo.Post;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;

public class PassVariablesJstlServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        this.process(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        this.process(request, response);
    }

    private void process(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        ArrayList<Post> posts = new ArrayList<Post>();
        posts.add(new Post(1, new Date(14,01, 2006), "Post content 1"));
        posts.add(new Post(2, new Date(4,7, 2016), "Post content 2"));
        posts.add(new Post(3, new Date(), "Post content 3"));


        request.setAttribute("name", "SomeName");
        request.setAttribute("posts", posts);
        request.getRequestDispatcher("passVariablesJstl.jsp").forward(request, response);
    }
}
