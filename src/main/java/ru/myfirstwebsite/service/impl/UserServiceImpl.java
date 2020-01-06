package ru.myfirstwebsite.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import ru.myfirstwebsite.dao.UserDao;
import ru.myfirstwebsite.domain.User;
import ru.myfirstwebsite.domain.enums.Role;
import ru.myfirstwebsite.service.UserService;

import java.util.Collections;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    public UserDao userDao;

    @Autowired
    private PasswordEncoder passwordEncoder;

    @Autowired
    public void setUserDao(UserDao userDao) {
        this.userDao = userDao;
    }

    @Override
    public List<User> findAll() {
        return userDao.findAll();
    }

    @Override
    public boolean save(User user) {
        Long userIdFromDb = userDao.findUserIdByEmail(user.getEmail());

        if(userIdFromDb != null) {
            return false;
        }

        user.setRoles(Collections.singleton(Role.USER));
        user.setPass(passwordEncoder.encode(user.getPass()));

        userDao.save(user);

        return true;
    }

    @Override
    public User getById(Long id) {
        return userDao.getById(id);
    }

    @Override
    public void update(User user) {
        userDao.update(user);
    }

    @Override
    public void delete(Long id) {
        userDao.delete(id);
    }

    @Override
    public Long getIdByUserName(String username) throws UsernameNotFoundException {
        Long userId = userDao.getIdByUserName(username);

        if (userId == null) {
            throw new UsernameNotFoundException("User not found");
        }
        return userId;
    }
}
