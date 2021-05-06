package com.project.tripinfo.service;

import com.project.tripinfo.model.Board;
import com.project.tripinfo.model.Review_File;
import com.project.tripinfo.repository.BoardMapper;
import com.project.tripinfo.util.Criteria;
import com.project.tripinfo.util.file.model.FileUtils;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import java.util.List;
import java.util.Map;

@Service
@Slf4j
public class BoardServiceImpl implements BoardService {

    @Autowired
    private FileUtils fileUtils;

    @Autowired
    BoardMapper boardMapper;


    @Override
    public List<Map<String, Object>> reviewBoardList (Criteria criteria) throws Exception {
        return boardMapper.reviewBoardList(criteria);
    }

    @Override
    public void reviewBoardInsert (Board board, MultipartHttpServletRequest multipartHttpServletRequest) throws Exception {
        boardMapper.reviewBoardInsert(board);

        List<Review_File> list = fileUtils.parseFileInfo(board.getBoard_no(), multipartHttpServletRequest);
        if(CollectionUtils.isEmpty(list) == false){
            boardMapper.reviewBoardFileInsert(list);
        }
    }
    @Override
    public Board reviewBoardDetail (int board_no) throws Exception {
        return boardMapper.reviewBoardDetail(board_no);
    }

    @Override
    public void reviewBoardDelete (int board_no) throws Exception {
        boardMapper.reviewBoardDelete(board_no);
    }

    @Override
    public void reviewBoardModify (Board board) throws Exception {
        boardMapper.reviewBoardModify(board);
    }

    @Override
    public int boardListCnt () throws Exception {
         return boardMapper.boardListCnt();
    }

    @Override
    public List<Map<String, Object>> reviewMainList () throws Exception {
        return boardMapper.reviewMainList();
    }

}
