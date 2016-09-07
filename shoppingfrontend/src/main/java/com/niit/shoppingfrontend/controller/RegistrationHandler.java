/*package com.niit.shoppingfrontend.controller;

import org.springframework.binding.message.MessageBuilder;
import org.springframework.binding.message.MessageContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingbackend.dao.UserDAO;
import com.niit.shoppingbackend.model.User2;

public class RegistrationHandler {
	private UserDAO userd;
	public RegistrationHandler()
	{
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shoppingbackend.config");
		context.refresh();
		userd=(UserDAO)context.getBean("userDAO");
		System.out.println(userd);
	}
	public User2 initFlow()
	{
		
		return new User2();
	}
	public String validateDetails(User2 user, MessageContext messageContext) {
		String status = "success";
		
		if (user.getFirstname().isEmpty()) {
			messageContext.addMessage(
					new MessageBuilder().error().source("name").defaultText("Name cannot be Empty").build());
			status = "failure";
		}
		if (user.getLastname().isEmpty()) {
			messageContext.addMessage(
					new MessageBuilder().error().source("name").defaultText("Name cannot be Empty").build());
			status = "failure";
		}
		if (user.getUsername().isEmpty()) {
			messageContext.addMessage(
					new MessageBuilder().error().source("username").defaultText("Username cannot be Empty").build());
			status = "failure";
		}
		if (user.getPassword().isEmpty()) {
			messageContext.addMessage(
					new MessageBuilder().error().source("password").defaultText("Password cannot be Empty").build());
			status = "failure";
		}
		
		
		if (user.getEmailid().isEmpty()) {
			messageContext.addMessage(
					new MessageBuilder().error().source("password").defaultText("Password cannot be Empty").build());
			status = "failure";
		}
		if (user.getAddress().isEmpty()) {
			messageContext.addMessage(
					new MessageBuilder().error().source("address").defaultText("Address cannot be Empty").build());
			status = "failure";
		}
		
		return status;
	}
	
	public void registerUser(User2 user) {
		userd.saveOrUpdate(user);

		
	}

}



*/