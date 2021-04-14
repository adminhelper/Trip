package com.project.tripinfo.controller;

import com.project.tripinfo.repository.MemberMapper;
import com.project.tripinfo.service.MemberService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


@Controller
public class MemberController {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private MemberService memberService;

    @RequestMapping(value = "/hello")
    public String hello(){
        return "hello";
    }


    @RequestMapping(value = "/member")
    private void memberList(Model model){


        logger.info(String.valueOf(model.addAttribute("list", memberService.selectMemberByAll())));
    }

}
