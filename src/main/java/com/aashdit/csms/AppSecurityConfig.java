package com.aashdit.csms;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.session.HttpSessionEventPublisher;

import com.aashdit.csms.service.UserDetailsServiceImpl;

@EnableWebSecurity
@Configuration
public class AppSecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	private UserDetailsServiceImpl userDetailsServiceImpl;

	@Bean
	public BCryptPasswordEncoder passwordEncoder() {
		BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
		return bCryptPasswordEncoder;
	}

	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		auth.userDetailsService(userDetailsServiceImpl).passwordEncoder(passwordEncoder());
	}

	@Bean
	public HttpSessionEventPublisher httpSessionEventPublisher() {
		return new HttpSessionEventPublisher();
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		
		http.authorizeRequests()
			.antMatchers("/login").permitAll()
			.antMatchers("/assets/**").permitAll()
			.antMatchers("/dashboard.htm")
			.hasAnyAuthority("ROLE_ADMIN", "ROLE_CUSTOMER", "ROLE_AGENT")  //This URL can be accessed by specified role based loggedin user.  
			/*.antMatchers("/dashboard.htm").authenticated()*/  //This URL can be accessed by any loggedin user.   
				.and().formLogin()
				.loginPage("/login").failureUrl("/login?error").defaultSuccessUrl("/dashboard.htm")
					.usernameParameter("loginUserName").passwordParameter("loginPassword").permitAll().and().logout()
				.logoutUrl("/logout").invalidateHttpSession(true).deleteCookies("JSESSIONID")
					.logoutSuccessUrl("/login?logout").and().httpBasic();
		http.sessionManagement().sessionFixation().newSession();
		http.exceptionHandling().accessDeniedPage("/403"); 
		
	}

}
