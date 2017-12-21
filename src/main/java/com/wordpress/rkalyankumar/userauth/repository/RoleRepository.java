package com.wordpress.rkalyankumar.userauth.repository;

import com.wordpress.rkalyankumar.userauth.model.Role;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;


@Repository("roleRepository")
public interface RoleRepository extends JpaRepository<Role, Integer>{
    public Role findByRole(String role);
}