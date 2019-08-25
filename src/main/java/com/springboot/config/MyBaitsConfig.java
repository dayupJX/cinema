	package com.springboot.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.apache.ibatis.plugin.Interceptor;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.mapper.MapperScannerConfigurer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.AutoConfigureAfter;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.core.io.support.ResourcePatternResolver;

import com.github.pagehelper.PageInterceptor;


@Configuration //相当于Spring里的spring-application-dao.xml配置文件
@AutoConfigureAfter(DataSourceConfig.class) //保证在DataSourceConfig实例化之后再实例化该类
public class MyBaitsConfig {

	@Autowired
	private DataSource dataSource;
	
	@Bean
	public SqlSessionFactoryBean sqlSessionFactoryBean() {
		SqlSessionFactoryBean sqlSessionFactoryBean = new SqlSessionFactoryBean();
		sqlSessionFactoryBean.setDataSource(dataSource);
		 ResourcePatternResolver resolver = new PathMatchingResourcePatternResolver();
	     Resource mybatisConfigXml = resolver.getResource("classpath:mybaits/SqlMapConfig.xml");
		 sqlSessionFactoryBean.setConfigLocation(mybatisConfigXml);
		 sqlSessionFactoryBean.setTypeAliasesPackage("com.springboot.domain");
		 
		//分页插件
		    Properties properties = new Properties();
		    properties.setProperty("helperDialect", "mysql");
		    properties.setProperty("offsetAsPageNum", "true");
		    properties.setProperty("rowBoundsWithCount", "true");
		    properties.setProperty("reasonable", "true");
		    Interceptor interceptor = new PageInterceptor();
		    interceptor.setProperties(properties);
		    sqlSessionFactoryBean.setPlugins(new Interceptor[] {interceptor});
		return sqlSessionFactoryBean; 
	}
}