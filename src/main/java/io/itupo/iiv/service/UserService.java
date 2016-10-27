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
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import io.itupo.iiv.dao.UserDao;
import io.itupo.iiv.domain.UserBean;

@Service
public class UserService implements UserDetailsService{
	
	@Autowired
	private UserDao userDao;
	
    private PasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
	
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
        String rawPassword = bean.getPassword();
        String encodedPassword = new BCryptPasswordEncoder().encode(rawPassword);
        bean.setPassword(encodedPassword);
		userDao.registerUser(bean);
		userDao.registerAuthority(bean.getUsername());
	}
	
    public String readUsernameById(int id){
    	return userDao.readUsernameById(id);
    }
    public int checkUsername(String username){
    	return userDao.checkUsername(username);
    }
    
    public PasswordEncoder passwordEncoder() {
         return this.passwordEncoder;
    }
}
