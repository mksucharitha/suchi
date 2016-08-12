package com.niit.shoppingfrontend.controller;

import java.util.Map;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.shoppingbackend.model.Category;
import com.niit.shoppingbackend.model.User2;
@Controller
public class Logincontroller {
	
	
	@RequestMapping("/")
	public String gotomainpage()
	{
		
		
		return "mainpage";
	}
	@RequestMapping("/login")
	public String gotologin()
	{
		
		
		return "login";
	}
	@RequestMapping("/reg")
	public String gotoreg(Map<String,Object>model)
	{
		System.out.println("welcome into registration form");
		User2 user=new User2();
		model.put("user", user);
		return"reg";
	}


	@RequestMapping("/about")
	public String gotoabout()
	{
		return"about";
	}
	@RequestMapping("/contact")
	public String gotocontact()
	{
		return"contact";
	}
	@RequestMapping("/home")
	public String gotofirst()
	{
		return "mainpage";
	}
	@RequestMapping("/add")
	public String gotoadd(Map<String,Object>model)
	{
		
		Category category=new Category();
		model.put("category", category);
		return "add";
	}
	
	
}
