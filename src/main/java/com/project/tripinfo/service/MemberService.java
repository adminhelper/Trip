package com.project.tripinfo.service;

import com.project.tripinfo.model.Member;
import com.project.tripinfo.repository.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class MemberService implements MemberMapper {

    @Autowired(required = true)
    MemberMapper memberMapper;

    @Override
    public void memberRegister (Member member) throws Exception {
        memberMapper.memberRegister(member);
    }

    @Override
    public int idCheck (String member_id) throws Exception {
        return memberMapper.idCheck(member_id);
    }

    @Override
    public int loginCheck (Member member) throws Exception {
        return memberMapper.loginCheck(member);
    }


}
