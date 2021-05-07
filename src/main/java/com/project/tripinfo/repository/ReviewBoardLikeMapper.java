package com.project.tripinfo.repository;

import com.project.tripinfo.model.BoardLike;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface ReviewBoardLikeMapper {

    void createBoardLike (BoardLike board) throws Exception;

    void deleteBoardLike (BoardLike board) throws Exception;

    void updateBoardLike (int board_no) throws Exception;

    int getBoardLike (BoardLike board) throws Exception;

}
