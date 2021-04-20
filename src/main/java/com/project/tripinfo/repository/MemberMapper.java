package com.project.tripinfo.repository;

import com.project.tripinfo.model.Member;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Mapper
@Repository("com.project.tripinfo.repository.MemberMapper")
public interface MemberMapper {

    void memberRegister(Member member) throws  Exception;
    int  loginCheck(Member member)throws  Exception;

    int idCheck (String member_id) throws  Exception;
}
