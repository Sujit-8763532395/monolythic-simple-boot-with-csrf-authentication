package com.aashdit.csms.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jboss.logging.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class UserController {

	private final static Logger logger = Logger.getLogger(UserController.class.getName());

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String dashBoardPage(ModelMap model, HttpServletRequest request, HttpServletResponse response, String error,
			String logout, RedirectAttributes message) {

		if (error != null) {
			model.addAttribute("error_msg", "Your username and password is invalid.");
			message.addFlashAttribute("loginFail", "Invalid User Credential");
			return "redirect:/";
		} else if (logout != null) {
			model.addAttribute("success_msg", "You have been logged out successfully.");
			message.addFlashAttribute("logout", "User Logged Out Successfully");
			return "redirect:/";
		} else {
			return "redirect:/dashboard.htm";
		}

	}

}
