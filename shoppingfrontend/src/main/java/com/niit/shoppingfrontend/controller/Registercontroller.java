package com.niit.shoppingfrontend.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.maven.model.Model;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
/*import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;*/
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
	public ModelAndView gotocheck(@RequestParam("username")String username,@RequestParam("password")String password,HttpSession session) {
	/*public ModelAndView gotosecure(@RequestParam(value="error",required=false) String error,Model model,Authentication auth)@RequestParam("username")String username,@RequestParam("password")String password,HttpSession session) 
 for(GrantedAuthority authe:auth.getAuthorities()){
	String role=authe.getAuthority();
	 System.out.println(role);
 }
 if(error!=null)
 {
	 String arg="username and password do not exists please login as new user";*/
	 
		System.out.println(username);
		System.out.println(password);
		boolean isValidUser=userd.isValidUser(username,password);
		if(isValidUser==true)
		{
			
			User2 list=userd.get(username);
			System.out.println(list);
			session.setAttribute("loggedInUser",list.getUsername());
			//System.out.println(role);
			String role=list.getRole();
			if(role.equals("admin")){
			ModelAndView mv=new ModelAndView("admin");
			mv.addObject("welcome", "Welcome admin");
			return mv;}
			else{
				ModelAndView mv=new ModelAndView("mainpage");
				mv.addObject("welcome1","welcome"+list.getUsername());
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
	public ModelAndView regpost(@Valid@ModelAttribute("user2") User2 user, BindingResult result,Model model) {
		if(result.hasErrors()){
			ModelAndView model1=new ModelAndView("reg");
			return model1;
		}
	userd.saveOrUpdate(user);
		ModelAndView modelAndView = new ModelAndView("login");
		modelAndView.addObject("regsuccess", "Registered Successfully...!!!&please login");   
		return modelAndView;
	}
	
	/*@RequestMapping("/login")
	public ModelAndView login(){
		ModelAndView modelAndView = new ModelAndView("login");
		modelAndView.addObject("user", user);
		//modelAndView.addObject("isuserClickedLoginHere", "true"); 
		return modelAndView;
	}*/
	
	

	@RequestMapping(value ="logout")
	public ModelAndView logout(HttpServletRequest request,HttpSession session){
		ModelAndView modelAndView = new ModelAndView("mainpage");
		session.invalidate();
		session=request.getSession(true);
		modelAndView.addObject("loggedOut", "true");
		modelAndView.addObject("logout", "Loggedout Successfully");
		return modelAndView;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping(value ="signout")
	public ModelAndView signout(HttpServletRequest request,HttpSession session){
		ModelAndView modelAndView = new ModelAndView("mainpage");
		session.invalidate();
		session=request.getSession(true);
		/*modelAndView.addObject("loggedOut", "true");*/
		modelAndView.addObject("signout", "signout Successfully");
		return modelAndView;
	}
}


	
	