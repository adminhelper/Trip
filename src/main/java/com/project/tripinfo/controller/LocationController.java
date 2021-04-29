package com.project.tripinfo.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;


@Controller
@RequestMapping("/local")
public class LocationController {
    private final Logger logger = LoggerFactory.getLogger(this.getClass());

    @RequestMapping(value = "/hongdae")
    public String hongdae () {
        logger.info("=== 카테고리 : 홍대 ===");
        return "/local/hongdae";
    }

    //게시글 조회
    @RequestMapping(value = "/hongdae/detail")
    public String hongdae_Detail () throws Exception {
        return "/local/hondaeDetail";
    }

    @RequestMapping(value = "/check", method = {RequestMethod.GET,RequestMethod.POST})
    public String check (HttpServletRequest request, String[] data, Model model) throws Exception {
        Map<String, String> contentId = new HashMap<>();
        for(int i=0; i<data.length; i++){
        model.addAttribute("ct",contentId.put("tt",data[i]));
        }
        return  model
    }
}
