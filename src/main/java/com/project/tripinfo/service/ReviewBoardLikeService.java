package com.project.tripinfo.service;


import com.project.tripinfo.model.BoardLike;

public interface ReviewBoardLikeService {

    int getBoardLike (BoardLike vo) throws Exception;

    void insertBoardLike (BoardLike vo) throws Exception;

    void deleteBoardLike (BoardLike vo) throws Exception;

    void updateBoardLike (int board_no) throws Exception;

}
