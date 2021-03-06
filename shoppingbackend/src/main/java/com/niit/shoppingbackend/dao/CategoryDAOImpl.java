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
@Repository("categoryDAO")
public class CategoryDAOImpl implements CategoryDAO {
	@Autowired
	public SessionFactory sessionFactory;
	
	public CategoryDAOImpl(SessionFactory sessionFactory) {
			this.sessionFactory=sessionFactory;
	}	
	
	@Transactional
	public void saveOrUpdate(Category category) {
		sessionFactory.getCurrentSession().saveOrUpdate(category);
	}
	@Transactional
	public Category getByName(String name)
	{
		//String hql="from Category where name =" + " ' " + name + " ' ";
		Criteria query=sessionFactory.getCurrentSession().createCriteria(Category.class);
		query.add(Restrictions.eq("name", name));
		System.out.println(query);
		List<Category> listCategory=query.list();
		if(listCategory!=null && !listCategory.isEmpty()) {
			return listCategory.get(0);
		}
		else{
		return null;
		}	
	}
	
	@Transactional
	public void delete(int id) {
		Category categoryToDelete = new Category();
		categoryToDelete.setId(id);
		sessionFactory.getCurrentSession().delete(categoryToDelete);
		
	}
	
	@Transactional
	public Category get(int id) {
		String hql="from Category where id =" + "'" + id + "'";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		
		List<Category> listCategory =query.list();
		
		if(listCategory!= null && !listCategory.isEmpty()) {
			return listCategory.get(0);
			
		}
		return null;
	}
	
	
	@Transactional
	public List<Category> list() {
		
		@SuppressWarnings("unchecked")
		List<Category> listCategory =(List<Category>)
		sessionFactory.getCurrentSession()
		.createCriteria(Category.class)
		.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return listCategory;
	}

	

	
}
