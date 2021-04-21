package com.project.tripinfo.controller;

import com.project.tripinfo.model.Member;
import com.project.tripinfo.service.MemberService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


@Controller
@RequestMapping(value = "/")
public class MainController {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private MemberService memberService;

    @RequestMapping
    public String main () {
        logger.info("=== 메인 화면 ====");
        return "index";
    }

    @RequestMapping(value = "/login")
    public String login (HttpSession session,Member member) throws Exception {
        memberService.loginCheck(member);
        session.setAttribute("member",member);
        logger.info("=== 로그인 ===");
        return "/login";
    }

    @RequestMapping(value = "/logout")
    public String logout (HttpSession session) throws Exception {
        logger.info("=== 로그아웃 ===");
        session.invalidate();
        return "redirect:/";
    }

    @RequestMapping(value = "/hongdae")
    public String hongdae () {
        logger.info("=== 카테고리 : 홍대 ===");
        return "/local/hongdae";
    }

    @RequestMapping(value = "/mypage")
    public String mypage (HttpServletRequest request) throws Exception {
        HttpSession session = request.getSession(true);
        return "/mypage";
    }
}
