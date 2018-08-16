package com.ibm;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

// Adding this project to github

@Controller
public class FirstController{
	// MultiAction Controller class means a controller class having multiple request handling methods.
	/*
	@RequestMapping(value="/welcome/{countryName}/{userName}")
	// public ModelAndView Welcome(@PathVariable("userName") String name,@PathVariable("countryName") String country){
		public ModelAndView Welcome(@PathVariable Map<String,String> pathVars) {
		
		String name=pathVars.get("userName");
		String country=pathVars.get("countryName");
	
		ModelAndView mv=new ModelAndView("Hello");
		mv.addObject("welcome","Hi "+name+"! Welcome to this application. You are from "+country+".");
		return mv;
	}*/
	
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.setDisallowedFields(new String[] {"studentMobile"});
		SimpleDateFormat dateFormat=new SimpleDateFormat("yyyy-mm-dd");
		binder.registerCustomEditor(Date.class, "studentDOB",new CustomDateEditor(dateFormat,false));
		binder.registerCustomEditor(String.class,"studentName",new StudentNameEditor());
	}
	
	
	@RequestMapping(value="/admissionForm.html", method=RequestMethod.GET)
	public ModelAndView getAdmissionForm() {
		
		ModelAndView model=new ModelAndView("AdmissionForm");
		return model;
		
	}
	
	@ModelAttribute
	public void addingCommonObjects(Model model1) {
		model1.addAttribute("headerMessage", "Nepal College of Engineering, Nepal");
	}
	
	
	
	@RequestMapping(value="/submitAdmissionForm.html", method=RequestMethod.POST)
	public ModelAndView submitAdmissionForm(@Valid @ModelAttribute("student1") Student student1, BindingResult result) {
		
		if(result.hasErrors()) {

			ModelAndView model=new ModelAndView("AdmissionForm");
			return model;
		}
		
		
		ModelAndView model=new ModelAndView("AdmissionSuccess");
		return model;
	}
	
	

}
