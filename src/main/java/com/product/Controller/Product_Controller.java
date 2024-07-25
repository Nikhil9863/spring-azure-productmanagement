package com.product.Controller;

import java.util.List;


import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import com.product.DataBase.ProductDao;
import com.product.Service.ProductService;
import com.product.model.Product;

@Controller
public class Product_Controller {

	@Autowired
	private ProductService user_service;
	
    @RequestMapping("/")
    public String home()
    {
    	return "home";
    }
		
    @RequestMapping("/add_product_home")
    public String addForm()
    {
    	return "add_product_form";
    }
	  
    //handle the add form
    
    @RequestMapping("/add-product")
    public String HandleProduct(@ModelAttribute("Product") Product product , Model m ,HttpServletRequest request)
    {
    
        user_service.insertProduct(product); //call to service 
        
        
        List<Product>  list = user_service.getAllProducts();
        m.addAttribute("list", list);
        System.out.println(list.toString());
        
        return "home";	
    	
    }
    
    
    //to  display the data of product in update form(textbox) 
    
    @RequestMapping(value="/update/{id}")
    public String update_Product(@PathVariable("id") int id , Model m) 
    {
  
    	Product  p= user_service.get_Product(id);    	
    	m.addAttribute("command", p);    	
    	return "update";
    }
    
    
    
    
    
    
   @RequestMapping(value="/delete/{id}")
   public String delete_Product(@PathVariable int id)
   {
	   this.user_service.Delete_Product(id);
	   System.out.println("deleted successfully");
	   return "redirect:/RefreshData";
   }   
   
   @RequestMapping("/RefreshData")
   public String Delet_refresh(@ModelAttribute("product") Product product , Model m ,HttpServletRequest request)
   {
       
       List<Product>  list = user_service.getAllProducts();
       m.addAttribute("list", list);
       System.out.println(list.toString());
	   return "home";	
   	
   }
    
	   
       
       
}
