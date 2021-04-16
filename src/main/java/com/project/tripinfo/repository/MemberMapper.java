package com.project.tripinfo.repository;

import com.project.tripinfo.model.Member;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Mapper
@Repository("com.project.tripinfo.repository.MemberMapper")
public interface MemberMapper {

    List<Member> selectMemberByAll();

    int joinMember(Member member);

}
