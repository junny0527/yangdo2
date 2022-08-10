package com.javaex.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.javaex.dao.UserDao;
import com.javaex.vo.UserVo;

@Service
public class UserService {
	
	@Autowired
	private UserDao userDao;
	
	public int userJoin(UserVo userVo) {
		System.out.println("UserService > userJoin");
		
		int count = userDao.userJoin(userVo);
		
		return count;
	}
	
	public int hostJoin(UserVo userVo) {
		System.out.println("UserService > hostJoin");
		
		int count = userDao.hostJoin(userVo);
		
		return count;
	}
	
	public UserVo userLogin(UserVo userVo) {
		System.out.println("UserService > userLogin");
		
		UserVo uVo = userDao.userLogin(userVo);
		
		return uVo;
	}
	
	public UserVo hostLogin(UserVo userVo) {
		System.out.println("UserService > hostLogin");
		
		UserVo uVo = userDao.userLogin(userVo);
		
		return uVo;
	}
}
