package com.project.tripinfo.controller;

import com.project.tripinfo.model.Board;
import com.project.tripinfo.model.BoardLike;
import com.project.tripinfo.model.Member;
import com.project.tripinfo.service.BoardLikeService;
import com.project.tripinfo.service.BoardService;
import com.project.tripinfo.util.Criteria;
import com.project.tripinfo.util.Pagination;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

@Slf4j
@Controller
@RequestMapping("/board")
public class BoardController {

    @Autowired
    private BoardService boardService;

    @Autowired
    private BoardLikeService boardLikeService;

    @RequestMapping(value = "/review/boardlist")
    public String reviewBoard_list (Criteria criteria, Model model) throws Exception {
//        전체 글 개수
        int boardCnt = boardService.boardListCnt();
//        페이징 객체
        Pagination paging = new Pagination();
        paging.setCriteria(criteria);
        paging.setTotalCount(boardCnt);
        List<Map<String, Object>> list = boardService.reviewBoardList(criteria);
        model.addAttribute("review", list);
        model.addAttribute("paging", paging);
        return "review/reviewBoard";
    }

    //게시판 조회
    @RequestMapping(value = "/review/insert")
    public String reviewBoard_insert (Board board, MultipartHttpServletRequest multipartHttpServletRequest) throws Exception {
        boardService.reviewBoardInsert(board, multipartHttpServletRequest);
        return "redirect:/board/review/boardlist";
    }

    //게시글 등록
    @RequestMapping(value = "/review/insertboard")
    public String reviewBoard_insertForm () throws Exception {

        return "review/insertBoard";
    }

    //게시글 삭제
    @RequestMapping(value = "/review/delete")
    public String reviewBoard_Delete (@RequestParam("no") int board_no) throws Exception {
        boardService.reviewBoardDelete(board_no);
        return "redirect:/board/review/boardlist";
    }

    //게시글 조회
    @RequestMapping(value = "/review/detail")
    public String reviewBoard_Detail (@RequestParam("no") int board_no, Model model) throws Exception {
        Board board = boardService.reviewBoardDetail(board_no);
        model.addAttribute("board", board);

        BoardLike boardLike = new BoardLike();
        boardLike.setBoard_no(board_no);
        boardLike.setMember_id(board.getMember_id());
        int boardlike = boardLikeService.getBoardLike(boardLike);
        model.addAttribute("heart", boardlike);

        return "review/detailBoard";
    }

    //게시글 수정
    @RequestMapping(value = "/review/modifyform")
    public String reviewBoard_ModifyForm (@RequestParam("no") int board_no, Model model) throws Exception {
        Board board = boardService.reviewBoardDetail(board_no);
        model.addAttribute("board", board);

        return "review/modifyBoard";
    }

    //게시글 수정완료
    @RequestMapping(value = "/review/modify")
    public String reviewBoard_Modify (RedirectAttributes rtt, Board board) throws Exception {
        boardService.reviewBoardModify(board);
        rtt.addAttribute("no", board.getBoard_no());
        return "redirect:/board/review/detail";
    }

    @ResponseBody
    @RequestMapping(value = "/heart", method = RequestMethod.POST, produces = "application/json")
    public int heart (HttpServletRequest httpRequest) throws Exception {

        int heart = Integer.parseInt(httpRequest.getParameter("heart"));
        int boardId = Integer.parseInt(httpRequest.getParameter("boardId"));
        String userid = httpRequest.getSession().toString();

        System.out.println(userid);
        BoardLike boardLike = new BoardLike();

        boardLike.setBoard_no(boardId);
        boardLike.setMember_id(userid);

        System.out.println(heart);

        if (heart >= 1) {
            boardLikeService.deleteBoardLike(boardLike);
            heart = 0;
        } else {
            boardLikeService.insertBoardLike(boardLike);
            heart = 1;
        }

        return heart;

    }

}
