package com.priyank.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;

import com.priyank.model.Product;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

public class ProductDAO {
    private SessionFactory factory;

    public ProductDAO() {
        factory = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Product.class).buildSessionFactory();
    }

    public List<Product> getAllProducts() {
        
    	Session session = factory.getCurrentSession();
        session.beginTransaction();
        
        List<Product> products = session.createQuery("FROM Product ORDER BY id ASC", Product.class).getResultList();
        session.close();
        
        return products;
    }
    
    public void saveProduct(Product product) {
    	
    	Session session = factory.getCurrentSession();
        session.beginTransaction();
        session.createQuery("FROM Product");
    	session.save(product);
    	session.getTransaction().commit();
    	session.close();
    }
    
    public void updateProduct(HttpServletRequest request) {
    	
    	Session session = factory.getCurrentSession();
    	session.beginTransaction();
    	
    	Product product = session.get(Product.class, Integer.parseInt(request.getParameter("productId")));
    	
    	if(product != null) {
    		product.setName(request.getParameter("productName"));
    		product.setType(request.getParameter("productType"));
    		product.setPlace(request.getParameter("productPlace"));
    		product.setWarranty(Integer.parseInt(request.getParameter("productWarranty")));
    		session.update(product);
    		session.getTransaction().commit();
    	}
    	session.close();
    }
    
    public List<Product> searchProducts(String searchBy , String searchValue) {
    		
    	Session session = factory.getCurrentSession();
    	session.beginTransaction();
    	Query<Product> query = session.createQuery("FROM Product WHERE " + searchBy + " = :searchValue", Product.class);
    	
    	if(searchBy.equals("warranty"))
    		query.setParameter("searchValue", Integer.parseInt(searchValue));
    	else
    		query.setParameter("searchValue", searchValue);
    	
        List<Product> products = query.getResultList();
        session.close();
        
        return products;
    }
    
    public void deleteProduct(HttpServletRequest request) {
    	
    	Session session = factory.getCurrentSession();
    	session.beginTransaction();
    	
    	Product product = session.get(Product.class, Integer.parseInt(request.getParameter("productId")));
    	
    	if(product != null) {
    		session.delete(product);
    		session.getTransaction().commit();
    	}
    	session.close();
    	
    }
}
