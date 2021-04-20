//package com.project.tripinfo.config;
//
//import com.project.tripinfo.intercepter.LoginIntercepter;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
//import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
//
//@Configuration
//public class WebMvcConfig implements WebMvcConfigurer {
//
//
//    @Override
//    public void addInterceptors (InterceptorRegistry registry) {
//        registry.addInterceptor(new LoginIntercepter())
//                .addPathPatterns("/loginCheck")
//                .excludePathPatterns("/**");
//                .excludePathPatterns("/css/**","/assets/**",
//                "/img/**","/js/**","/login/**");
//    }
//
//}
