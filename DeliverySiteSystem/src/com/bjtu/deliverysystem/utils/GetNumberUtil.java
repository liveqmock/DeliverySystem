package com.bjtu.deliverysystem.utils;

import java.util.Random;

public  class GetNumberUtil {
	public static void main(String[] args){
		for(int i=0; i<10; i++){
			System.out.println(GetNumberUtil.getRandomNumber());
		}
	}
	public static String getRandomNumber(){
		Random r = new Random();
		StringBuffer sb = new StringBuffer("OO");
		
		for(int i=0; i<10; i++){
			sb.append(r.nextInt(10));
		}
		return sb.toString();
	}
}
