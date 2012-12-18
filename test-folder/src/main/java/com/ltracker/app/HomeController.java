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
	
	private static SuperKickingEnterprizyMapper superKickingEnterprizyMapper = new SuperKickingEnterprizyMapper();
		
	@RequestMapping(value = "/")
	public ModelAndView home() {
		ModelAndView mav = new ModelAndView("home");
		mav.addObject("superKickingEnterprizyMapper", superKickingEnterprizyMapper);
		return mav;
	}
	
	@RequestMapping(value = "submitTracker.html")
	public String generateReport(@ModelAttribute("superKickingEnterprizyMapper") SuperKickingEnterprizyMapper superKickingEnterprizyMapper) {
		ModelAndView mav = new ModelAndView("generateReport");
		Date date = new Date();
		mav.addObject("date", date);
		mav.addObject("superKickingEnterprizyMapper", superKickingEnterprizyMapper);
		return "redirect:generateReport.html";
	}
	
	@RequestMapping(value = "generateReport.html")
	public ModelAndView generateReport() {
		ModelAndView mav = new ModelAndView("generateReport");
		mav.addObject("date", new Date());
		mav.addObject("superKickingEnterprizyMapper", superKickingEnterprizyMapper);
		return mav;
	}
	
}
