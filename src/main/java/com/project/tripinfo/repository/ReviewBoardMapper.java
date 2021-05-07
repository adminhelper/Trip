package com.project.tripinfo.repository;

import com.project.tripinfo.model.ReviewBoard;
import com.project.tripinfo.model.Review_File;
import com.project.tripinfo.util.Criteria;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface ReviewBoardMapper {

    int boardListCnt (Criteria criteria) throws Exception;

    //게시글 조회
    List<Map<String, Object>> reviewBoardList (Criteria criteria) throws Exception;

    //페이징처리 게시글 조회
    List<ReviewBoard> ListPaging (Criteria criteria);

    //게시글 추가
    void reviewBoardInsert (ReviewBoard reviewBoard) throws Exception;

    //파일 첨부
    void reviewBoardFileInsert (List<Review_File> list) throws Exception;

    //게시글 상세조회
    ReviewBoard reviewBoardDetail (int board_no) throws Exception;

    //게시글 삭제
    void reviewBoardDelete (int board_no) throws Exception;

    //게시글 수정
    void reviewBoardModify (ReviewBoard reviewBoard) throws Exception;


    List<Map<String, Object>> reviewMainList () throws Exception;
}
