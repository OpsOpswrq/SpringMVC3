package com.feng.controller;

import com.feng.pojo.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@RestController
public class HelloController1 {
    @RequestMapping("/t1")
    public String test1(){
        return "hello";
    }
    @RequestMapping("/a1")
    public void test2(String name, HttpServletResponse response) throws IOException {
        if ("feng".equals(name)) {
            response.getWriter().println("true");
        } else {
            response.getWriter().println("false");
        }
    }
    @RequestMapping("/a2")
    public List<User> test3(){
        List<User> users = new ArrayList<User>();
        users.add(new User(1,"feng",3));
        users.add(new User(2,"feng",3));
        users.add(new User(3,"feng",4));
        return users;
    }
    @RequestMapping("/a3")
    public String test4(String name,String pwd){
        String msg = "";
        if(name!=null){
            if(name.equals("feng")){
                msg = "ok";
            }else{
                msg = "用户名有误";
            }
        }
        if(pwd!=null){
            if(pwd.equals("123")){
                msg = "ok";
            }else{
                msg = "密码错误";
            }
        }
        return msg;
    }
}
