package com.project.tripinfo.util.file.model;

import lombok.Data;

import java.util.Date;

@Data
public class Attach {

    private int file_no;
    private int board_no;
    private String member_id;
    private String file_origin_name;
    private String file_name;
    private String file_size;
    private Date file_regdate;
}
