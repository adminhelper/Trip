package com.project.tripinfo.controller;

import com.project.tripinfo.api.Gangnam;
import com.project.tripinfo.api.Hongdae;
import com.project.tripinfo.model.Table_name;
import com.project.tripinfo.service.LocationBoard;
import com.project.tripinfo.util.Criteria;
import com.project.tripinfo.util.Pagination;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Map;


@Controller
@RequestMapping("/local")
public class LocationBoardController {

    @Autowired
    LocationBoard locationBoard;

    @Autowired
    Hongdae hongdae;

    @Autowired
    Gangnam gangnam;

    private final Logger logger = LoggerFactory.getLogger(this.getClass());


    // 홍대 페이지 조회
    @RequestMapping(value = "/hongdae")
    public String hongdae (Criteria criteria, Model model, @RequestParam(required = false) Integer contenttypeid) throws Exception {
        // 전체 글 개수
        if (criteria.getKeyword() == null && criteria.getSearchType() == null) {
            String t = "";
            criteria.setKeyword(t);
            criteria.setSearchType(t);
        }
        int num = locationBoard.hongdaeListCnt(criteria,contenttypeid);
        Pagination paging = new Pagination();
        paging.setCriteria(criteria);
        paging.setTotalCount(num);
        String keyword = criteria.getKeyword();
        String searchType = criteria.getSearchType();
        List<Map<String, Object>> list = locationBoard.selectHongdae(criteria, contenttypeid);
        model.addAttribute("paging", paging);
        model.addAttribute("type", contenttypeid);
        model.addAttribute("table", list);
        model.addAttribute("keyword", keyword);
        model.addAttribute("searchType" ,searchType);

        logger.info("=== 카테고리   : 홍대 ===");
        System.out.println(contenttypeid);
        System.out.println("시작페이지" + paging.getStartPage() + "끝페이지" + +paging.getEndPage() + "총갯수" + +paging.getTotalCount());
        System.out.println(paging.getTotalPageCount());
        System.out.println(criteria);
        return "/local/hongdae";
    }

    // 홍대 페이지 상제 조회
    @RequestMapping(value = "/hongdae/detail")
    public String hongdae_Detail (@RequestParam("contentid") int contentId, @RequestParam("typeid") int typeId, Model model) throws Exception {
        Table_name table_name = locationBoard.hongdaeDetail(contentId, typeId);
        model.addAttribute("hongdae", table_name);
        return "/local/hongdaeDetail";
    }

    // 강남 페이지 조회
    @RequestMapping(value = "/gangnam")
    public String gangnam (Criteria criteria, Model model, @RequestParam(required = false) Integer contenttypeid) throws Exception {
        // 전체 글 개수
        if (criteria.getKeyword() == null && criteria.getSearchType() == null) {
            String t = "";
            criteria.setKeyword(t);
            criteria.setSearchType(t);
        }
        int num = locationBoard.gangnamListCnt(contenttypeid);
        Pagination paging = new Pagination();
        paging.setCriteria(criteria);
        paging.setTotalCount(num);
        List<Map<String, Object>> list = locationBoard.selectGangnam(criteria, contenttypeid);
        model.addAttribute("paging", paging);
        model.addAttribute("type", contenttypeid);
        model.addAttribute("table", list);

        logger.info("=== 카테고리   : 강남 ===");

        return "/local/gangnam";
    }

    //강남 페이지 상세 조회
    @RequestMapping(value = "/gangnam/detail")
    public String gangnam_Detail (@RequestParam("contentid") int contentId, @RequestParam("typeid") int typeId, Model model) throws Exception {
        Table_name table_name = locationBoard.gangnamDetail(contentId, typeId);
        model.addAttribute("gangnam", table_name);
        return "/local/gangnamDetail";
    }

    //명동 페이지 조회
    @RequestMapping(value = "/myeongdong")
    public String myeongdong (Criteria criteria, Model model, @RequestParam(required = false) Integer contenttypeid) throws Exception {
        // 전체 글 개수
        if (criteria.getKeyword() == null && criteria.getSearchType() == null) {
            String t = "";
            criteria.setKeyword(t);
            criteria.setSearchType(t);
        }
        int num = locationBoard.myeongdongListCnt(contenttypeid);
        Pagination paging = new Pagination();
        paging.setCriteria(criteria);
        paging.setTotalCount(num);
        List<Map<String, Object>> list = locationBoard.selectMyeongdong(criteria, contenttypeid);
        model.addAttribute("paging", paging);
        model.addAttribute("type", contenttypeid);
        model.addAttribute("table", list);

        logger.info("=== 카테고리   : 명동 ===");
        return "/local/myeongdong";
    }

    //명동 페이지 상세 조회
    @RequestMapping(value = "/myeongdong/detail")
    public String myeongdong_Detail (@RequestParam("contentid") int contentId, @RequestParam("typeid") int typeId, Model model) throws Exception {
        Table_name table_name = locationBoard.myeongdongDetail(contentId, typeId);
        model.addAttribute("myeongdong", table_name);
        return "/local/myeongdongDetail";
    }

    //잠실 페이지 조회
    @RequestMapping(value = "/jamsil")
    public String jamsil (Criteria criteria, Model model, @RequestParam(required = false) Integer contenttypeid) throws Exception {
        // 전체 글 개수
        if (criteria.getKeyword() == null && criteria.getSearchType() == null) {
            String t = "";
            criteria.setKeyword(t);
            criteria.setSearchType(t);
        }
        int num = locationBoard.jamsilListCnt(contenttypeid);
        Pagination paging = new Pagination();
        paging.setCriteria(criteria);
        paging.setTotalCount(num);
        List<Map<String, Object>> list = locationBoard.selectJamsil(criteria, contenttypeid);
        model.addAttribute("paging", paging);
        model.addAttribute("type", contenttypeid);
        model.addAttribute("table", list);

        logger.info("=== 카테고리   : 잠실 ===");
        return "/local/jamsil";
    }

    //잠실 페이지 상세 조회
    @RequestMapping(value = "/jamsil/detail")
    public String jamsil_Detail (@RequestParam("contentid") int contentId, @RequestParam("typeid") int typeId, Model model) throws Exception {
        Table_name table_name = locationBoard.jamsilDetail(contentId, typeId);
        model.addAttribute("jamsil", table_name);
        return "/local/jamsilDetail";
    }

    //이태원 페이지 조회
    @RequestMapping(value = "/itaewon")
    public String itaewon (Criteria criteria, Model model, @RequestParam(required = false) Integer contenttypeid) throws Exception {
        // 전체 글 개수
        if (criteria.getKeyword() == null && criteria.getSearchType() == null) {
            String t = "";
            criteria.setKeyword(t);
            criteria.setSearchType(t);
        }
        int num = locationBoard.itaewonListCnt(contenttypeid);
        Pagination paging = new Pagination();
        paging.setCriteria(criteria);
        paging.setTotalCount(num);
        List<Map<String, Object>> list = locationBoard.selectItaewon(criteria, contenttypeid);
        model.addAttribute("paging", paging);
        model.addAttribute("type", contenttypeid);
        model.addAttribute("table", list);

        logger.info("=== 카테고리   : 이태원 ===");
        return "/local/itaewon";
    }

    //이태원 페이지 상세 조회
    @RequestMapping(value = "/itaewon/detail")
    public String itaewon_Detail (@RequestParam("contentid") int contentId, @RequestParam("typeid") int typeId, Model model) throws Exception {
        Table_name table_name = locationBoard.itaewonDetail(contentId, typeId);
        model.addAttribute("itaewon", table_name);
        return "/local/itaewonDetail";
    }

    //광화문 페이지 조회
    @RequestMapping(value = "/gwanghwamun")
    public String gwanghwamun (Criteria criteria, Model model, @RequestParam(required = false) Integer contenttypeid) throws Exception {
        // 전체 글 개수
        if (criteria.getKeyword() == null && criteria.getSearchType() == null) {
            String t = "";
            criteria.setKeyword(t);
            criteria.setSearchType(t);
        }
        int num = locationBoard.gwanghwamunListCnt(contenttypeid);
        Pagination paging = new Pagination();
        paging.setCriteria(criteria);
        paging.setTotalCount(num);
        List<Map<String, Object>> list = locationBoard.selectGwanghwamun(criteria, contenttypeid);
        model.addAttribute("paging", paging);
        model.addAttribute("type", contenttypeid);
        model.addAttribute("table", list);

        logger.info("=== 카테고리   : 광화문 ===");
        return "/local/gwanghwamun";
    }

    //광화문 페이지 상세 조회
    @RequestMapping(value = "/gwanghwamun/detail")
    public String gwanghwamun_Detail (@RequestParam("contentid") int contentId, @RequestParam("typeid") int typeId, Model model) throws Exception {
        Table_name table_name = locationBoard.gwanghwamunDetail(contentId, typeId);
        model.addAttribute("gwanghwamun", table_name);
        return "/local/gwanghwamunDetail";
    }

}
