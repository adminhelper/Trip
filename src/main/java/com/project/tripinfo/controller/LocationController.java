package com.project.tripinfo.controller;

import com.project.tripinfo.model.Board;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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
    public String hongdae_Detail() throws Exception {
        return "/local/hondaeDetail";
    }
}
