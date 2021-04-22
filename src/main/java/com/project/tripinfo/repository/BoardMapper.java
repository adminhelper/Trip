package com.project.tripinfo.repository;

import com.project.tripinfo.model.Board;
import com.project.tripinfo.util.Criteria;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository("com.project.tripinfo.repository.BoardMapper")
public interface BoardMapper {

    //게시글 조회
    List<Board> reviewBoardList() throws Exception;

    //페이징처리 게시글 조회
    List<Board> ListPaging(Criteria criteria);

    //게시글 추가
    void reviewBoardInset(Board board) throws Exception;

    //게시글 상세조회
    Board reviewBoardDetail(int board_no) throws Exception;

    //게시글 삭제
    void reviewBoardDelete (int board_no) throws Exception;

    //게시글 수정
    void reviewBoardModify (Board board) throws Exception;

    int boardListCnt () throws  Exception;
}
