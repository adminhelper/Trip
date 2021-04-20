package com.project.tripinfo.controller;

import com.project.tripinfo.model.Board;
import com.project.tripinfo.repository.BoardMapper;
import com.project.tripinfo.service.BoardService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Slf4j
@Controller
@RequestMapping("/board")
public class BoardController {

    @Autowired
    private BoardService boardService;

    @RequestMapping(value = "/review/boardlist")
    public String reviewBoard_list(Model model) throws Exception {
        List<Board> list = boardService.reviewBoardList();
        model.addAttribute("review", list);
        return "review/reviewBoard";
    }

}
