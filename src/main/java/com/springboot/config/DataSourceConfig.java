package com.springboot.config;

import javax.sql.DataSource;

import org.mybatis.spring.mapper.MapperScannerConfigurer;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.annotation.Scope;

import com.jolbox.bonecp.BoneCPDataSource;

@Scope("prototype")
@Configuration
@PropertySource(value = {"classpath:jdbc.properties"})
public class DataSourceConfig  {
	 
	    @Value("${jdbc.url}")
	    private String jdbcUrl;

	    @Value("${jdbc.driverClassName}")
	    private String jdbcDriverClassName;

	    @Value("${jdbc.username}")
	    private String jdbcUsername;

	    @Value("${jdbc.password}")
	    private String jdbcPassword;

	    @Bean
	    
	    public DataSource dataSource() {
	        BoneCPDataSource boneCPDataSource = new BoneCPDataSource();
	        boneCPDataSource.setDriverClass(jdbcDriverClassName);
	        boneCPDataSource.setJdbcUrl(jdbcUrl);
	        boneCPDataSource.setUsername(jdbcUsername);
	        boneCPDataSource.setPassword(jdbcPassword);
	        return boneCPDataSource;
	    }
	    
	    // mapper接口的扫描器
	    @Bean
	    public MapperScannerConfigurer mapperScannerConfigurer() {
	        MapperScannerConfigurer mapperScannerConfigurer = new MapperScannerConfigurer();
	        mapperScannerConfigurer.setBasePackage("com.springboot.mapper");
	        return mapperScannerConfigurer;
	    }
}


