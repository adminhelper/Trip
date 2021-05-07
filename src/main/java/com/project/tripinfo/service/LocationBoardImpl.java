package com.project.tripinfo.service;

import com.project.tripinfo.model.Table_name;
import com.project.tripinfo.repository.LocationBoardMapper;
import com.project.tripinfo.util.Criteria;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class LocationBoardImpl implements LocationBoard {

    @Autowired
    LocationBoardMapper locationBoard_mapper;

    @Override
    public void insertTable (Table_name table_name) throws Exception {
        int tm = locationBoard_mapper.checkTable(table_name.getContentid(), table_name.getContenttypeid());
        if (tm == 0) {
            locationBoard_mapper.insertTable(table_name);
        } else {
            System.out.println("중복");
        }
    }

    @Override
    public void insertDetailTable (Table_name table_name) throws Exception {
        int tm = locationBoard_mapper.checkDetailTable(table_name.getContentid());
        if (tm == 1) {
            locationBoard_mapper.insertDetailTable(table_name.getOverview(),table_name.getContentid());
        } else {
            System.out.println("없음");
        }
    }

    @Override
    public List<Map<String, Object>> selectHongdae (Criteria criteria, Integer contenttypeid) throws Exception {
        return locationBoard_mapper.selectHongdae(criteria, contenttypeid);
    }

    @Override
    public int checkTable (int contentid, int contenttypeid) throws Exception {
        return locationBoard_mapper.checkTable(contentid, contenttypeid);
    }

    @Override
    public Table_name hongdaeDetail (int contentId, int typeId) throws Exception {
        return locationBoard_mapper.hongdaeDetail(contentId, typeId);
    }

    @Override
    public int LocalListCnt (Integer contenttypeid) throws Exception {
        return locationBoard_mapper.LocalListCnt(contenttypeid);
    }

    @Override
    public List<Map<String, Object>> checkDetail () throws Exception {
        return locationBoard_mapper.checkDetail();
    }

}
