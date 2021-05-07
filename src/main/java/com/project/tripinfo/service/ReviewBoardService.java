package com.project.tripinfo.service;

import com.project.tripinfo.model.ReviewBoard;
import com.project.tripinfo.util.Criteria;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import java.util.List;
import java.util.Map;


public interface ReviewBoardService {


     List<Map<String, Object>> reviewBoardList (Criteria criteria) throws Exception;

     void reviewBoardInsert (ReviewBoard reviewBoard, MultipartHttpServletRequest multipartHttpServletRequest) throws Exception;


     ReviewBoard reviewBoardDetail (int board_no) throws Exception;

     void reviewBoardDelete (int board_no) throws Exception;

     void reviewBoardModify (ReviewBoard reviewBoard) throws Exception;

     int boardListCnt (Criteria criteria) throws Exception;

    List<Map<String, Object>> reviewMainList () throws Exception;
}