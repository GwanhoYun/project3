package org.hj.controller;


import java.util.Locale;

import org.hj.model.ExampleVO;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
// 접근제어자  반환타입  메서드명(매개변수, 매개변수)
	public String home(Locale locale, Model model) {
		return "index";
	}
	@RequestMapping(value = "/exam", method = RequestMethod.GET)
	// 접근제어자  반환타입  메서드명(매개변수, 매개변수)
		public String exam(ExampleVO ev, Model model) {
			
		
			return "success";
		}
	

	
	
}
