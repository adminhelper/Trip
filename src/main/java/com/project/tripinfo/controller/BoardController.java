package com.project.tripinfo.controller;

import com.project.tripinfo.model.Board;
import com.project.tripinfo.service.BoardService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

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

    @RequestMapping(value = "/review/insertboard")
    public String reviewBoard_insertForm() throws  Exception {
        return "review/insertBoard";
    }
    @RequestMapping(value = "/review/insert")
    public String reviewBoard_insert(Board board) throws  Exception{
       boardService.reviewBoardInset(board);
        return "redirect:/board/review/boardlist";
    }
    @RequestMapping(value = "/review/detail")
    public String reviewBoard_Detail(@RequestParam("no") int board_no, Model model) throws Exception {
        Board board = boardService.reviewBoardDetail(board_no);
        model.addAttribute("board",board);
        log.info((board.toString()));
        return "review/detailBoard";
    }

}
