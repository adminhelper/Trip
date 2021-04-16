package com.project.tripinfo.controller;

import com.project.tripinfo.model.Member;
import com.project.tripinfo.service.MemberService;
import lombok.extern.slf4j.Slf4j;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


@Slf4j
@Controller
@RequestMapping("/member")
public class MemberController {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private MemberService memberService;

    @RequestMapping(value = "/register")
    public String register() throws Exception {
        return "register";
    }

    @PostMapping(value = "/join")
    @ResponseBody
    public int join(Member member) throws  Exception {
        int result = memberService.joinMember(member);
                return result;
    }




}
