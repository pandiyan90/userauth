package com.wordpress.rkalyankumar.userauth.service;

import com.wordpress.rkalyankumar.userauth.model.User;

public interface UserService {
    public User findUserByEmail(String email);
    public void saveUser(User user);
}
