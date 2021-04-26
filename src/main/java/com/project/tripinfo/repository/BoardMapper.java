package com.project.tripinfo.repository;

import com.project.tripinfo.model.Board;
import com.project.tripinfo.model.Review_File;
import com.project.tripinfo.util.Criteria;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import java.util.List;
import java.util.Map;

@Mapper
public interface BoardMapper {

//    int boardListCnt () throws Exception;

    //게시글 조회
    List<Map<String, Object>> reviewBoardList (Criteria criteria) throws Exception;

    //페이징처리 게시글 조회
    List<Board> ListPaging (Criteria criteria);

    //게시글 추가
    void reviewBoardInsert (Board board, MultipartHttpServletRequest multipartHttpServletRequest) throws Exception;

    void reviewBoardInsert (Board board) throws Exception;

    //파일 첨부
    void reviewBoardFileInsert (List<Review_File> list) throws Exception;

    //게시글 상세조회
    Board reviewBoardDetail (int board_no) throws Exception;

    //게시글 삭제
    void reviewBoardDelete (int board_no) throws Exception;

    //게시글 수정
    void reviewBoardModify (Board board) throws Exception;


}
