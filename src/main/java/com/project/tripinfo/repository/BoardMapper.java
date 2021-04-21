package com.project.tripinfo.repository;

import com.project.tripinfo.model.Board;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;

@Mapper
@Repository("com.project.tripinfo.repository.BoardMapper")
public interface BoardMapper {

    List<Board> reviewBoardList() throws Exception;

    void reviewBoardInset(Board board) throws Exception;

    Board reviewBoardDetail(int board_no) throws Exception;
}
