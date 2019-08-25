package com.springboot.config;

import com.springboot.interceptor.LoginRequiredInterceptor;
import com.springboot.interceptor.PassportInterceptor;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Configuration
//@EnableWebMvc
public class WebConfig extends WebMvcConfigurerAdapter  {
	@Override
    public void addInterceptors(InterceptorRegistry registry) {
        //拦截规则：除了login，其他都拦截判断
        registry.addInterceptor(new PassportInterceptor());
        registry.addInterceptor(new LoginRequiredInterceptor()).addPathPatterns("/memberUI","order_confirm",
        															"/bookSeat");
        super.addInterceptors(registry);
    }
}
