package com.project.tripinfo.controller;

import com.project.tripinfo.api.ApiExplorer;
import com.project.tripinfo.model.Member;
import com.project.tripinfo.service.MemberService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Map;


@Controller
@RequestMapping(value = "/")
public class MainController {

    @Autowired
    ApiExplorer apiExplorer;

    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private MemberService memberService;

    @RequestMapping
    public String main () {
        logger.info("=== 메인 화면 ====");

        return "index";
    }

    @RequestMapping("/api")
    @ResponseBody
    public Map<String, Object> api () throws Exception {
        return apiExplorer.OpenApi();
    }

    @RequestMapping(value = "/login")
    public String login (HttpSession session, Member member) throws Exception {
        memberService.loginCheck(member);
        session.setAttribute("member", member);
        logger.info("=== 로그인 ===");
        return "/login";
    }

    @RequestMapping(value = "/logout")
    public String logout (HttpSession session) throws Exception {
        logger.info("=== 로그아웃 ===");
        session.invalidate();
        return "redirect:/";
    }

    @RequestMapping(value = "/mypage")
    public String mypage (HttpServletRequest request) throws Exception {
        HttpSession session = request.getSession(true);
        return "/mypage";
    }
}
