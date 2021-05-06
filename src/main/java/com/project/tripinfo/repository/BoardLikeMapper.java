package com.project.tripinfo.repository;

import com.project.tripinfo.model.BoardLike;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BoardLikeMapper {

    void createBoardLike (BoardLike board) throws Exception;

    void deleteBoardLike (BoardLike board) throws Exception;

    void updateBoardLike (int board) throws Exception;

    int getBoardLike (BoardLike board) throws Exception;
}
