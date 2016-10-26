package io.itupo.iiv.dao;

import java.util.List;

import io.itupo.iiv.domain.UserBean;

public interface UserDao {
    public UserBean readUser(String username);
    public List<String> readAuthority(String username);
    public void registerUser(UserBean bean);
    public void registerAuthority(String username);
    public String readUsernameById(int id);
}
