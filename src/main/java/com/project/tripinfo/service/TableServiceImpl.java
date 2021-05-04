package com.project.tripinfo.service;

import com.project.tripinfo.model.Table_name;
import com.project.tripinfo.repository.Table_Mapper;
import com.project.tripinfo.util.Criteria;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class TableServiceImpl implements TableService {

    @Autowired
    Table_Mapper table_mapper;

    @Override
    public void insertTable (Table_name table_name) throws Exception {
        int tm = table_mapper.checkTable(table_name.getContentid(), table_name.getContenttypeid());
        if (tm == 0) {
            table_mapper.insertTable(table_name);
        } else {
            System.out.println("중복");
        }
    }

    @Override
    public List<Map<String, Object>> selectHongdae (Criteria criteria,Integer contenttypeid) throws Exception {
        return table_mapper.selectHongdae(criteria, contenttypeid);
    }

    @Override
    public int checkTable (int num1, int num2) throws Exception {
        return table_mapper.checkTable(num1, num2);
    }

    @Override
    public Table_name hongdaeDetail (int contentId, int typeId) throws Exception {
        return table_mapper.hongdaeDetail(contentId, typeId);
    }

    @Override
    public int LocalListCnt (Integer contenttypeid) throws Exception {
        return table_mapper.LocalListCnt(contenttypeid);
    }
}
