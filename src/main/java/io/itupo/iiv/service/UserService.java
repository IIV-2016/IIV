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
import io.itupo.iiv.dto.UserDto;

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
		userDao.registerAuthority(bean);
	}
	
	public void updateUser(UserBean bean){
		if(bean.getLevel().equals("USER")){
			bean.setYear("0");
		}
		userDao.updateUserLevel(bean);
		userDao.updateUser(bean);
	}
	
	public void updatePassword(UserDto bean){
        String rawPassword = bean.getPassword();
        String encodedPassword = new BCryptPasswordEncoder().encode(rawPassword);
        bean.setPassword(encodedPassword);
		userDao.updatePassword(bean);
	}
	
    public String readUsernameById(int id){
    	return userDao.readUsernameById(id);
    }
    public int checkUsername(String username){
    	return userDao.checkUsername(username);
    }
    public int checkPassword(UserDto bean){
        String rawPassword = bean.getPassword();
        String encodedPassword = new BCryptPasswordEncoder().encode(rawPassword);
        bean.setPassword(encodedPassword);
        System.out.println(bean);
    	if((userDao.checkPassword(bean)).equals(encodedPassword)){
    		return 1;
    	}else{
    		return 0;
    	}
    }
    public PasswordEncoder passwordEncoder() {
         return this.passwordEncoder;
    }
    public UserBean readUserById(int id){
    	return userDao.readUserById(id);
    }
    public UserBean readUserByUsername(String username){
    	return userDao.readUserByUsername(username);
    }
    public void updateUserLevel(UserBean bean){
    	userDao.updateUserLevel(bean);
    }
    public List<UserBean> readAlumniUserList(){
    	return userDao.readAlumniUserList();
    }
}
