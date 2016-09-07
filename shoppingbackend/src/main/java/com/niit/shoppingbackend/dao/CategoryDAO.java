package com.niit.shoppingbackend.dao;

import java.util.List;

import com.niit.shoppingbackend.model.Category;

public interface CategoryDAO {
	public List<Category> list();
	public Category get(int id);
	public void saveOrUpdate(Category category);
	public void delete(int id);
	public Category getByName(String name);
	
	

}
