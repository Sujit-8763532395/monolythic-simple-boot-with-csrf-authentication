package com.aashdit.csms.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.aashdit.csms.model.User;

public interface UserRepository extends JpaRepository<User, Long> {

	@Query("From User where userId=:userId") 
	User findByValidUsers(@Param("userId")String userId);
	
}
