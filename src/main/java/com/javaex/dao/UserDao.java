package com.javaex.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javaex.vo.HostRoomsVo;
import com.javaex.vo.UserVo;

@Repository
public class UserDao {
	@Autowired
	private SqlSession sqlSession;

	public int userJoin(UserVo userVo) {
		System.out.println("UserDao > userJoin");

		int count = sqlSession.insert("users.userJoin", userVo);

		return count;
	}

	public int hostJoin(UserVo userVo) {
		System.out.println("UserDao > hostJoin");

		int count = sqlSession.insert("users.hostJoin", userVo);

		return count;
	}

	public UserVo userLogin(UserVo userVo) {
		System.out.println("UserDao > userLogin");

		UserVo uVo = sqlSession.selectOne("users.userLogin", userVo);

		return uVo;
	}

	public HostRoomsVo hostLogin(int hostNo) {
		System.out.println("UserDao > hostLogin");

		HostRoomsVo hVo = sqlSession.selectOne("users.getRoom", hostNo);

		return hVo;
	}

	public int idCheck(String id) {
		System.out.println("UserDao > idCheck");
		System.out.println(id);
		int idcount = sqlSession.selectOne("users.idCheck", id);
		System.out.println(idcount);
		return idcount;
	}

}
