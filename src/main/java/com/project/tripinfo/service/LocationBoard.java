package com.project.tripinfo.service;

import com.project.tripinfo.model.Table_name;
import com.project.tripinfo.util.Criteria;

import java.util.List;
import java.util.Map;

public interface LocationBoard {

    //API 등록
    void insertTable (Table_name table_name) throws Exception;

    //API 상세페이지 등록
    void insertDetailTable (Table_name table_name) throws Exception;

    //API 테이블 체크
    int checkTable (int contentid, int contenttypeid) throws Exception;

    //API 디테일 조회
    List<Map<String, Object>> checkDetail () throws Exception;

    //홍대 페이지 조회
    List<Map<String, Object>> selectHongdae (Criteria criteria, Integer contenttypeid) throws Exception;

    //홍대 상세조회
    Table_name hongdaeDetail (int contentId, int typeId) throws Exception;

    //홍대 총갯수 카운팅
    int hongdaeListCnt (Criteria criteria, Integer contenttypeid) throws Exception;

    //강남 페이지 조회
    List<Map<String, Object>> selectGangnam (Criteria criteria, Integer contenttypeid) throws Exception;

    //강남 상세페이지 조회
    Table_name gangnamDetail (int contentId, int typeId) throws Exception;

    //강남 총갯수 카운팅
    int gangnamListCnt (Integer contenttypeid) throws Exception;

    //명동 페이지 조회
    List<Map<String, Object>> selectMyeongdong (Criteria criteria, Integer contenttypeid) throws Exception;

    //명동 상세페이지 조회
    Table_name myeongdongDetail (int contentId, int typeId) throws Exception;

    //명동 총갯수 카운팅
    int myeongdongListCnt (Integer contenttypeid) throws Exception;

    //잠실 페이지 조회
    List<Map<String, Object>> selectJamsil (Criteria criteria, Integer contenttypeid) throws Exception;

    //잠실 상세페이지 조회
    Table_name jamsilDetail (int contentId, int typeId) throws Exception;

    //잠실 총갯수 카운팅
    int jamsilListCnt (Integer contenttypeid) throws Exception;

    //이태원 페이지 조회
    List<Map<String, Object>> selectItaewon (Criteria criteria, Integer contenttypeid) throws Exception;

    //이태원 상세페이지 조회
    Table_name itaewonDetail (int contentId, int typeId) throws Exception;

    //이태원 총갯수 카운팅
    int itaewonListCnt (Integer contenttypeid) throws Exception;

    //광화문 페이지 조회
    List<Map<String, Object>> selectGwanghwamun (Criteria criteria, Integer contenttypeid) throws Exception;

    //광화문 상세페이지 조회
    Table_name  gwanghwamunDetail (int contentId, int typeId) throws Exception;

    //광화문 총갯수 카운팅
    int  gwanghwamunListCnt (Integer contenttypeid) throws Exception;
}
