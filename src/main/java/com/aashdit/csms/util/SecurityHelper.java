package com.aashdit.csms.util;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

import com.aashdit.csms.model.LoggedInUser;
import com.aashdit.csms.model.User;

public class SecurityHelper {

	public static User getCurrentUser() {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		LoggedInUser currentUser = (LoggedInUser) auth.getPrincipal();
		return currentUser.getDbUser();
	}

}
