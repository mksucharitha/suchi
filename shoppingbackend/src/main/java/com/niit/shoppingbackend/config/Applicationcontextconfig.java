package com.niit.shoppingbackend.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.shoppingbackend.dao.CategoryDAO;
import com.niit.shoppingbackend.dao.CategoryDAOImpl;
import com.niit.shoppingbackend.dao.ProductDAO;
import com.niit.shoppingbackend.dao.ProductDAOImpl;
import com.niit.shoppingbackend.dao.SupplierDAO;
import com.niit.shoppingbackend.dao.SupplierDAOImpl;
import com.niit.shoppingbackend.dao.UserDAO;
import com.niit.shoppingbackend.dao.UserDAOImpl;
import com.niit.shoppingbackend.model.Category;
import com.niit.shoppingbackend.model.Product;
import com.niit.shoppingbackend.model.Supplier;
import com.niit.shoppingbackend.model.User2;

@Configuration
@ComponentScan("com.niit.shoppingbackend")
@EnableTransactionManagement
public class Applicationcontextconfig {
	 
	@Bean(name = "dataSource")
	public DataSource getDataSource() {
		System.out.println("inside getdatasource");
	DriverManagerDataSource dataSource = new DriverManagerDataSource();
	dataSource.setDriverClassName("org.h2.Driver");
	dataSource.setUrl("jdbc:h2:tcp://localhost/~/test");

	dataSource.setUsername("sa");
	dataSource.setPassword("sa");
	return dataSource;
	}
	    
	   
	    
	    private Properties getHibernateProperties() {
	    Properties properties = new Properties();
	    properties.put("hibernate.show_sql", "true");
	      properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
	     properties.put("hibernate.hbm2ddl.auto", "update");
	    return properties;
	    }
	    
	    @Autowired
	    @Bean(name = "sessionFactory")
	    public SessionFactory getSessionFactory(DataSource dataSource) {
	    LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
	    sessionBuilder.addProperties(getHibernateProperties());
	    sessionBuilder.addAnnotatedClass(User2.class);
	    sessionBuilder.addAnnotatedClass(Category.class);
	    sessionBuilder.addAnnotatedClass(Product.class);
	    sessionBuilder.addAnnotatedClass(Supplier.class);
		   
	      
		return sessionBuilder.buildSessionFactory();
	    }
	    
	@Autowired
	@Bean(name = "transactionManager")
	public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) {
	HibernateTransactionManager transactionManager = new HibernateTransactionManager(
	sessionFactory);

	return transactionManager;
	}
	@Autowired
	   @Bean(name = "userDAO")
	   public UserDAO getUserDAO(SessionFactory sessionFactory) {
	    return new UserDAOImpl(sessionFactory);
	   
	   }
	@Autowired
	@Bean(name = "categoryDAO")
	public CategoryDAO getCategoryDAO(SessionFactory sessionFactory) {
		   
	return new CategoryDAOImpl(sessionFactory);
	}
	@Autowired
	@Bean(name = "productDAO")
	public ProductDAO getProductDAO(SessionFactory sessionFactory) {
		   
	return new ProductDAOImpl(sessionFactory);
	}
	@Autowired
	@Bean(name = "supplierDAO")
	public SupplierDAO getSupplierDAO(SessionFactory sessionFactory) {
		   
	return new SupplierDAOImpl(sessionFactory);
	}
}
