package com.shop.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shop.dao.ProductDao;
import com.shop.model.Product;
import com.shop.service.AdminProductService;

@Transactional
@Service("adminProductService")
public class AdminProductServiceImpl implements AdminProductService{
	
	@Resource
	private ProductDao productDao;
	
	public Integer countProduct() {
		Integer count = productDao.CountProduct();
		return (count % 8 == 0 ? (count / 8) : (count / 8 + 1));
	}

	public void deleteProduct(Product product) {
		productDao.delete(product);
	}

	public Product findProduct(Integer pid) {
		return productDao.findOne(pid);
	}

	public List<Product> listProduct(Integer page) {
		return productDao.findAll(page);
	}
	public List<Product> listProductByUser(String name,Integer page) {
		return productDao.findByUser(name, page);
	}
	public void saveProduct(Product product) {
		productDao.save(product);
	}

	public void updateProduct(Product product) {
		productDao.update(product);
	}

}
