package com.example.ClassAssignmentProjectSpotify.service;

import com.example.ClassAssignmentProjectSpotify.dto.UserDto;
import com.example.ClassAssignmentProjectSpotify.model.Role;
import com.example.ClassAssignmentProjectSpotify.model.User;
import com.example.ClassAssignmentProjectSpotify.repository.RoleRepository;
import com.example.ClassAssignmentProjectSpotify.repository.UserRepository;

import jakarta.transaction.Transactional;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import java.util.Arrays;



@Service
@Transactional
public class UserServiceImpl implements UserService {

    private UserRepository userRepository;
    private RoleRepository roleRepository;
    private PasswordEncoder passwordEncoder;

    public UserServiceImpl(UserRepository userRepository, RoleRepository roleRepository, PasswordEncoder passwordEncoder) {
        this.userRepository = userRepository;
        this.roleRepository = roleRepository;
        this.passwordEncoder = passwordEncoder;
    }
    
    @Override
    public void saveUser(UserDto userDto) {
        System.out.println("Processing user: " + userDto.getUsername());
        // Check if user already exists to prevent duplicate entries

        User user = userRepository.findByUsername(userDto.getUsername());
        if (user == null) {
            user = new User();
            user.setUsername(userDto.getUsername());
            user.setPassword(passwordEncoder.encode(userDto.getPassword())); // Encrypt and set password
            Role role = roleRepository.findByName("ROLE_USER"); // Check if the default role exists, create if not
            if (role == null) {
                role = new Role();
                role.setName("ROLE_USER");
                role = roleRepository.save(role);
            }
            user.setRoles(Arrays.asList(role));
            userRepository.save(user);
            System.out.println("User registered successfully!");
        } else {
            System.out.println("User already exists: " + userDto.getUsername());
        }
    }
    
    // Retrieve a user by username
    @Override
    public User findUserByUsername(String username) {
        return userRepository.findByUsername(username);
    }

}
