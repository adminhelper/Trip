package com.project.tripinfo.util;

import com.project.tripinfo.model.Board;
import com.project.tripinfo.repository.BoardMapper;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

@RunWith(SpringRunner.class)
@Slf4j
class CriteriaTest {

    @Autowired
    BoardMapper boardMapper;

    @Test
    public void test(){
       Criteria criteria = new Criteria();
        criteria.setPageNum(2);
        criteria.setAmount(3);

        List<Board> list = boardMapper.ListPaging(criteria);
        list.forEach(board -> log.info(board.toString()));
    }

}