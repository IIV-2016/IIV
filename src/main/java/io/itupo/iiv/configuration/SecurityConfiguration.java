package io.itupo.iiv.configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.social.security.SocialUserDetailsService;
import org.springframework.social.security.SpringSocialConfigurer;

import io.itupo.iiv.service.SocialUserDetailsServiceImpl;
import io.itupo.iiv.service.UserService;

@Configuration
@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

	@Autowired
	UserService userService;

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http
		.authorizeRequests()
			.antMatchers("/**/community*").authenticated()
			.antMatchers("/**/alumni/**").hasRole("ALUMNI")
			.antMatchers("/**").permitAll()
		.and()
			.formLogin()
			.loginPage("/user/login").permitAll()
			.defaultSuccessUrl("/home")
		.and()
			.logout()
			.logoutUrl("/user/logout")
			.logoutSuccessUrl("/home")
		.and()
			.apply(new SpringSocialConfigurer());
	}

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userService);
	}
	
	@Bean
	public SocialUserDetailsService socialUserDetailsService() {
		return new SocialUserDetailsServiceImpl(userService);
	}
}