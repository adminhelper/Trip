package com.project.tripinfo.service;

import com.project.tripinfo.model.Member;
import com.project.tripinfo.repository.MemberMapper;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service("com.project.tripinfo.service.MemberService")
public class MemberService implements MemberMapper {

    @Resource(name = "com.project.tripinfo.repository.MemberMapper")
    MemberMapper memberMapper;


    @Override
    public List<Member> selectMemberByAll () {
        return memberMapper.selectMemberByAll();
    }

    @Override
    public int joinMember (Member member) {
        return memberMapper.joinMember(member);
    }


}
