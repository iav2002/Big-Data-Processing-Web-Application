package com.example.ClassAssignmentProjectSpotify.repository;

import com.example.ClassAssignmentProjectSpotify.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);  // Method to find by username.
}