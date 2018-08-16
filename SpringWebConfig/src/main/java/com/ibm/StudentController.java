package com.ibm;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class StudentController {

	@RequestMapping(value="/LoginForm", method=RequestMethod.GET)
	public ModelAndView LoginForm() {
		ModelAndView model=new ModelAndView("LoginForm");
		return model;
	}
	
	@RequestMapping(value="/SuccessLogin",method=RequestMethod.POST)
	public ModelAndView submitAdmissionForm(@RequestParam("studentLoginId") String name,@RequestParam("studentPassword") String hobby) {
		
		ModelAndView model=new ModelAndView("SuccessLogin");
		model.addObject("msg", "Hi "+name+"! You have successfully logged in.");
		return model;
	}
}
