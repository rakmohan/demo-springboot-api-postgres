package com.example.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.model.User;

/**
 * The interface User repository.
 *
 * @author Rakesh Mohan
 */
@Repository
public interface UserRepository extends JpaRepository<User, Long> {}