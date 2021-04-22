package com.project.tripinfo.util;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class Pagination {

    private Criteria criteria;

    // 전체 데이터 개수
    private int totalCount;
    // 전체 페이지 개수
    private int totalPageCount = 12;
    //페이지 리스트 첫페이지 번호
    private int startPage;
    //페이지 리스트의 마지막 페이지 번호
    private int endPage;
    // 이전 페이징 활성화 여부
    private boolean prev;
    // 다음 페이징 활설화 여부
    private boolean next;


    public void setTotalCount (int totalCount) {
        this.totalCount = totalCount;
        pagingData();
    }


    private void pagingData () {
        endPage = (int) (Math.ceil(criteria.getPageNum() / (double) totalPageCount) * totalPageCount);
        // endPage = (현재 페이지 번호 / 화면에 보여질 페이지 번호의 개수) * 화면에 보여질 페이지 번호의 개수
        startPage = (endPage - totalPageCount) + 1;
        // startPage = (끝 페이지 번호 - 화면에 보여질 페이지 번호의 개수) + 1

        int tempEndPage = (int) (Math.ceil(totalCount / (double) criteria.getAmount()));
        if (endPage > tempEndPage) {
            endPage = tempEndPage;
        }
        // 마지막 페이지 번호 = 총 게시글 수 / 한 페이지당 보여줄 게시글의개수

        prev = startPage == 1 ? false : true;
        // 이전 버튼 생성 여부 = 시작 페이지 번호가 1과 같으면 false, 아니면 true
        next = endPage * criteria.getAmount() >= totalCount ? false : true;
        // 다음 버튼 생성 여부 = 끝 페이지 번호 * 한 페이지당 보여줄 게시글의 개수가 총 게시글의 수보다
        // 크거나 같으면 false, 아니면 true
    }


}
