package com.project.tripinfo.service;

import com.project.tripinfo.model.ReviewBoard;
import com.project.tripinfo.model.Review_File;
import com.project.tripinfo.repository.ReviewBoardMapper;
import com.project.tripinfo.util.Criteria;
import com.project.tripinfo.util.FileUtils;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import java.util.List;
import java.util.Map;

@Service
@Slf4j
public class ReviewBoardServiceImpl implements ReviewBoardService {

    @Autowired
    private FileUtils fileUtils;

    @Autowired
    ReviewBoardMapper reviewBoardMapper;


    @Override
    public List<Map<String, Object>> reviewBoardList (Criteria criteria) throws Exception {
        return reviewBoardMapper.reviewBoardList(criteria);
    }

    @Override
    public void reviewBoardInsert (ReviewBoard reviewBoard, MultipartHttpServletRequest multipartHttpServletRequest) throws Exception {
        reviewBoardMapper.reviewBoardInsert(reviewBoard);

        List<Review_File> list = fileUtils.parseFileInfo(reviewBoard.getBoard_no(), multipartHttpServletRequest);
        if(CollectionUtils.isEmpty(list) == false){
            reviewBoardMapper.reviewBoardFileInsert(list);
        }
    }
    @Override
    public ReviewBoard reviewBoardDetail (int board_no) throws Exception {
        return reviewBoardMapper.reviewBoardDetail(board_no);
    }

    @Override
    public void reviewBoardDelete (int board_no) throws Exception {
        reviewBoardMapper.reviewBoardDelete(board_no);
    }

    @Override
    public void reviewBoardModify (ReviewBoard reviewBoard) throws Exception {
        reviewBoardMapper.reviewBoardModify(reviewBoard);
    }

    @Override
    public int boardListCnt (Criteria criteria) throws Exception {
         return reviewBoardMapper.boardListCnt(criteria);
    }

    @Override
    public List<Map<String, Object>> reviewMainList () throws Exception {
        return reviewBoardMapper.reviewMainList();
    }

}
