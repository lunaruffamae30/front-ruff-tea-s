package com.lunacompany.ruff_teas.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.lunacompany.ruff_teas.Model.User;

public interface UserRepository extends JpaRepository<User, Long>{

}