package com.project.tripinfo.controller;

import com.project.tripinfo.model.BoardLike;
import com.project.tripinfo.model.Member;
import com.project.tripinfo.model.ReviewBoard;
import com.project.tripinfo.service.ReviewBoardLikeService;
import com.project.tripinfo.service.ReviewBoardService;
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
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Slf4j
@Controller
@RequestMapping("/board")
public class ReviewBoardController {

    @Autowired
    private ReviewBoardService reviewBoardService;

    @Autowired
    private ReviewBoardLikeService reviewBoardLikeService;

    @RequestMapping(value = "/review/boardlist")
    public String reviewBoard_list (Criteria criteria, Model model) throws Exception {

        // 전체 글 개수
        if (criteria.getKeyword() == null && criteria.getSearchType() == null) {
            String t = "";
            criteria.setKeyword(t);
            criteria.setSearchType(t);
        }
        int boardCnt = reviewBoardService.boardListCnt(criteria);

        // 페이징 객체
        Pagination paging = new Pagination();
        paging.setCriteria(criteria);
        paging.setTotalCount(boardCnt);

        List<Map<String, Object>> list = reviewBoardService.reviewBoardList(criteria);
        model.addAttribute("review", list);
        model.addAttribute("paging", paging);

        return "review/reviewBoard";
    }

    //게시판 조회
    @RequestMapping(value = "/review/insert")
    public String reviewBoard_insert (ReviewBoard reviewBoard, MultipartHttpServletRequest multipartHttpServletRequest) throws Exception {
        reviewBoardService.reviewBoardInsert(reviewBoard, multipartHttpServletRequest);
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
        reviewBoardService.reviewBoardDelete(board_no);
        return "redirect:/board/review/boardlist";
    }

    //게시글 조회
    @RequestMapping(value = "/review/detail")
    public String reviewBoard_Detail (@RequestParam("no") int board_no, Model model) throws Exception {
        ReviewBoard reviewBoard = reviewBoardService.reviewBoardDetail(board_no);
        model.addAttribute("board", reviewBoard);

        BoardLike boardLike = new BoardLike();
        boardLike.setBoard_no(board_no);
        boardLike.setMember_id(reviewBoard.getMember_id());
        int boardlike = reviewBoardLikeService.getBoardLike(boardLike);
        model.addAttribute("heart", boardlike);

        return "review/detailBoard";
    }

    //게시글 수정
    @RequestMapping(value = "/review/modifyform")
    public String reviewBoard_ModifyForm (@RequestParam("no") int board_no, Model model) throws Exception {
        ReviewBoard reviewBoard = reviewBoardService.reviewBoardDetail(board_no);
        model.addAttribute("board", reviewBoard);

        return "review/modifyBoard";
    }

    //게시글 수정완료
    @RequestMapping(value = "/review/modify")
    public String reviewBoard_Modify (RedirectAttributes rtt, ReviewBoard reviewBoard) throws Exception {
        reviewBoardService.reviewBoardModify(reviewBoard);
        rtt.addAttribute("no", reviewBoard.getBoard_no());
        return "redirect:/board/review/detail";
    }

    @ResponseBody
    @RequestMapping(value = "/heart", method = RequestMethod.POST, produces = "application/json")
    public int heart (HttpServletRequest httpRequest) throws Exception {

        int heart = Integer.parseInt(httpRequest.getParameter("heart"));
        int boardId = Integer.parseInt(httpRequest.getParameter("boardId"));
        HttpSession session = httpRequest.getSession();
        Member member = (Member) session.getAttribute("member");
        String userid = member.getMember_id();

        BoardLike boardLike = new BoardLike();
        boardLike.setBoard_no(boardId);
        boardLike.setMember_id(userid);

        if (heart >= 1) {
            reviewBoardLikeService.deleteBoardLike(boardLike);
            heart = 0;
        } else {
            reviewBoardLikeService.insertBoardLike(boardLike);
            heart = 1;
        }
        return heart;
    }
}
