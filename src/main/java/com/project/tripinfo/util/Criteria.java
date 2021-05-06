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

    private String type;
    private String keyword;

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


    public void setAmount (int amount) {

        if (amount <= 0 || amount > 100) {
            this.amount = 10;
            return;
        }

        this.amount = amount;
    }

    public int getPageStart () {
        return (this.pageNum - 1) * amount;
    }

    public String[] getTypeArr() {
        return type == null? new String[] {}: type.split("");
    }

}
