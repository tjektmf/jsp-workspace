package chap07.util;

import chap07.BreadDao;
import chap07.DTO.BreadDTO;

public class TypeTest {
	
	static void method1(BreadDTO bread) {
		bread.setBread_name("빵빵");
		bread.setBread_price(2500);
	}
	
	static void method2(int a) {
		a+=10;
	}
	
	static void method3(Integer a) {
		a+=10;
	}
	
	public static void main(String[] args) {
		// 기본형 변수의 경우 변수에 저장되어 있는 값을 넘기기 때문에
		// 메서드에 의해 변화가 생기더라도 메서드의 지역변수의 값이 변하고 원본은 달라지지 않음
		int num = 10;
		method2(num);
		System.out.println(num);
		
		Integer num2 = 20;
		method3(num2);
		System.out.println(num2);
		
		// 참조형 변수의 경우 해당 인스턴스의 주소 자체를 넘기기 때문에
		// 메서드에 의해 변화가 있으면 원본 인스턴스에도 변화가 생긴다
		// Wrapper 클래스나 String 에는 적용되지 않는다
		BreadDTO bread = new BreadDTO();
		
		method1(bread);
		
		System.out.println("빵 이름 : " + bread.getBread_name());
		System.out.println("빵 가격 : " + bread.getBread_price());
		
	}

}
