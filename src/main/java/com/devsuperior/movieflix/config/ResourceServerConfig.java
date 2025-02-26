package com.devsuperior.movieflix.config;

import java.util.Arrays;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.env.Environment;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableResourceServer;
import org.springframework.security.oauth2.config.annotation.web.configuration.ResourceServerConfigurerAdapter;
import org.springframework.security.oauth2.config.annotation.web.configurers.ResourceServerSecurityConfigurer;
import org.springframework.security.oauth2.provider.token.store.JwtTokenStore;

@Configuration
@EnableResourceServer
public class ResourceServerConfig extends ResourceServerConfigurerAdapter {
	
	@Autowired
	private Environment env;

	@Autowired
	private JwtTokenStore tokenStore;
	
	private static final String[] PUBLIC = { "/oaut/token", "/h2-console/**" };
	// configurar VISITOR e MEMBER
	//private static final String[] OPERATOR_OR_ADMIN = { "/products/**", "/categories/**" };
	//private static final String[] ADMIN = {"/users/**"};
	
	@Override
	public void configure(ResourceServerSecurityConfigurer resources) throws Exception {
		resources.tokenStore(tokenStore);
	}

	@Override
	public void configure(HttpSecurity http) throws Exception {
		
		//config para permitir o h2-console para o profile test
		if( Arrays.asList(env.getActiveProfiles()).contains("test") ) {
			http.headers().frameOptions().disable();
		}
		/*
		http.authorizeRequests()
			.antMatchers(PUBLIC).permitAll()
			.antMatchers(HttpMethod.GET, OPERATOR_OR_ADMIN).permitAll()
			.antMatchers(OPERATOR_OR_ADMIN).hasAnyRole("OPERATOR", "ADMIN")
			.antMatchers(ADMIN).hasRole("ADMIN")
			.anyRequest().authenticated();*/
		
		http.authorizeRequests()
		.antMatchers(PUBLIC).permitAll()
		.anyRequest().authenticated();
	}

}
