package com.portfolio.web.etc.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/etc/*")
public class EtcController {

	private static final Logger logger = LoggerFactory.getLogger(EtcController.class);

	@RequestMapping("/legal")
	public String legal() {
		logger.info("legal");
		return "etc/legal";
	}

	@RequestMapping("/policy")
	public String policy() {
		logger.info("policy");
		return "etc/policy";
	}

}
