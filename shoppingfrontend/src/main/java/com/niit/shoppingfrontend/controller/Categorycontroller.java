package com.niit.shoppingfrontend.controller;

import java.util.List;

import org.apache.maven.model.Model;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.shoppingbackend.dao.CategoryDAO;
import com.niit.shoppingbackend.model.Category;

@Controller
public class Categorycontroller {
  private  CategoryDAO categoryd;

  public Categorycontroller()
	{
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shoppingbackend.config");
		context.refresh();
		categoryd=(CategoryDAO)context.getBean("categoryDAO");
		System.out.println(categoryd);
	}
  @RequestMapping(value ="category",method=RequestMethod.POST)
	public ModelAndView addpost(@ModelAttribute("category") Category category, BindingResult result,Model model) {
	categoryd.saveOrUpdate(category);
		ModelAndView modelAndView = new ModelAndView("view");
		List <Category> data=categoryd.list();
		for(Category c:data)
			System.out.println(c.getName());
		modelAndView.addObject("categoryList",categoryd.list());
		return modelAndView;
	}
 /* @RequestMapping(value ="category",method=RequestMethod.POST)
 	public ModelAndView viewpost(@ModelAttribute("category") Category category, BindingResult result,Model model) {
 	categoryd.saveOrUpdate(category);
 		ModelAndView modelAndView = new ModelAndView("");
 		modelAndView.addObject("categoryList",categoryd.list());
 		return modelAndView;
 	}*/
	
}
