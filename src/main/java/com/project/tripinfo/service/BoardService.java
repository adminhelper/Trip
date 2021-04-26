package com.project.tripinfo.service;

import com.project.tripinfo.model.Board;
import com.project.tripinfo.util.Criteria;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import java.util.List;
import java.util.Map;


public interface BoardService {


     List<Map<String, Object>> reviewBoardList (Criteria criteria) throws Exception;

     List<Board> ListPaging (Criteria criteria);

     void reviewBoardInsert (Board board, MultipartHttpServletRequest multipartHttpServletRequest) throws Exception;


     Board reviewBoardDetail (int board_no) throws Exception;

     void reviewBoardDelete (int board_no) throws Exception;

     void reviewBoardModify (Board board) throws Exception;

     int boardListCnt () throws Exception;
}