package com.project.tripinfo.model;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.Date;

@Data
@AllArgsConstructor
public class Board {

    private int board_no;
    private String member_id;
    private String board_title;
    private String board_contents;
    private Date board_regdate;

}
