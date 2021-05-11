package com.project.tripinfo.model;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class Member {

    private String member_id;
    private String member_password;
    private String member_name;
    private String member_nickname;
    private String member_phone;
}
