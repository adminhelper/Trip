package com.project.tripinfo;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.web.servlet.MultipartAutoConfiguration;

@MapperScan(basePackages = "com.project.tripinfo.repository")
@SpringBootApplication(exclude = {MultipartAutoConfiguration.class})
public class DnApplication {

    public static void main (String[] args) {
        SpringApplication.run(DnApplication.class, args);
    }

}
