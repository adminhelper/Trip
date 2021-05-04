package com.project.tripinfo.service;

import com.project.tripinfo.model.Table_name;
import com.project.tripinfo.util.Criteria;

import java.util.List;
import java.util.Map;

public interface TableService {
    void insertTable(Table_name table_name) throws Exception;

    List<Map<String,Object>> selectHongdae(Criteria criteria,Integer contenttypeid) throws Exception;

    int checkTable (int contentid, int contenttypeid)throws  Exception;
    Table_name hongdaeDetail (int contentId, int typeId) throws Exception;

    int LocalListCnt(Integer contenttypeid) throws Exception;
}
