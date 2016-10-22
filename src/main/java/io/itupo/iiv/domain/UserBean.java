package io.itupo.iiv.domain;

import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class UserBean implements UserDetails {
	private int id;
	private String username;
	private String password;
	private String firstname;
	private String lastname;
	private String email;
	private String level;
	private boolean isAccountNonExpired;
	private boolean isAccountNonLocked;
	private boolean isCredentialsNonExpired;
	private boolean isEnabled;
	private Collection<? extends GrantedAuthority> authorities;

	public static UserBean fromVO(UserCreateRequestVO userCreateRequestVO) {
		UserBean user = new UserBean();

		user.setLastname(userCreateRequestVO.getLastName());
		user.setFirstname(userCreateRequestVO.getFirstName());
		user.setEmail(userCreateRequestVO.getEmail());

		return user;
	}
}