package com.project.tripinfo.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Slf4j
@Controller
@RequestMapping("/review")
public class ReviewBoardController {


    @RequestMapping(value = "/boardlist")
    public String reviewBoard_list(){
        return "review/reviewBoard";
    }

}
