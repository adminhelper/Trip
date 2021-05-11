package com.project.tripinfo.service;

import com.project.tripinfo.model.Member;
import com.project.tripinfo.repository.MemberMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService implements MemberMapper {

    @Autowired
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

    @Override
    public Member selectCheck (Member member) throws Exception {
       return memberMapper.selectCheck(member);

    }

    @Override
    public void pwdCheck (Member member) throws Exception {
         memberMapper.pwdCheck(member);
    }


    public int nicknameCheck (String nicknameCheck) throws Exception {
        return memberMapper.nicknameCheck(nicknameCheck);
    }
}
