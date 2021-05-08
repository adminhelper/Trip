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


    //지역 API 등
    @Override
    public void insertTable (Table_name table_name) throws Exception {
        int tm = locationBoard_mapper.checkTable(table_name.getContentid(), table_name.getContenttypeid());
        if (tm == 0) {
            System.out.println("성여사 등록이되었습니다.");
            locationBoard_mapper.insertTable(table_name);
        } else {
            System.out.println("중복");
        }
    }

    //홍대 페이지 조회
    @Override
    public List<Map<String, Object>> selectHongdae (Criteria criteria, Integer contenttypeid) throws Exception {
        return locationBoard_mapper.selectHongdae(criteria, contenttypeid);
    }

    //홍대 페이지 상세 조회
    @Override
    public Table_name hongdaeDetail (int contentId, int typeId) throws Exception {
        return locationBoard_mapper.hongdaeDetail(contentId, typeId);
    }

    //홍대 총갯수 카운트
    @Override
    public int hongdaeListCnt (Integer contenttypeid) throws Exception {
        return locationBoard_mapper.hongdaeListCnt(contenttypeid);
    }

    //강남 페이지 조회
    @Override
    public List<Map<String, Object>> selectGangnam (Criteria criteria, Integer contenttypeid) throws Exception {
        return locationBoard_mapper.selectGangnam(criteria, contenttypeid);
    }

    //강남 페이지 상세조회
    @Override
    public Table_name gangnamDetail (int contentId, int typeId) throws Exception {
        return locationBoard_mapper.gangnamDetail(contentId, typeId);
    }

    //강남 총갯수 카운트
    @Override
    public int gangnamListCnt (Integer contenttypeid) throws Exception {
        return locationBoard_mapper.gangnamListCnt(contenttypeid);
    }

//---------------------------------------------------------------------------------------------------------------------

    @Override
    public void insertDetailTable (Table_name table_name) throws Exception {
        int tm = locationBoard_mapper.checkDetailTable(table_name.getContentid());
        if (tm == 1) {
            locationBoard_mapper.insertDetailTable(table_name.getOverview(),table_name.getContentid());
        } else {
            System.out.println("없음");
        }
    }

    //
    @Override
    public int checkTable (int contentid, int contenttypeid) throws Exception {
        return locationBoard_mapper.checkTable(contentid, contenttypeid);
    }

    @Override
    public List<Map<String, Object>> checkDetail () throws Exception {
        return locationBoard_mapper.checkDetail();
    }

}
