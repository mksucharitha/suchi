
package com.niit.shoppingbackend.dao;

import java.util.List;

import com.niit.shoppingbackend.model.User2;

public interface UserDAO {

	public List<User2>list();
	public User2 get(String username);
	public void saveOrUpdate(User2 user);
	public void delete(int id);
	public boolean isValidUser(String username,String password);
	public String role(User2 username);
}
