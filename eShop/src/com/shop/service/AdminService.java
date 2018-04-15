package com.shop.service;

import java.util.List;

import com.shop.model.Admin;
import com.shop.model.User;

public interface AdminService {
	
	public void updateUser(User user);
	
	public Admin checkUser(Admin admin);
	
	public void deleteUser(Integer uid) ;

	//分页数查询所有用户
	public List<User> findUser(Integer page);

	// 查询用户页数
	public Integer countUser() ;

	// 查询某个具体用户
	public User findUserByUid(Integer uid);
       	//查询某个具体管理员
	public Admin findAdminByAid(Integer aid);
}
