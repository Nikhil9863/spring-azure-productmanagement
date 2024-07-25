package com.product.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.product.DataBase.ProductDao;
import com.product.model.Product;


@Service
public class ProductService {

	
	@Autowired
	private ProductDao pDao;

	
	public void insertProduct(Product user)
	{
		System.out.println("hello");
	    this.pDao.saveProduct(user); // call to db
		
	}
	
	
	
	public List<Product> getAllProducts()
	{
		return pDao.getProducts();
	}
	
	
    public void update_Product(Product p) 
    {
    	Product p1 = new Product();
    	p1.setId(p.getId());
    	p1.setName(p.getName());
    	p1.setDescription(p.getDescription());
    	p1.setPrice(p.getPrice());
    	
    	
    	this.pDao.update_Product(p1);
    }
    
    public Product get_Product(int pid) {
    	return this.pDao.getProduct( pid);
    }
    
    public void Delete_Product(int pid) {
    	this.pDao.deleteProduct(pid);
    }
}


