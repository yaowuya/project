package cn.edu.scau.zxks.test;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Before;
import org.junit.Test;

import cn.edu.scau.zxks.controller.StudentController;
import cn.edu.scau.zxks.dao.UserMapper;
import cn.edu.scau.zxks.entity.User;


public class TestDao {
	private SqlSessionFactory sqlSessionFactory;

	public void before(){
		
		InputStream inputStream;
		try {
			String resource = "mybatis-config.xml";
			inputStream = Resources.getResourceAsStream(resource);
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	

	
/*	public void testFindBy(){
		SqlSession session = sqlSessionFactory.openSession();
		try {

			UserMapper mapper = session.getMapper(UserMapper.class);

			User userInfo = (User) mapper.findById("ironman");
			
			System.out.println( userInfo );
			
		} finally {
			session.close();
		}
		
	}*/
}
