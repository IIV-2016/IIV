package io.itupo.iiv.service;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import io.itupo.iiv.dao.UserDao;
import io.itupo.iiv.domain.UserBean;
import io.itupo.iiv.domain.UserCreateRequestVO;

@Service
public class UserService implements UserDetailsService{
	
	@Autowired
	private UserDao userDao;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		UserBean user = userDao.readUser(username);
		user.setAuthorities(getAuthorities(username));

		return user;
	}
    
	public Collection<GrantedAuthority> getAuthorities(String username) {
		List<String> string_authorities = userDao.readAuthority(username);
		List<GrantedAuthority> authorities = new ArrayList<GrantedAuthority>();
		for (String authority : string_authorities) {
			authorities.add(new SimpleGrantedAuthority(authority));
		}
		return authorities;
	}
	
	public void registerUser(UserBean bean){
		userDao.registerUser(bean);
		userDao.registerAuthority(bean.getUsername());
	}
	public UserBean create(UserCreateRequestVO userCreateRequestVO){
		UserBean user = UserBean.fromVO(userCreateRequestVO);
		user.setPassword(userCreateRequestVO.getPassword());
		userDao.registerUser(user);
		userDao.registerAuthority(user.getUsername());

		return user;
	}
}
