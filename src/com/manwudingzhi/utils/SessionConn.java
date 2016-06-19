package com.manwudingzhi.utils;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public   class SessionConn {
	private static SqlSessionFactory sqlsession = null ;

	public static SqlSessionFactory getSqlSession(String resource){
		try {
			
			InputStream inputStream = null;
			if(resource==null ||  "".equals(resource)){
				 resource = "mybatis-config.xml";
			}
			inputStream = Resources.getResourceAsStream(resource);
			if(sqlsession!= null){
				return sqlsession;
			}else{
				sqlsession = new  SqlSessionFactoryBuilder().build(inputStream);
				
			}
			
	    } catch (IOException e) {
	    	e.printStackTrace();
	     }
		return sqlsession;
	}
	
	private SessionConn(){}

}
