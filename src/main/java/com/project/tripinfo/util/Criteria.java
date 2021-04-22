package com.project.tripinfo.util;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import javax.websocket.server.ServerEndpoint;

@ToString
@Setter
@Getter
public class Criteria {

    private int pageNum; // 현재 페이지 번호
    private int amount; // 페이당 보여줄 게시글 수
//
    // 기본 생성
    public Criteria () {
        this(1, 12);
    }

    public Criteria (int pageNum, int amount) {
        this.pageNum = pageNum;
        this.amount = amount;
    }

    public int getStartPage() {
        return (this.pageNum - 1) * amount;
    }

}
