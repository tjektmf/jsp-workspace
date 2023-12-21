package chap01.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// /chap01/gugudan 으로 접속하는 사용자에게 구구단

@WebServlet("/gugudan")
public class GugudanServlet extends HttpServlet {

	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		resp.setCharacterEncoding("UTF-8");
		PrintWriter out = resp.getWriter();

		out.print("<!DOCTYPE html>");
		out.print("<html>");
		out.print("<head>");
		out.print("<meta charset=\"UTF-8\">");
		out.print("<title>99dan</title>");
		out.print("</head>");

		out.print("<link rel=\"stylesheet\" href=\"./assets/gugudan.css\">");
		// 절대경로는 프로토콜 이름부터 시작되는 경로
		// 상대경로는 이 페이지에 접속했던 URL을 기준으로 함
		// a태그 뿐만 아니라 link, img, script태그 등은 페이지에 사용하는 것만으로 서버로 요청을 보내 정적자원을 받아와서 활용함
		// 예를 들면 a태그를 누르지 않고 그냥 사용만 해도 서버로 요청을 보낸다는거임
		// ../chap01/assets/gugudan.css
		// ./assets/gugudan.css
		// @WebServlet("/gugudan") 여기서 /gugudan 이거랑 /gugudan/ 이거랑 다름
		// 전자는 ./assets/gugudan.css로 접속 가능하고 후자는 ../assets/gugudan.css로 접속 가능함
		out.print("<body>");
		out.print("<div>" + gugudan() + "</div>");

		out.print("<hr><hr><hr>");
		out.print("<div style =\"text-align:center\">" + gugudan2() + "</div>");

		for (int i = 0; i < 5; i++) {
			out.print("<div>" + "이것도 포문이 될까 " + i + "</div>");
		}

		out.print("<div style=\"background-color: red; color: white;\">zzzz</div>");

		String gugu = "";
		out.print(
				"<div style=\"display:grid; box-sizing: border-box; padding-top:30px; height:700px; width:700px; border:1px solid green; grid-template-columns:repeat(8,1fr); margin:10px; padding 10px;text-align:center;\">");
		for (int j = 1; j < 10; j++) {
			for (int i = 2; i < 10; i++) {
				gugu = "" + i + "x" + j + "=" + i * j + " ";
				out.print("<div>" + gugu + "</div>");
			}
		}
		out.print("</div><br><br><br><br>");

		out.print("<div id=\"gugudan\">");
		for (int gop = 0; gop < 10; gop++) {
			for (int dan = 2; dan < 10; dan++) {
				if (gop == 0) {
					out.print(String.format("<div class=\"dan\">%d단</div>", dan));
				} else {
					out.print(String.format("<div class=\"data\">%d x %d = %d</div>", dan, gop, dan * gop));
				}
			}
		}
		out.print("</body>");
	}

	public String gugudan() {
		String[] gugudan = new String[72];
		int p = 0;
		for (int i = 2; i < 10; i++) {
			for (int j = 1; j < 10; j++) {
				gugudan[p] = "" + i + "x" + j + "=" + i * j + "\n";
				if (j == 9) {
					gugudan[p] += "<br><br>";
				}
				p++;
			}
		}
		return Arrays.toString(gugudan);
	}

	public String gugudan2() {
		String text = "";
		for (int j = 1; j < 10; j++) {
			for (int i = 2; i < 10; i++) {
				text += gugudan3(i, j);
				if (i == 9) {
					text += "<br><br>";
				}
			}
		}
		return text;
	}

	public String gugudan3(int i, int j) {
		return "" + i + "x" + j + "=" + i * j + "\n";
	}
}
