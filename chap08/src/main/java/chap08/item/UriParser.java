package chap08.item;

import javax.servlet.http.HttpServletRequest;

public class UriParser {

	// 여기선 URI를 잘라주는 메서드 하나만 만듬
	public static String getCmd(HttpServletRequest request) {
		// URI 전체에서 앞부분 chap08 에 해당하는 ContextPath만 자름 길이로 잘라야하니 length()
		// 입력과 출력 두개를 나눠눠서 처리함 getMethod로 post get 두개를 나눠서 받음
		request.getRequestURI();
		request.getContextPath();
		return request.getMethod() + "::" + request.getRequestURI().substring(request.getContextPath().length());
	}

}
