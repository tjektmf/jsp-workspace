package chap07.webprocess;

import javax.servlet.http.HttpServletRequest;

import chap07.BreadDao;
import chap07.DTO.BreadDTO;

public class BreadUpdateWebProcess implements WebProcess {

	BreadDao breadDao = new BreadDao();

	@Override
	public String process(HttpServletRequest request) {

		String bread_name = request.getParameter("bread_name");
		Integer bread_price = Integer.parseInt(request.getParameter("bread_price"));

		int result = breadDao.update(new BreadDTO(bread_name, bread_price));

		if (result == 1) {
			return "redirect::" + request.getContextPath() + "/bread/update";
		} else {
			return "redirect::" + request.getContextPath() + "/";
		}
	}

}
