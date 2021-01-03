package com.aashdit.csms.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

	final static Logger logger = LogManager.getLogger(HomeController.class);

	@RequestMapping(value = "/dashboard.htm", method = RequestMethod.GET)
	public String dashboard(Model model, HttpServletRequest request) {

		return "adminPannel";
	}

}
