package com.project.tripinfo.config;

import com.project.tripinfo.intercepter.LoginInterceptor;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class LoginConfig implements WebMvcConfigurer {

    @Override
    public void addInterceptors (InterceptorRegistry registry) {
        registry.addInterceptor(new LoginInterceptor())
                .addPathPatterns("/login","/mypage")
                //패턴에 url입력하면 인터셉터
                .excludePathPatterns("/login", "/css/**", "/js/**",
                        "/idCheck", "/loginCheck");
    }
}
