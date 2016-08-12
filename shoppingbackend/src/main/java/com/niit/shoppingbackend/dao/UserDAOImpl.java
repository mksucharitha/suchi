package com.niit.shoppingbackend.dao;


import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


import com.niit.shoppingbackend.model.User2;

@Repository("userDAO")
public class UserDAOImpl implements UserDAO {
	@Autowired
	private SessionFactory sessionFactory;
		
		public UserDAOImpl(SessionFactory sessionFactory) {
			this.sessionFactory = sessionFactory;
		}
		
		@Transactional
		public void saveOrUpdate(User2 user) {
			user.setEnabled(true);
			user.setRole("user");
			sessionFactory.getCurrentSession().saveOrUpdate(user);
			}
		
		@Transactional
		public void delete(int id) {
			User2 userToDelete = new User2();
			userToDelete.setId(id);
			sessionFactory.getCurrentSession().delete(userToDelete);
		}
		
		@Transactional
		public User2 get(String username) {
			String hql = "from User2 where username = "+"'"+username+"'";
			Query query = sessionFactory.getCurrentSession().createQuery(hql);
			List<User2> listUser = query.list();
			
			if(listUser !=null && !listUser.isEmpty()) 
			{
				return listUser.get(0);
			}
			return null;
		}
		
		@Transactional
		public boolean isValidUser(String username,String password) {
			System.out.println(username);
			String hql="from User2 where username ='" + username + "'and "+"password ='"+ password+"'";
			Query query=sessionFactory.getCurrentSession().createQuery(hql);
			@SuppressWarnings("unchecked")
			List<User2> listUser = query.list();
			
			if(listUser!= null && !listUser.isEmpty()) {
				return true;
				
			}
			return false;
		}
		
		@Transactional
		public List<User2> list() {
			@SuppressWarnings("unchecked")
			List<User2> listuser=(List<User2>) sessionFactory.getCurrentSession().createCriteria(User2.class).list();
			return listuser;
		}

		public String role(User2 username) {
			Criteria c=sessionFactory.getCurrentSession().createCriteria(User2.class);
			
			return null;
		}


		

		
}
