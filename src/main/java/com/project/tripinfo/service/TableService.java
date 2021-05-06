package com.project.tripinfo.service;

import com.project.tripinfo.model.Table_name;
import com.project.tripinfo.util.Criteria;

import java.util.List;
import java.util.Map;

public interface TableService {

    //홍대 API 등록
    void insertTable(Table_name table_name) throws Exception;

    //홍대 페이지 조회
    List<Map<String,Object>> selectHongdae(Criteria criteria,Integer contenttypeid) throws Exception;

    //홍대 API 테이블 체크
    int checkTable (int contentid, int contenttypeid)throws  Exception;

    Table_name hongdaeDetail (int contentId, int typeId) throws Exception;

    int LocalListCnt(Integer contenttypeid) throws Exception;

    List<Map<String,Object>> checkDetail() throws Exception;

    void insertDetailTable (Table_name table_name) throws Exception;
}
