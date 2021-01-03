package com.aashdit.csms.service;

import java.util.HashSet;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.aashdit.csms.model.LoggedInUser;
import com.aashdit.csms.model.User;
import com.aashdit.csms.repository.UserRepository;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {

	@Autowired
	private UserRepository userRepository;

	public UserDetails loadUserByUsername(String userId) throws UsernameNotFoundException {

		User user = userRepository.findByValidUsers(userId);

		Set<GrantedAuthority> grantedAuthorities = new HashSet<>();
		grantedAuthorities.add(new SimpleGrantedAuthority(user.getRole().getRoleCode()));
		boolean mybool = (user.getIsActive() != 0);

		LoggedInUser liu = new LoggedInUser(user.getUserName(), user.getPassword(), mybool, mybool, mybool, mybool,
				grantedAuthorities, user);

		return liu;

	}

}
