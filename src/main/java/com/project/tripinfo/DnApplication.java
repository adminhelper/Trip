package com.project.tripinfo;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@MapperScan(basePackageClasses = DnApplication.class)
@SpringBootApplication
public class DnApplication {

    public static void main (String[] args) {
        SpringApplication.run(DnApplication.class, args);
    }

}
