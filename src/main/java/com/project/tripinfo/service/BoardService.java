package com.project.tripinfo.service;

import com.project.tripinfo.model.Board;
import com.project.tripinfo.model.Member;
import com.project.tripinfo.repository.BoardMapper;
import com.project.tripinfo.repository.MemberMapper;
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

}
