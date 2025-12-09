package com.example.ClassAssignmentProjectSpotify.config;


import org.springframework.boot.CommandLineRunner;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import com.example.ClassAssignmentProjectSpotify.dto.UserDto;
import com.example.ClassAssignmentProjectSpotify.service.UserService;

@Configuration
public class DataLoaderConfig {

	@Bean
	CommandLineRunner initDatabase(UserService userService) {
	    return args -> {
	        
	        UserDto defaultUser = new UserDto();
	        defaultUser.setUsername("CCT1234");
	        defaultUser.setPassword("54321"); 
	        userService.saveUser(defaultUser);
	        System.out.println("Default user CCT1234 added if not present");
	    };
	}	
	}