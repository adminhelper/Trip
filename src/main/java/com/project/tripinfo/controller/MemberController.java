package com.project.tripinfo.controller;

import com.project.tripinfo.model.Member;
import com.project.tripinfo.service.MemberService;
import lombok.extern.slf4j.Slf4j;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


@Slf4j
@Controller
@RequestMapping("/member")
public class MemberController {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @Autowired
    private MemberService memberService;

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String register (HttpSession session) throws Exception {
        session.invalidate();
        logger.info("=== 회원가입 ===");
        return "register";
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String memberRegister (Member member) throws Exception {
        int count = memberService.idCheck(member.getMember_id());

        if (count == 0) {
            memberService.memberRegister(member);
        }
        return "redirect:/";
    }

    @RequestMapping(value = "/idCheck", method = RequestMethod.POST)
    @ResponseBody
    public int idCheck (@RequestBody String member_id) throws Exception {
        int count = 0;
        count = memberService.idCheck(member_id);
        return count;
    }


    @PostMapping(value = "/loginCheck")
    @ResponseBody
    public int loginCheck (Member member, HttpServletRequest request) throws Exception {
        logger.info("=== 로그인 체크 ===");
        HttpSession session = request.getSession();

        if (member != null) {
            int result = memberService.loginCheck(member);
            member = memberService.selectCheck(member);
            session.setAttribute("member", member);
            return result;
        } else {
            return 0;
        }

    }


}
