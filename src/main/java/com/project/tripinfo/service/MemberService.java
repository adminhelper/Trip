package com.project.tripinfo.service;

import com.project.tripinfo.model.Member;
import com.project.tripinfo.repository.MemberMapper;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MemberService implements MemberMapper {

    MemberMapper memberMapper;


    @Override
    public List<Member> selectMemberByAll () {
        return memberMapper.selectMemberByAll();
    }
}
