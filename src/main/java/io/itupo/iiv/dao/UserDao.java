package io.itupo.iiv.dao;

import java.util.List;

import io.itupo.iiv.domain.UserBean;
import io.itupo.iiv.dto.UserDto;

public interface UserDao {
    UserBean readUser(String username);
    List<String> readAuthority(String username);
    void registerUser(UserBean bean);
    void registerAuthority(UserBean bean);
    String readUsernameById(int id);
    void updateUser(UserBean bean);
    void updatePassword(UserDto bean);
    int checkUsername(String username);
    String checkPassword(UserDto bean);
    UserBean readUserById(int id);
    UserBean readUserByUsername(String username);
    void updateUserLevel(UserBean bean);
    List<UserBean> readAlumniUserList();
}
