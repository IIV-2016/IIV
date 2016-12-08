package io.itupo.iiv.dao;

import java.util.List;

import io.itupo.iiv.domain.UserBean;
import io.itupo.iiv.dto.UserDto;

public interface UserDao {
    public UserBean readUser(String username);
    public List<String> readAuthority(String username);
    public void registerUser(UserBean bean);
    public void registerAuthority(UserBean bean);
    public String readUsernameById(int id);
    public void updateUser(UserBean bean);
    public void updatePassword(UserDto bean);
    public int checkUsername(String username);
    public String checkPassword(UserDto bean);
    public UserBean readUserById(int id);
    public UserBean readUserByUsername(String username);
    public void updateUserLevel(UserBean bean);
}
