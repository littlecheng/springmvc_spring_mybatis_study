package com.manwudingzhi.utils;

import java.util.UUID;

public  class uuidGenerator {

	public static String getUUIDWith(Integer length) {
		if(length==null){
			return getUUID().toString();
		}else{
			if(length>getUUID().toString().length() || length<10){
				try {
					throw new Exception("你设置的长度超出最大长度"+getUUID().toString().length()+  "或者设置的长度低于10位！");
				} catch (Exception e) {
					e.printStackTrace();
				}
			}else{
				return getUUID().toString().substring(0, length);
			}
		}
		return null;
	}
	
	   /** 
     * 获得一个UUID 
     * @return String UUID 
     */ 
     private static String getUUID(){ 
        String s = UUID.randomUUID().toString(); 
        //去掉“-”符号 
        return s.substring(0,8)+s.substring(9,13)+s.substring(14,18)+s.substring(19,23)+s.substring(24); 
    } 

     
     public static void main(String[] args) {
    	 System.out.println(uuidGenerator.getUUIDWith(null));
	}
}
