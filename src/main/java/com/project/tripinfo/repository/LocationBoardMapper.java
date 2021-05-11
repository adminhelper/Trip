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

    // API
    List<Map<String, Object>> checkDetail () throws Exception;

    // 홍대 페이지 조회
    List<Map<String, Object>> selectHongdae (Criteria criteria, Integer contenttypeid) throws Exception;

    // 홍대 상세 페이지 조회
    Table_name hongdaeDetail (int contentId, int typeId) throws Exception;

    // 홍대 총갯수 조회
    int hongdaeListCnt (Criteria criteria, Integer contenttypeid) throws Exception;

    // 강남 페이지 조회
    List<Map<String, Object>> selectGangnam (Criteria criteria, Integer contenttypeid) throws Exception;

    // 강남 상세 페이지 조회
    Table_name gangnamDetail (int contentId, int typeId) throws Exception;

    // 강남 총갯수 조회
    int gangnamListCnt (Integer contenttypeid);

    // 명동 페이지 조회
    List<Map<String, Object>> selectMyeongdong (Criteria criteria, Integer contenttypeid);

    // 명동 상세 페이지 조회
    Table_name myeongdongDetail (int contentId, int typeId) throws Exception;

    // 명동 총갯수 조회
    int myeongdongListCnt (Integer contenttypeid) throws Exception;

    // 잠실 페이지 조회
    List<Map<String, Object>> selectJamsil (Criteria criteria, Integer contenttypeid);

    // 잠실 상세 페이지 조회
    Table_name jamsilDetail (int contentId, int typeId) throws Exception;

    // 잠실 총갯수 조회
    int jamsilListCnt (Integer contenttypeid) throws Exception;

    // 이태원 페이지 조회
    List<Map<String, Object>> selectItaewon (Criteria criteria, Integer contenttypeid);

    // 이태원 상세 페이지 조회
    Table_name itaewonDetail (int contentId, int typeId) throws Exception;

    // 이태원 총갯수 조회
    int itaewonListCnt (Integer contenttypeid) throws Exception;

    // 광화문 페이지 조회
    List<Map<String, Object>> selectGwanghwamun (Criteria criteria, Integer contenttypeid);

    // 광화문 상세 페이지 조회
    Table_name gwanghwamunDetail (int contentId, int typeId) throws Exception;

    // 광화문 총갯수 조회
    int gwanghwamunListCnt (Integer contenttypeid) throws Exception;
}
