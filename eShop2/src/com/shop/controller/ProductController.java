package com.shop.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import com.shop.model.Category;
import com.shop.model.CategorySecond;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shop.model.Product;
import com.shop.service.ProductService;

@Controller
public class ProductController {
	
	@Resource
	private ProductService productService;
	
	//根据二级分类查询商品
	@RequestMapping(value="findByCsid/{csid}/{page}")
	public String findByCsid(@PathVariable("csid") Integer csid,@PathVariable("page") Integer page
			,Map<String,Object> map){
		Integer count = productService.CountPageProductFromCategorySecond(csid);
		if(page > count){
			page = 1;
		}
		List<Product> products = productService.findByCsid(csid, page);
		map.put("products", products);
		//把当前的页数存放到map中
		map.put("page", page);
		//总共有多少页
		map.put("count",count);
		map.put("csid", csid);
		return "productList";
	}
	
	@RequestMapping(value="findByKey/{Key}")
	public String findByKey(@PathVariable("Key") String Key,HttpServletRequest request
			,Map<String,Object> map){
		
		//if(Key==null||Key.equals("")){
			Key = request.getParameter("key");
		//}
		List<Product> products = productService.findByKey(Key);
		map.put("products", products);
		return "search";
	}
	
	@RequestMapping(value="findByPrice/{min}/{max}")
	public String findByPrice(@PathVariable("min") String Min,@PathVariable("max") String Max, HttpServletRequest request
			,Map<String,Object> map){
			Min = request.getParameter("min");
			Max = request.getParameter("max");
		if(null != Min && null != Max) {
			List<Product> products = productService.findByPrice(Min, Max);
			map.put("products", products);
		}
		return "search";
	}
	
	
	//首页中点击一级分类查询商品
	@RequestMapping(value="/findByCid/{cid}/{page}")
	public String findByCid(@PathVariable("cid") Integer cid,@PathVariable("page") Integer page
			,Map<String,Object> map){
		List<Product> products = productService.findByCid(cid, page);
		Integer count = productService.CountPageProductFromCategory(cid);
		if(page > count){
			page = 1;
		}
		map.put("products", products);
		//把当前的页数存放到map中
		map.put("page", page);
		//总共有多少页
		map.put("count",count);
		map.put("cid", cid);
		return "productList";
	}
	
	//根据商品的pid查询商品
	@RequestMapping(value="findByPid/{pid}",method=RequestMethod.GET)
	public String findByPid(@PathVariable("pid") Integer pid,Map<String,Object> map){
//		map.put("product", productService.findByPid(pid));
		Product products = productService.findByPid(pid);
		map.put("product", products);	//put product

		CategorySecond categorySecond = products.getCategorySecond();
//		map.put("categorySecond", categorySecond);

		Category category = categorySecond.getCategory();
//		map.put("category", category);
		Date privilege = category.getPrivilegeTime();
		String privilegeTime = privilege.toString().substring(0, 10);	//截取category表中privilegeTime字段的年月日
//		int length = privilegeTime.length();
		map.put("privilegeTime", privilegeTime);	//put privilegeTime

		return "product";
	}
}
