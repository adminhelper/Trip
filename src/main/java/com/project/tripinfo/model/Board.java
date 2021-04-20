package com.project.tripinfo.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import org.springframework.context.annotation.Primary;

import java.util.Date;

@Data
@AllArgsConstructor

public class Board {

    private Long board_no;
    private String member_id;
    private String prboard_title;
    private String board_contents;
    private Date board_regdate;

}
