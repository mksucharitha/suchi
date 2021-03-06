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
import com.niit.shoppingbackend.model.Supplier;

@Repository("supplierDAO")
public class SupplierDAOImpl implements SupplierDAO {
	@Autowired
	public SessionFactory sessionFactory;
	
	public SupplierDAOImpl(SessionFactory sessionFactory) {
			this.sessionFactory=sessionFactory;
	}	
	
	@Transactional
	public void saveOrUpdate(Supplier supplier) {
		sessionFactory.getCurrentSession().saveOrUpdate(supplier);
	}
	
	@Transactional
	public void delete(int id) {
		Supplier supplierToDelete = new Supplier();
		supplierToDelete.setId(id);
		sessionFactory.getCurrentSession().delete(supplierToDelete);
		
	}
	@Transactional
	public Supplier getByName(String name)
	{
		//String hql="from Supplier where name =" + " ' " + name + " ' ";
		Criteria query=sessionFactory.getCurrentSession().createCriteria(Supplier.class);
		query.add(Restrictions.eq("name", name));
		System.out.println(query);
		List<Supplier> listSupplier=query.list();
		if(listSupplier!=null && !listSupplier.isEmpty()) {
			return listSupplier.get(0);
		}
		else{
		return null;
		}	
	}
	
	@Transactional
	public Supplier get(int id) {
		String hql="from Supplier where id =" + "'" + id + "'";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		
		List<Supplier> listSupplier =query.list();
		
		if(listSupplier!= null && !listSupplier.isEmpty()) {
			return listSupplier.get(0);
			
		}
		return null;
	}
	
	
	@Transactional
	public List<Supplier> list() {
		
		@SuppressWarnings("unchecked")
		List<Supplier> listSupplier =(List<Supplier>)
		sessionFactory.getCurrentSession()
		.createCriteria(Supplier.class)
		.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).list();
		return listSupplier;
	}
}
