package com.project.tripinfo.service;

import com.project.tripinfo.model.BoardLike;
import com.project.tripinfo.repository.ReviewBoardLikeMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ReviewBoardLikeServiceImpl implements ReviewBoardLikeService {

    @Autowired
    ReviewBoardLikeMapper reviewBoardLikeMapper;

    @Override
    public int getBoardLike (BoardLike vo) throws Exception {
        return reviewBoardLikeMapper.getBoardLike(vo);
    }

    @Override
    public void insertBoardLike (BoardLike vo) throws Exception {
        reviewBoardLikeMapper.createBoardLike(vo);
        reviewBoardLikeMapper.updateBoardLike(vo.getBoard_no());
    }

    @Override
    public void deleteBoardLike (BoardLike vo) throws Exception {
        reviewBoardLikeMapper.deleteBoardLike(vo);
        reviewBoardLikeMapper.updateBoardLike(vo.getBoard_no());
    }

    @Override
    public void updateBoardLike (int board_no) throws Exception {
        reviewBoardLikeMapper.updateBoardLike(board_no);
    }

}
