package com.ltracker.app;

import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.ltracker.domain.SuperKickingEnterprizyMapper;


@SessionAttributes({ "superKickingEnterprizyMapper" })
@Controller
public class HomeController {
		
	@RequestMapping(value = "/")
	public ModelAndView home() {
		ModelAndView mav = new ModelAndView("home");
		SuperKickingEnterprizyMapper superKickingEnterprizyMapper = new SuperKickingEnterprizyMapper();
		mav.addObject("superKickingEnterprizyMapper", superKickingEnterprizyMapper);
		return mav;
	}
	
	@RequestMapping(value = "generateReport.html")
	public ModelAndView generateReport(@ModelAttribute("superKickingEnterprizyMapper") SuperKickingEnterprizyMapper superKickingEnterprizyMapper) {
		ModelAndView mav = new ModelAndView("generateReport");
		Date date = new Date();
		mav.addObject("date", date);
		mav.addObject("superKickingEnterprizyMapper", superKickingEnterprizyMapper);
		return mav;
	}
	
}
