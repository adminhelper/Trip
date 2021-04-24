package com.project.tripinfo.util;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@ToString
@Setter
@Getter
public class Criteria {

    private int pageNum; // 현재 페이지 번호
    private int amount; // 페이당 보여줄 게시글 수

    public Criteria () {
        this(1, 12);
    }

    // 기본 생성
    public Criteria (int pageNum, int amount) {
        this.pageNum = pageNum;
        this.amount = amount;
    }

    public void setPageNum (int pageNum) {
        if (pageNum <= 0) {
            this.pageNum = 1;
        } else {
            this.pageNum = pageNum;
        }
    }

    public int getPageStart () {
        return (this.pageNum - 1) * amount;
    }

}
