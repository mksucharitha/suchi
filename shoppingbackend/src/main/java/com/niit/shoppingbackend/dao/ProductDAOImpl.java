package com.niit.shoppingbackend.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.shoppingbackend.model.Category;
import com.niit.shoppingbackend.model.Product;
@Repository("productDAO")
public class ProductDAOImpl implements ProductDAO{
	@Autowired
	public SessionFactory sessionFactory;
	
	public ProductDAOImpl(SessionFactory sessionFactory) {
			this.sessionFactory=sessionFactory;
	}	
	
	@Transactional
	public void saveOrUpdate(Product product) {
		sessionFactory.getCurrentSession().saveOrUpdate(product);
	}
	@Transactional
	public List <Product> getByCategory(int categoryId)
	{
		String hql="from Product where CAT_ID =" + " ' " +categoryId+ " ' ";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		List<Product> listProduct=query.list();
		if(listProduct!=null && !listProduct.isEmpty()) {
			return listProduct;
		}
		return null;
	}
	/*@Transactional
	public List <Product> getBySupplier(int supplierId)
	{
		String hql="from Product where SUP_ =" + " ' " +categoryId+ " ' ";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		List<Product> listProduct=query.list();
		if(listProduct!=null && !listProduct.isEmpty()) {
			return listProduct;
		}
		return null;
	}*/
	
	/*@Transactional
	public Product getByCategory(int categoryId)
	{
		Criteria query=sessionFactory.getCurrentSession().createCriteria(Product.class);
		query.add(Restrictions.eq("name",categoryId));
		System.out.println(query);
		List<Product> listProduct=query.list();
		if(listProduct!=null && !listProduct.isEmpty()) {
			return listProduct.get(categoryId);
		}
		else{
		return null;
		}	
	}*/

	
	@Transactional 
	public void delete(int id) {
		Product productToDelete = new Product();
		productToDelete.setId(id);
		sessionFactory.getCurrentSession().delete(productToDelete);
		
	}
	
	@Transactional
	public Product get(int id) {
		String hql="from Product where id =" + "'" + id + "'";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		
		List<Product> listProduct =query.list();
		
		if(listProduct!= null && !listProduct.isEmpty()) {
			return listProduct.get(0);
			
		}
		return null;
	}
	
	
	@Transactional
	public List<Product> list() {
		
		@SuppressWarnings("unchecked")
		List<Product> listProduct =(List<Product>)
		sessionFactory.getCurrentSession()
		.createCriteria(Product.class)
		.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return listProduct;
	}
@Transactional
	public List<Product> getByProduct(int id) {
		String hql="from Product where id =" + " ' " +id+ " ' ";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		List<Product> listProduct=query.list();
		if(listProduct!=null && !listProduct.isEmpty()) {
			return listProduct;
		}
		return null;
	}

public List<Product> getBySupplier(int supplierId) {
	// TODO Auto-generated method stub
	return null;
}

	
}
