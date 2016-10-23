package io.itupo.iiv.configuration;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

import io.itupo.iiv.service.UserService;

@Configuration
@EnableWebSecurity
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

	@Autowired
	UserService userService;

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http
		.csrf().disable()
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
		.headers().frameOptions().disable();
	}

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userService);
	}
}