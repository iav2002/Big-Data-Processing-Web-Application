package com.example.ClassAssignmentProjectSpotify.controller;

import com.example.ClassAssignmentProjectSpotify.dto.UserDto;
import com.example.ClassAssignmentProjectSpotify.service.UserService;

import jakarta.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


@Controller
public class AuthController {
	
	private UserService userService;
	
	public AuthController(UserService userService) {
		this.userService = userService;
	}

	//Handler method to handle home page request
	@GetMapping("/index")
	public String home() {
		return "index";
	}
	
	@GetMapping("/register")
	public String showRegistrationForm(Model model) {
		UserDto user = new UserDto();
		model.addAttribute("user", user);
		return "register";
	}
	@PostMapping("/register/save")
	public String registerUser(@Valid @ModelAttribute("user") UserDto userDto, BindingResult result, RedirectAttributes redirectAttributes) {
	    if (result.hasErrors()) {
	        result.getAllErrors().forEach(error -> System.out.println("Error: " + error.toString()));//used for debbuging
	        return "register";
	    }
	    try {
	        
	        userService.saveUser(userDto);
	        redirectAttributes.addFlashAttribute("successMessage", "Registration successful! Redirecting to login...");
	        return "redirect:/login";
	    } catch (Exception e) {
	        System.out.println("Registration failed: " + e.getMessage());
	        e.printStackTrace(); //used for debbuging 
	        redirectAttributes.addFlashAttribute("error", "Registration failed: " + e.getMessage());//used for debbuging
	        return "register";
	    }
	}
	

	@GetMapping("/login")
	public String login() {
		return "login";
	}
}
