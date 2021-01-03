package com.aashdit.csms.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.aashdit.csms.model.Role;

public interface RoleRepository extends JpaRepository<Role, Long>{
	
}
