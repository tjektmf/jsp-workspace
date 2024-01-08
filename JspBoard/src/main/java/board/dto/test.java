package board.dto;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

public class test {

	public static void main(String[] args) {
		// String 에 기본적으로 있는 해시코드 메서드는 비밀번호로 사용하기에 좋지 않음
		// 문자열만으로 충분히 유추가 가능함
		System.out.println("ㅋㅋㅋ".hashCode());

		String message = "hello";
		// 사용할 수 있는 해시 알고리즘 종류 : SHA256, SHA512, MD5 ...
		try {
			// 해당 알고리즘의 인스턴스 생성
			MessageDigest eater = MessageDigest.getInstance("SHA512");

			// 해당 알고리즘에 원하는 메세지 세팅
			eater.update(message.getBytes());

			byte[] result = eater.digest(); // byte[]

			System.out.println(Arrays.toString(result));
			System.out.println(new String(result));

			// 일반적으로 결과를 16진수 문자열로 바꿔서 DB에 저장하는 편
			StringBuilder builder = new StringBuilder();
			
			// 한자리 숫자가 나올 수도 있으므로 %02X 앞에 0을 추가해야함
			for (int i = 0; i < result.length; i++) {
				System.out.printf("%02X", result[i]);
				builder.append(String.format("%02X", result[i]));
				
			}
			System.out.println();
			System.out.println(builder);

		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
