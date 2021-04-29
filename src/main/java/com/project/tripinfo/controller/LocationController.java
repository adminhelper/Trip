package com.project.tripinfo.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
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

    @RequestMapping(value = "/check", method = RequestMethod.POST)
    @ResponseBody
    public void check (@RequestParam(value = "data",required = false) List<String> data) throws Exception {
        System.out.println(data.toString());
    }
}
