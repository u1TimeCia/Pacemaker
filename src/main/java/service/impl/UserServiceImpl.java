package service.impl;

import dao.UserDao;
import dao.impl.UserDaoImpl;
import pojo.User;
import service.UserService;

public class UserServiceImpl implements UserService {

    UserDao userDao = new UserDaoImpl();

    @Override
    public void registerUser(User user) {
        userDao.saveUser(user);
    }

    @Override
    public User login(User user) {
        return userDao.queryByUsernameAndPwd(user.getUsername(), user.getPassword());
    }

    @Override
    public boolean existUser(String username) {
        if(userDao.queryUserByUsername(username) == null){
            return false;
        }
        return true;
    }

    @Override
    public boolean maximumReached() {
         if(userDao.queryTotalUser()>=10){
             return true;
         }
         return false;
    }
}
