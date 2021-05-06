package com.project.tripinfo.repository;

import com.project.tripinfo.model.Table_name;
import com.project.tripinfo.util.Criteria;
import com.project.tripinfo.util.file.model.FileUtils;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;
import java.util.Map;

@Mapper
public interface Table_Mapper {
    void insertTable (Table_name table_name) throws Exception;

    List<Map<String,Object>> selectHongdae (Criteria criteria,Integer contenttypeid) throws Exception;

    int checkTable (int contentid, int contenttypeid) throws Exception;

    int checkDetailTable (int contentid);

    Table_name hongdaeDetail (int contentId, int typeId) throws Exception;

    int LocalListCnt (Integer contenttypeid) throws Exception;

    List<Map<String,Object>> checkDetail() throws Exception;

    void insertDetailTable (String overview, int contentid);

}
