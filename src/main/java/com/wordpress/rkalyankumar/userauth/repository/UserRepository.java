package com.wordpress.rkalyankumar.userauth.repository;

import com.wordpress.rkalyankumar.userauth.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository("userRepository")
public interface UserRepository extends JpaRepository<User, Long> {
    public User findByEmail(String email);
}