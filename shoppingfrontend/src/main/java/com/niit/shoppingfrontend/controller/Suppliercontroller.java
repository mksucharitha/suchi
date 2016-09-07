package com.niit.shoppingfrontend.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.maven.model.Model;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.Gson;
import com.niit.shoppingbackend.dao.SupplierDAO;
import com.niit.shoppingbackend.model.Category;
import com.niit.shoppingbackend.model.Product;
import com.niit.shoppingbackend.model.Supplier;

@Controller
public class Suppliercontroller {
	private SupplierDAO supplierd;
	private Supplier supplier;

	  public Suppliercontroller()
		{
			AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
			context.scan("com.niit.shoppingbackend.config");
			context.refresh();
			supplierd=(SupplierDAO)context.getBean("supplierDAO");
			System.out.println(supplierd);
		}
	  @RequestMapping(value ="view5",method=RequestMethod.POST)
		public String sadd(Supplier supplier, BindingResult result,Model model,RedirectAttributes redirectAttributes) {
		supplierd.saveOrUpdate(supplier);
			/*ModelAndView modelAndView = new ModelAndView("sview");
			Gson gson = new Gson();
			List<Supplier> sup=supplierd.list();
			String sdata = gson.toJson(sup);
			System.out.println("data"+sdata);
			modelAndView.addObject("sdata", sdata);
			
			return modelAndView;*/
		return "redirect:/view6";
		}
	  @RequestMapping(value ="view6")
		public ModelAndView sviewpost(@ModelAttribute("supplier") Supplier supplier, BindingResult result,Model model) {
		
			ModelAndView modelAndView = new ModelAndView("sview");
			Gson gson = new Gson();
			List<Supplier> sup=supplierd.list();
			String sdata = gson.toJson(sup);
			System.out.println("data"+sdata);
			modelAndView.addObject("sdata", sdata);
			
			return modelAndView;
			
		}
	  @RequestMapping(value ="/edit2")
	  public String edit(HttpServletRequest request,ModelMap model){
		 System.out.println("welcome into edit");
		  int id=Integer.parseInt(request.getParameter("supid"));
		 System.out.println("Id"+id);
		  supplier=supplierd.get(id);
		  System.out.println(supplier);
		  model.addAttribute("supplier",supplier);
	  return "sadd";
	  }
	  @RequestMapping(value="/del2")
	  public String deletepro(HttpServletRequest request,ModelMap model){
		  int id=Integer.parseInt(request.getParameter("supid"));
		    supplier=supplierd.get(id);
		    
			supplierd.delete(id);
			model.addAttribute("supplierList",supplierd.list());
		  return "redirect:/view4";
}
		
}
