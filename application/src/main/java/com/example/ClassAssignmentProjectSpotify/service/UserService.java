package com.example.ClassAssignmentProjectSpotify.service;

import com.example.ClassAssignmentProjectSpotify.dto.UserDto;
import com.example.ClassAssignmentProjectSpotify.model.User;

public interface UserService {
	
	void saveUser(UserDto userDto);
	
	User findUserByUsername(String username);
	
	
}
