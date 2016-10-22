package io.itupo.iiv.service;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.social.security.SocialUser;
import org.springframework.social.security.SocialUserDetails;
import org.springframework.social.security.SocialUserDetailsService;

public class SocialUserDetailsServiceImpl implements SocialUserDetailsService {

	private UserService userService;

	public SocialUserDetailsServiceImpl(UserService userService) {
		this.userService = userService;
	}

	@Override
	public SocialUserDetails loadUserByUserId(String userId) throws UsernameNotFoundException {

		UserDetails userDetails = userService.loadUserByUsername(userId);
		if (userDetails == null) throw new UsernameNotFoundException("Not Found ID : " + userId);
		
		return new SocialUser(userDetails.getUsername(), userDetails.getPassword(), userDetails.getAuthorities());
	}
}
