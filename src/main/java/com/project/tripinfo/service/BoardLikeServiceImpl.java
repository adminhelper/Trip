package com.project.tripinfo.service;

import com.project.tripinfo.model.BoardLike;
import com.project.tripinfo.repository.BoardLikeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BoardLikeServiceImpl implements BoardLikeService {

    @Autowired
    BoardLikeMapper boardLikeMapper;

    @Override
    public int getBoardLike (BoardLike vo) throws Exception {
        return boardLikeMapper.getBoardLike(vo);
    }

    @Override
    public void insertBoardLike (BoardLike vo) throws Exception {
        boardLikeMapper.createBoardLike(vo);
        boardLikeMapper.updateBoardLike(vo.getBoard_no());
    }

    @Override
    public void deleteBoardLike (BoardLike vo) throws Exception {
        boardLikeMapper.deleteBoardLike(vo);
        boardLikeMapper.updateBoardLike(vo.getBoard_no());
    }

    @Override
    public void updateBoardLike (int board_no) throws Exception {
        boardLikeMapper.updateBoardLike(board_no);
    }

}
