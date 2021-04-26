package com.project.tripinfo.repository;

import com.project.tripinfo.model.Member;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface MemberMapper {

    void memberRegister(Member member) throws  Exception;
    int  loginCheck(Member member)throws  Exception;

    int idCheck (String member_id) throws  Exception;
}
