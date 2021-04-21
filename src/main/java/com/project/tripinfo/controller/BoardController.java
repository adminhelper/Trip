package com.project.tripinfo.controller;

import com.project.tripinfo.model.Board;
import com.project.tripinfo.service.BoardService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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

    //게시판 조회
    @RequestMapping(value = "/review/insert")
    public String reviewBoard_insert(Board board) throws  Exception{
        boardService.reviewBoardInset(board);
        return "redirect:/board/review/boardlist";
    }
    //게시글 등록
    @RequestMapping(value = "/review/insertboard")
    public String reviewBoard_insertForm() throws  Exception {
        return "review/insertBoard";
    }
    //게시글 삭제
    @RequestMapping(value = "/review/delete")
    public String reviewBoard_Delete(@RequestParam("no") int board_no) throws Exception {
        boardService.reviewBoardDelete(board_no);
        return "redirect:/board/review/boardlist";
    }
    //게시글 조회
    @RequestMapping(value = "/review/detail")
    public String reviewBoard_Detail(@RequestParam("no") int board_no, Model model) throws Exception {
        Board board = boardService.reviewBoardDetail(board_no);
        model.addAttribute("board", board);
        return "review/detailBoard";
    }
    //게시글 수정
    @RequestMapping(value = "/review/modifyform")
    public String reviewBoard_ModifyForm(@RequestParam("no") int board_no, Model model) throws Exception {
        Board board = boardService.reviewBoardDetail(board_no);
        model.addAttribute("board",board);
        return "review/modifyBoard";
    }
    //게시글 수정완료
    @RequestMapping(value = "/review/modify")
    public String reviewBoard_Modify(RedirectAttributes rtt, Board board) throws Exception {
        boardService.reviewBoardModify(board);
        rtt.addAttribute("no",board.getBoard_no());
        return "redirect:/board/review/detail";
    }

}
