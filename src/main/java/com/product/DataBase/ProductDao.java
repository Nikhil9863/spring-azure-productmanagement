package com.product.DataBase;




import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.product.model.Product;


@Repository
public class ProductDao 
{
	
	@Autowired
	private HibernateTemplate hibernatetemp;
	
	
	
	//insert the data to db
	@Transactional
	public void saveProduct(Product product)
	{

		this.hibernatetemp.saveOrUpdate(product);
		System.out.println("Data inserted into table");
		
	 
	}
	
	
	
	//retriving the all products from db
	
	public List<Product> getProducts()
	{
		List<Product> products = this.hibernatetemp.loadAll(Product.class);
		return products;
	}
	
	
	//delete the single product
	@Transactional
	public void deleteProduct(int pid)
	{
		Product p = this.hibernatetemp.load(Product.class , pid);
		this.hibernatetemp.delete(p);
	}
	
	//Retriving the the single product
	
	public Product getProduct(int pid)
	{
		return this.hibernatetemp.get(Product.class,pid);
	}

	@Transactional
	public void update_Product(Product p)
	{
	
		this.hibernatetemp.update(p);
	}
   
	
	
	
	
}
