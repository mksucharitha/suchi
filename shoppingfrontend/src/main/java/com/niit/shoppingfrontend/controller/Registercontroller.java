package com.niit.shoppingfrontend.controller;

import java.util.List;

import org.apache.maven.model.Model;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingbackend.dao.UserDAO;
import com.niit.shoppingbackend.model.User2;

@Controller
public class Registercontroller {
private UserDAO userd;
private User2 user;
	public Registercontroller()
	{
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shoppingbackend.config");
		context.refresh();
		userd=(UserDAO)context.getBean("userDAO");
		System.out.println(userd);
	}
	@RequestMapping(value ="checklogin")
	public ModelAndView check(@RequestParam("username")String username,@RequestParam("password")String password) 
{
		System.out.println(username);
		System.out.println(password);
		boolean isValidUser=userd.isValidUser(username,password);
		if(isValidUser==true)
		{
			
			User2 list=userd.get(username);
			System.out.println(list);
			System.out.println("Role"+list.getRole());
			//System.out.println(role);
			String role=list.getRole();
			if(role.equals("admin")){
			ModelAndView mv=new ModelAndView("admin");
			mv.addObject("welcome", "Welcome admin");
			return mv;}
			else{
				ModelAndView mv=new ModelAndView("mainapge");
				mv.addObject("welcome", "You have Succsfully Logged IN-happy shopping");
				return mv;
			}
				
		}
		else
		{
			ModelAndView mv=new ModelAndView("login");
			mv.addObject("welcome", "username&password mismatch-try again");
			return mv;
		}
			
}

	@RequestMapping(value ="register",method=RequestMethod.POST)
	public ModelAndView regpost(@ModelAttribute("user") User2 user, BindingResult result,Model model) {
	userd.saveOrUpdate(user);
		ModelAndView modelAndView = new ModelAndView("login");
		modelAndView.addObject("regsuccess", "Registered Successfully...!!!&please login");   
		return modelAndView;
	}
	/*
	@RequestMapping("/login")
	public ModelAndView login(){
		ModelAndView modelAndView = new ModelAndView("login");
		modelAndView.addObject("user", usert);
		//modelAndView.addObject("isuserClickedLoginHere", "true"); 
		return modelAndView;
	}*/
	
	/*@RequestMapping(value ="login",method=RequestMethod.POST)
	public <HttpSession> ModelAndView loginpost(@RequestParam("username")String username,@RequestParam("password")String password, HttpSession session) {
	
		ModelAndView modelAndView = new ModelAndView("main1");
		boolean isValidUser=userd.isValidUser(username,password);
		if(isValidUser==true)
		{
			//usert=userd.get(username);
			//session.setAttribute("loggedInUser",usert.getUsername());
			if(usert.getRole()=="admin")
			{	
				modelAndView.addObject("isAdmin","true");
			
			}else{
				modelAndView.addObject("isAdmin","false");
				modelAndView.addObject("loginsuccess", "LoggedIn Successfully");
				
				}	
		}
		else{
			modelAndView.addObject("invalidCredentials","tre");
			modelAndView.addObject("errorMessage","Invalid Credentials..! Not Yet Registered");
			
			
			}
	return modelAndView;
	}
	
	*/
}


	
	