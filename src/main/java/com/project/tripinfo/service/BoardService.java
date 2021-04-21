package com.project.tripinfo.service;

import com.project.tripinfo.model.Board;
import com.project.tripinfo.repository.BoardMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("com.project.tripinfo.service.BoardService")
public class BoardService implements BoardMapper {

    @Resource(name = "com.project.tripinfo.repository.BoardMapper")
    BoardMapper boardMapper;


    @Override
    public List<Board> reviewBoardList () throws Exception {
        return boardMapper.reviewBoardList();
    }

    @Override
    public void reviewBoardInset(Board board) throws Exception {
        boardMapper.reviewBoardInset(board);

    }

    @Override
    public Board reviewBoardDetail(int board_no) throws Exception{
        return boardMapper.reviewBoardDetail(board_no);
    }

    public void reviewBoardDelete (int board_no) throws Exception {
        boardMapper.reviewBoardDelete(board_no);
    }

    public void reviewBoardModify (Board board) throws Exception {
        boardMapper.reviewBoardModify(board);
    }
}
