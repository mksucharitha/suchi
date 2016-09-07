package com.niit.shoppingfrontend.controller;


import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.apache.maven.model.Model;
import org.springframework.cglib.transform.impl.AddDelegateTransformer;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.Gson;
import com.niit.shoppingbackend.dao.CategoryDAO;
import com.niit.shoppingbackend.dao.ProductDAO;
import com.niit.shoppingbackend.dao.SupplierDAO;
import com.niit.shoppingbackend.model.Category;
import com.niit.shoppingbackend.model.Product;
import com.niit.shoppingbackend.model.Supplier;

@Controller
public class Productcontroller {
	String path = "C:/wrkshop/shoppingfrontend/src/main/webapp/resources/images/";
	private ProductDAO productd;
     private Product product;
     private  CategoryDAO categoryd;
     private Category category;
     private SupplierDAO supplierd;
     private Supplier supplier;
	  public Productcontroller()
		{
			AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
			context.scan("com.niit.shoppingbackend.config");
			context.refresh();
			productd=(ProductDAO)context.getBean("productDAO");
			System.out.println(productd);
			
			categoryd=(CategoryDAO)context.getBean("categoryDAO");
			System.out.println(categoryd);
			/*context.close();*/
			supplierd=(SupplierDAO)context.getBean("supplierDAO");
			System.out.println(supplierd);
		}
	  /*public  void Categorycontroller()
		{
			AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
			context.scan("com.niit.shoppingbackend.config");
			context.refresh();
			categoryd=(CategoryDAO)context.getBean("categoryDAO");
			System.out.println(categoryd);
		}*/
	  @RequestMapping(value ="/pradd",method=RequestMethod.GET)
	  public String padd(ModelMap model)
		{
			
			Product product=new Product();
			model.addAttribute("product", product);
			model.addAttribute("categoryList",this.categoryd.list());
			model.addAttribute("supplierList",this.supplierd.list());
			return "padd";
	  }
	  /*@RequestMapping("/padd")
		public String gotopadd(Map<String,Object>model)
		{
			
			Product product=new Product();
			model.put("product", product);
			model.put("categorylist",categoryd.list());
			return "padd";
		}*/
	  @RequestMapping(value ="/view3",method=RequestMethod.POST)
		public ModelAndView padd(@Valid @ModelAttribute("product") Product product, BindingResult result,Model model,RedirectAttributes redirectAttributes) {
		  ModelAndView mv=new ModelAndView();
		  if(result.hasErrors()){
			  System.out.println("entering");
			 
			 mv.setViewName("/padd");
			}
		  else{
			  System.out.println(product.getCat().getName()+"h");
			  Category category=categoryd.getByName(product.getCat().getName());
			System.out.println(category);
			 product.setCat(category);
			  System.out.print(category);
			  
			  System.out.println(product.getSup().getName()+"h");
			  Supplier supplier=supplierd.getByName(product.getSup().getName());
			  System.out.println(supplier);
				 product.setSup(supplier);
				  System.out.print(supplier);
			  
			  
		productd.saveOrUpdate(product);
		MultipartFile file=product.getFile();
		FileUtil.upload(path,file,product.getId()+".jpg");
		mv.setViewName("redirect:/view4");
		  }
	   return mv;
		}
	  @RequestMapping(value ="view4")
		public ModelAndView pviewpost(@ModelAttribute("product") Product product, BindingResult result,Model model) {
		
			ModelAndView modelAndView = new ModelAndView("pview");
			Gson gson = new Gson();
			List<Product> pro=productd.list();
			String pdata = gson.toJson(pro);
			System.out.println("data"+pdata);
			modelAndView.addObject("pdata", pdata);
			
			return modelAndView;
			
		}
	  @RequestMapping(value ="/edit1")
	  public String edit(HttpServletRequest request,ModelMap model){
		 System.out.println("welcome into edit");
		  int id=Integer.parseInt(request.getParameter("proid"));
		 System.out.println("Id"+id);
		  product=productd.get(id);
		  System.out.println(product);
		  model.addAttribute("product",product);
		  model.addAttribute("categoryList",this.categoryd.list());
		  model.addAttribute("supplierList",this.supplierd.list());
	  return "padd";
	  }
	  @RequestMapping(value="/del1")
	  public String deletepro(HttpServletRequest request,ModelMap model){
		  int id=Integer.parseInt(request.getParameter("proid"));
		    product=productd.get(id);
		    
			productd.delete(id);
			model.addAttribute("productList",productd.list());
		  return "redirect:/view4";
}
	  @RequestMapping(value ="/mainview")
	  public ModelAndView prolist(HttpServletRequest request){
		 String cname=request.getParameter("cname");
		 Category category=categoryd.getByName(cname);
	ModelAndView mv=new ModelAndView("mainview");
	List <Product> pro= productd.getByCategory(category.getId());
	Gson gson=new Gson();
	String listpro=gson.toJson(pro);
	System.out.println(listpro);
	mv.addObject("listpro",listpro);
	return mv;
	  }
	  @RequestMapping(value="/info")
	  public ModelAndView info(HttpServletRequest request,ModelMap model){
		  int id=Integer.parseInt(request.getParameter("proid"));
		    product=productd.get(id);
		ModelAndView mv=new ModelAndView("info");
		List <Product> pros=productd.getByProduct(product.getId());
		/*Gson gson=new Gson();
		String listpro=gson.toJson(pros);
		System.out.println(listpro);*/
		mv.addObject("pinfo",pros);
		/*mv.addObject("pinfo",listpro);*/
		  return mv;
}
}
