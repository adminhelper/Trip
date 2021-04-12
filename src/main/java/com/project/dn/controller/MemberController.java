package com.project.dn.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
public class MemberController {

    @RequestMapping(value = "/hello")
    public String hello(){
        return "hello";
    }

}
