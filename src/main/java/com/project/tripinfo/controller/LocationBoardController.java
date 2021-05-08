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
        int num = locationBoard.hongdaeListCnt(contenttypeid);
        Pagination paging = new Pagination();
        paging.setCriteria(criteria);
        paging.setTotalCount(num);
        List<Map<String, Object>> list = locationBoard.selectHongdae(criteria, contenttypeid);
        model.addAttribute("paging", paging);
        model.addAttribute("table", list);
        model.addAttribute("type", contenttypeid);
        logger.info("=== 카테고리   : 홍대 ===");

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
        int num = locationBoard.gangnamListCnt(contenttypeid);
        int gangnam = 1;
        //페이징 객체
        Pagination paging = new Pagination();
        paging.setCriteria(criteria);
        paging.setTotalCount(num);
        List<Map<String, Object>> list = locationBoard.selectGangnam(criteria, contenttypeid,gangnam);
        model.addAttribute("paging", paging);
        model.addAttribute("table", list);
        model.addAttribute("type", contenttypeid);
        logger.info("=== 카테고리   : 홍대 ===");

        return "/local/gangnam";
    }

    //강남 페이지 상세 조회
    @RequestMapping(value = "/gangnam/detail")
    public String gangnam_Detail (@RequestParam("contentid") int contentId, @RequestParam("typeid") int typeId, Model model) throws Exception {
        Table_name table_name = locationBoard.gangnamDetail(contentId, typeId);
        model.addAttribute("hongdae", table_name);
        return "/local/gananamDetail";
    }


}
