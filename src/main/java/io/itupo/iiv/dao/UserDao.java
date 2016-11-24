package io.itupo.iiv.dao;

import java.util.List;

import io.itupo.iiv.domain.UserBean;

public interface UserDao {
    public UserBean readUser(String username);
    public List<String> readAuthority(String username);
    public void registerUser(UserBean bean);
    public void registerAuthority(UserBean bean);
    public String readUsernameById(int id);
    public int checkUsername(String username);
    public UserBean readUserById(int id);
    public UserBean readUserByUsername(String username);
}
