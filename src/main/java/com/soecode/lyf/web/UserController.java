package com.soecode.lyf.web;

import com.soecode.lyf.entity.Book;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
@RequestMapping("/user")
public class UserController {
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    private String login(HttpServletRequest request, HttpServletResponse response) {
        String userid=request.getParameter("userid");
        String password=request.getParameter("password");



//        System.out.println(userid+"----"+password);
        return "index";
    }
}
