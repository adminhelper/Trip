package com.project.tripinfo.controller;

import com.project.tripinfo.model.Board;
import com.project.tripinfo.service.BoardService;
import com.project.tripinfo.util.Criteria;
import com.project.tripinfo.util.Pagination;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;
import java.util.Map;

@Slf4j
@Controller
@RequestMapping("/board")
public class BoardController {

    @Autowired
    private BoardService boardService;

    @RequestMapping(value = "/review/boardlist")
    public String reviewBoard_list(Criteria criteria, Model model) throws Exception {

        //전체 글 개수
//        int boardCnt = boardService.boardListCnt();
        int boardCnt = 50;
        //페이징 객체
        Pagination paging = new Pagination();
        paging.setCriteria(criteria);
        paging.setTotalCount(boardCnt);
        List<Map<String,Object>> list = boardService.reviewBoardList(criteria);
        model.addAttribute("review", list);
        model.addAttribute("paging", paging);
        return "review/reviewBoard";
    }

    //게시판 조회
    @RequestMapping(value = "/review/insert")
    public String reviewBoard_insert(Board board, MultipartHttpServletRequest multipartHttpServletRequest) throws  Exception{
        boardService.reviewBoardInsert(board,multipartHttpServletRequest);
        log.info("컨트롤 ===== ", multipartHttpServletRequest.toString());
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
