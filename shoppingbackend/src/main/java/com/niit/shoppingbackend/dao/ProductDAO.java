package com.niit.shoppingbackend.dao;

import java.util.List;

import com.niit.shoppingbackend.model.Category;
import com.niit.shoppingbackend.model.Product;

public interface ProductDAO {
	public List<Product> list();
	public Product get(int id);
	public void saveOrUpdate(Product product);
	public List <Product> getByCategory(int categoryId);
	/*public List <Product> getBySupplier(int supplierId);*/
	public void delete(int id);
	/*public Product getByCategory(int categoryId);*/
	public List<Product> getByProduct(int id);
}
