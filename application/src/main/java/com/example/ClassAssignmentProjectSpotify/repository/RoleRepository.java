package com.example.ClassAssignmentProjectSpotify.repository;

import com.example.ClassAssignmentProjectSpotify.model.Role;
import org.springframework.data.jpa.repository.JpaRepository;


public interface RoleRepository extends JpaRepository<Role, Long>{
	
	Role findByName(String name);

	
	
	
}
