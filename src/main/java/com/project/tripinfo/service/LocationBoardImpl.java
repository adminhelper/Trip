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
            locationBoard_mapper.insertTable(table_name);
        } else {
            System.out.println("중복");
        }
    }


    @Override
    public void insertDetailTable (Table_name table_name) throws Exception {
        int tm = locationBoard_mapper.checkDetailTable(table_name.getContentid());
        if (tm == 1) {
            locationBoard_mapper.insertDetailTable(table_name.getOverview(), table_name.getContentid());
        } else {
            System.out.println("없음");
        }
    }

    @Override
    public int checkTable (int contentid, int contenttypeid) throws Exception {
        return locationBoard_mapper.checkTable(contentid, contenttypeid);
    }

    @Override
    public List<Map<String, Object>> checkDetail () throws Exception {
        return locationBoard_mapper.checkDetail();
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
    public int hongdaeListCnt (Criteria criteria, Integer contenttypeid) throws Exception {
        return locationBoard_mapper.hongdaeListCnt(criteria,contenttypeid);
    }
//    //홍대 총갯수 카운트
//    @Override
//    public int hongdaeListCnt (Criteria criteria) throws Exception {
//        return locationBoard_mapper.hongdaeListCnt(criteria);
//    }

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

    //명동 페이지 조회
    @Override
    public List<Map<String, Object>> selectMyeongdong (Criteria criteria, Integer contenttypeid) throws Exception {
        return locationBoard_mapper.selectMyeongdong(criteria, contenttypeid);
    }

    //명동 상세 페이지 조회
    @Override
    public Table_name myeongdongDetail (int contentId, int typeId) throws Exception {
        return locationBoard_mapper.myeongdongDetail(contentId, typeId);
    }

    //명동 총갯수 카운트
    @Override
    public int myeongdongListCnt (Integer contenttypeid) throws Exception {
        return locationBoard_mapper.myeongdongListCnt(contenttypeid);
    }

    //잠실 페이지 조회
    @Override
    public List<Map<String, Object>> selectJamsil (Criteria criteria, Integer contenttypeid) throws Exception {
        return locationBoard_mapper.selectJamsil(criteria, contenttypeid);
    }

    //잠실 상세 페이지 조회
    @Override
    public Table_name jamsilDetail (int contentId, int typeId) throws Exception {
        return locationBoard_mapper.jamsilDetail(contentId, typeId);
    }

    //잠실 총갯수 카운트
    @Override
    public int jamsilListCnt (Integer contenttypeid) throws Exception {
        return locationBoard_mapper.jamsilListCnt(contenttypeid);
    }

    //이태원 페이지 조회
    @Override
    public List<Map<String, Object>> selectItaewon (Criteria criteria, Integer contenttypeid) throws Exception {
        return locationBoard_mapper.selectItaewon(criteria, contenttypeid);
    }

    //이태원 상세 페이지 조회
    @Override
    public Table_name itaewonDetail (int contentId, int typeId) throws Exception {
        return locationBoard_mapper.itaewonDetail(contentId, typeId);
    }

    //이태원 총갯수 카운트
    @Override
    public int itaewonListCnt (Integer contenttypeid) throws Exception {
        return locationBoard_mapper.itaewonListCnt(contenttypeid);
    }

    //광화문 페이지 조회
    @Override
    public List<Map<String, Object>> selectGwanghwamun (Criteria criteria, Integer contenttypeid) throws Exception {
        return locationBoard_mapper.selectGwanghwamun(criteria, contenttypeid);
    }

    //광화문 상세 페이지 조회
    @Override
    public Table_name gwanghwamunDetail (int contentId, int typeId) throws Exception {
        return locationBoard_mapper.gwanghwamunDetail(contentId, typeId);
    }

    //광화문 총갯수 카운트
    @Override
    public int gwanghwamunListCnt (Integer contenttypeid) throws Exception {
        return locationBoard_mapper.gwanghwamunListCnt(contenttypeid);
    }
}
