package com.project.tripinfo.service;


import com.project.tripinfo.model.BoardLike;

public interface BoardLikeService {

     int getBoardLike (BoardLike vo) throws Exception;

     void insertBoardLike (BoardLike vo) throws Exception;

     void deleteBoardLike (BoardLike vo) throws Exception;

     void updateBoardLike (int boardId) throws Exception;
}
