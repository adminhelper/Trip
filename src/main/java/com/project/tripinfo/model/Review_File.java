package com.project.tripinfo.model;

import lombok.Data;

import java.util.Date;

@Data
public class Review_File {

    private int board_no;
    private String file_origin_name;
    private String file_name;
    private Long file_size;
    private Date file_regdate;
}
