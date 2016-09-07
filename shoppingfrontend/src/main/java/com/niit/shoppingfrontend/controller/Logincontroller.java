package com.niit.shoppingfrontend.controller;

import java.util.Map;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.shoppingbackend.model.Category;
import com.niit.shoppingbackend.model.Product;
import com.niit.shoppingbackend.model.Supplier;
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
		User2 us=new User2();
		model.put("user2", us);
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
	/*@RequestMapping("/add")
	public String gotoadd(Map<String,Object>model)
	{
		
		Category category=new Category();
		model.put("category", category);
		return "add";
	}*/
	/*@RequestMapping("/padd")
	public String gotopadd(Map<String,Object>model)
	{
		
		Product product=new Product();
		model.put("product", product);
		model.put("categorylist",categoryd.list);
		return "padd";
	}*/
	@RequestMapping("/sadd")
	public String gotosadd(Map<String,Object>model)
	{
		
		Supplier supplier=new Supplier();
		model.put("supplier", supplier);
		return "sadd";
	}
	@RequestMapping("/view")
	public String gotoview(Map<String,Object>model)
	{
		Category category=new Category();
		model.put("category", category);
		return "view";
	}
	/*@RequestMapping("/pview")
	public String gotopview(Map<String,Object>model)
	{
		Product product=new Product();
		model.put("product", product);
		return"pview";
	}*/
	@RequestMapping("/sview")
	public String gotosview(Map<String,Object>model)
	{
		Supplier sup=new Supplier();
		model.put("supplier", sup);
		return"sview";
	}
	
	/*@RequestMapping("/mainview")
	public String gotomainview()
	{
		
		
		return "mainview";
	}*/
}
