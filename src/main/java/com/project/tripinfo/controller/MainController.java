package com.project.tripinfo.controller;

import com.project.tripinfo.service.MemberService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping(value = "/")
public class MainController {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @RequestMapping
    public String main(){
        return "index";
    }


    @RequestMapping(value = "/login")
    public String login() throws Exception {
        return "/login";
    }

    @RequestMapping(value = "/hongdae")
    public String hongdae(){
        return "/local/hongdae";
    }
}
