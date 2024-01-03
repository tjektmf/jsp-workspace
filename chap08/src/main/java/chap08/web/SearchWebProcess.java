package chap08.web;

import javax.servlet.http.HttpServletRequest;

import chap08.servlet.WebProcess;

public class SearchWebProcess implements WebProcess {

	@Override
	public String process(HttpServletRequest request) {
		// ApplicationServlet 클래스에서 했던 1~3 순서를 여기서 해줌
		// (2) 처리가 있으면 하고

		// (3) 처리가 끝난 후 다음으로 포워드해야하는 뷰 페이지를 반환
		return "/WEB-INF/search.jsp";
	}

}
