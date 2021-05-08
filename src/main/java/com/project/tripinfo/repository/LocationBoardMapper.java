package com.project.tripinfo.repository;

import com.project.tripinfo.model.Table_name;
import com.project.tripinfo.util.Criteria;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface LocationBoardMapper {

    // API 등록
    void insertTable (Table_name table_name) throws Exception;

    // API 디테일 등록
    void insertDetailTable (String overview, int contentid);


    // API 테이블 중복확인
    int checkTable (int contentid, int contenttypeid) throws Exception;

    //  API content 체크
    int checkDetailTable (int contentid);

    // 홍대 페이지 조회
    List<Map<String, Object>> selectHongdae (Criteria criteria, Integer contenttypeid) throws Exception;

    // 홍대 상세 페이지 조회
    Table_name hongdaeDetail (int contentId, int typeId) throws Exception;

    // 홍대 총갯수 조회
    int hongdaeListCnt (Integer contenttypeid) throws Exception;

    // 강남 페이지 조남
    List<Map<String, Object>> selectGangnam (Criteria criteria, Integer contenttypeid) throws Exception;

    // 강남 상세 페이지 조회
    Table_name gangnamDetail (int contentId, int typeId) throws Exception;

    // 강남 총갯수 조회
    int gangnamListCnt (Integer contenttypeid);

    List<Map<String, Object>> checkDetail () throws Exception;
}
