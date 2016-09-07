package com.niit.shoppingfrontend.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.maven.model.Model;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.Gson;
import com.niit.shoppingbackend.dao.CategoryDAO;
import com.niit.shoppingbackend.model.Category;
import com.niit.shoppingbackend.model.Product;

@Controller
public class Categorycontroller {
  private  CategoryDAO categoryd;
  private Category category;

  public Categorycontroller()
	{
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shoppingbackend.config");
		context.refresh();
		categoryd=(CategoryDAO)context.getBean("categoryDAO");
		System.out.println(categoryd);
	}
  @RequestMapping(value ="/add",method=RequestMethod.GET)
  public String add(ModelMap model)
	{
		
		/*Product product=new Product();
		model.addAttribute("product", product);*/
	  Category category=new Category();
		model.put("category", category);
		model.addAttribute("categoryList",this.categoryd.list());
		return "add";
  }
  @RequestMapping(value ="view1")
	public String add 
	(Category category, BindingResult result,Model model,RedirectAttributes redirectAttributes) {
	categoryd.saveOrUpdate(category);
	return "redirect:/view2";
	
		/*ModelAndView modelAndView = new ModelAndView("view");
		Gson gson = new Gson();
		List<Category> cat=categoryd.list();
		String cdata = gson.toJson(cat);
		System.out.println("data"+cdata);
		modelAndView.addObject("cdata", cdata);
		return modelAndView;*/
	}
  @RequestMapping(value ="view2")
	public ModelAndView viewpost(@ModelAttribute("category") Category category, BindingResult result,Model model) {
	
	  ModelAndView modelAndView = new ModelAndView("view");
		Gson gson = new Gson();
		List<Category> catt=categoryd.list();
		String cdata = gson.toJson(catt);
		System.out.println("data"+cdata);
		modelAndView.addObject("cdata", cdata);
		
		return modelAndView;
	}
 @RequestMapping(value ="/edit")
  public String edit(HttpServletRequest request,ModelMap model){
	 System.out.println("welcome into edit");
	  int id=Integer.parseInt(request.getParameter("catid"));
	 System.out.println("Id"+id);
	  category=categoryd.get(id);
	  System.out.println(category);
	  model.addAttribute("category",category);
  return "add";
  }
  @RequestMapping(value="/del")
  public String deletecat(HttpServletRequest request,ModelMap model){
	  int id=Integer.parseInt(request.getParameter("catid"));
	  System.out.println("Deleted id"+id);
	    category=categoryd.get(id);
	    
		categoryd.delete(id);
		model.addAttribute("categoryList",categoryd.list());
	  return "redirect:/view2";
	  
  }
  
}


 
  
  