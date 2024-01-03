<%@page import="java.util.Collections"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>JSTL</title>
</head>
<body>

	<h3># JSTL (JSP Standard Tag Library)</h3>

	<ul>
		<li>JSP 에서 자바 코드를 사용할 때 코드가 너무 지저분해져서 등장한 커스텀 태그 라이브러리</li>
		<li>뷰 쪽에서 자주 쓰이는 자바 문법들을 html 태그와 유사한 형식으로 사용할 수 있는 기능을 제공한다</li>
		<li>자바의 모든 기능을 사용할 수 있는 것은 아니지만 뷰 페이지를 만들기에는 충분한 기능들이 태그 형식으로
			구현되어 있다</li>
		<li>Maven Repository에서 다운로드할 수 있다</li>
		<li>taglib 문법으로 추가한 후 사용해야 한다</li>
	</ul>

	<h3># JSTL core</h3>
	<dl>
		<dt>c:set</dt>
		<dd>각 영역에 setAttribute를 편리하게 단축하여 사용할 수 있는 태그</dd>

		<dt>c:if</dt>
		<dd>if 문을 간편하게 쓸 수 있는 태그로 else if 와 else 는 없음</dd>

		<dt>c:choose, c:when, c:otherwise</dt>
		<dd>if, else if, else 처럼 사용할 수 있는 태그</dd>

		<dt>c:forEach</dt>
		<dd>for 문을 간편하게 쓸 수 있는 태그로 숫자를 통해 반복할 수도 있고, 순서대로 꺼내며 반복할 수도 있음</dd>

		<dt>c:forTokens</dt>
		<dd>전달한 문자열을 split한 결과로 반복을 수행하는 문법</dd>

		<dt>c:url</dt>
		<dd>경로를 사용할 때 알아서 contextPath를 추가해주는 문법</dd>


	</dl>

	<%=request.getContextPath()%>/chap05/123
	<c:url value="/chap05/123"></c:url>
	<hr />

	<%
	application.setAttribute("fruit", "사가");
	session.setAttribute("fruit", "어린지");
	request.setAttribute("fruit", "메롱");
	pageContext.setAttribute("fruit", "밍고");
	%>

	<c:set var="snack" value="초파" scope="application"></c:set>
	<c:set var="snack" value="칸초" scope="session"></c:set>
	<c:set var="snack" value="고구마깡" scope="request"></c:set>
	<c:set var="snack" value="라면" scope="page"></c:set>
	<c:set var="snack" value="오뎅"></c:set>
	<!-- 스코프 미지정시 페이지에 들어감 -->

	<h5># JSP 페이지에서 attribute 를 쉽게 사용할 수 있는 기능을 제공함(EL)</h5>
	<div>그냥 쓰기 : ${fruit} (기본적으로 가장 가까운 영역의 값을 사용)</div>
	<div>applicationScope : ${applicationScope.fruit}</div>
	<div>sessionScope : ${sessionScope.fruit}</div>
	<div>
		requestScope :
		<%=request.getAttribute("fruit")%></div>
	<div>pageScope : ${pageScope.fruit}</div>
	<div>application : ${applicationScope.snack}</div>
	<div>session : ${sessionScope.snack}</div>
	<div>request : ${requestScope.snack}</div>
	<div>page : ${pageScope.snack}</div>
	<div>커피 : ${coffee}</div>

	<h5># attribute 에 저장되어 있는 값을 활용해 if 문을 사용</h5>

	<c:if test="${coffee=='커피'}">
		<div>if 문이 실행됨</div>
	</c:if>



	<!-- c:set 은 단순 변수 선언 -->
	<c:set var="num" value="15"></c:set>

	<!-- 이게 if 문이랑 비슷한 느낌인듯 위에 있는 if 는 그냥 boolean 느낌 -->
	<c:choose>
		<c:when test="${num>10}">
			<div>1</div>
		</c:when>
		<c:when test="${num>0}">
			<div>2</div>
		</c:when>
		<c:when test="${num>-10}">
			<div>3</div>
		</c:when>
		<c:otherwise>
			<div>6</div>
		</c:otherwise>
	</c:choose>

	<h5># 원하는 횟수만큼 반복</h5>


	<c:forEach begin="0" end="9" var="i">
		<li id="list-item${i}">${i}번째데이터</li>
	</c:forEach>

	<table>
		<c:forEach begin="0" step="2" end="10" var="i">
			<!-- for(int i=0 ; i<11 ; i=i+2 -->
			<tr>
				<td>${i}</td>
				<td>${i+1}</td>
				<td>${i+2}</td>
			</tr>
		</c:forEach>
	</table>

	<h5># 배열, 리스트 등을 순차적으로 꺼내면서 반복(Iterable)</h5>

	<%
	String name = "ds";
	String[] coffees = { "americano", "cafe latte", "russiano", "vanilla latte", "커피" };
	pageContext.setAttribute("coffees", coffees);
	pageContext.setAttribute("name", name);

	ArrayList<String> foods = new ArrayList<>();
	pageContext.setAttribute("foods", foods);

	foods.add("피자");
	foods.add("치킨");
	foods.add("우동");
	foods.add("고라니");
	foods.add("여우");

	Collections.sort(foods);
	%>

	<c:forEach items="${coffees}" var="co">
		<div>${co}</div>
	</c:forEach>

	<c:forEach items="${foods}" var="food">
		<div>${food}</div>
	</c:forEach>


	<h3># 반복하면서 varStatus 확인하기</h3>

	<ul>
		<li>varStatus.index : 현재 인덱스를 확인할 수 있음 (몇 번째인지, 0부터 시작)</li>
		<li>varStatus.count : 현재 카운트를 확인할 수 있다 (몇 개인지, 1부터 시작)</li>
		<li>varStatus.first : 첫 번째일 때 true</li>
		<li>varStatus.last : 마지막일 때 true</li>
		<li>varStatus.begin : 시작값을 꺼내서 사용</li>
		<li>varStatus.end : 마지막 값을 꺼내서 사용</li>
		<li>varStatus.step : 증감값을 꺼내서 사용</li>
		<li>varStatus.current : 현재 값</li>
	</ul>


	<c:forEach items="${foods}" var="food" varStatus="v">
		<c:choose>
			<c:when test="${v.first}">
				<div class="first" style="color: red;">${v.index}번:${food}(누적
					${v.count}개)</div>
			</c:when>
			<c:when test="${v.last}">

				<div class="last" style="color: green;">${v.index}번:${food}
					(누적 ${v.count}개)</div>
			</c:when>

			<c:otherwise>
				<div class="mid" style="color: yellow;">${v.index}번:${food}
					(누적 ${v.count}개)</div>
			</c:otherwise>
		</c:choose>

		<div>${v.index}번:${food}(누적 ${v.count}개)</div>
	</c:forEach>


	<h5>c:forTokens</h5>
	<c:set var="animals" value="pig/#dog/god/cat#king"></c:set>
	<!-- c:set 에서 선언한 var 를 delims 으로 스플릿해서 하나씩 출력  -->
	<c:forTokens items="${animals}" delims="/" var="animals">
		<div>${animals}</div>
	</c:forTokens>

	<h5># url 깔끔하게 만들기</h5>
	<ul>
		<li><%=request.getContextPath()%>/abc/123</li>
		<li><c:url value="/abc/123"></c:url></li>
		<li>경로에 파라미터 추가 : /abc/123?taste=choco&color=black</li>

		<li>
			<c:url value="abc/123/add" var="myurl2">
				<c:param name="employee_id" value="101"></c:param>
				<c:param name="department_id" value="140"></c:param>
			</c:url>
		</li>
	</ul>
	
	<!-- c:url에 var을 설정하면 해당 경로가 뷰에 출력되지 않고 어트리뷰트에 등록됨
	myURL2를 위에 임플로이 c:url에 등록했더니 뷰에 코드 세줄이 통째로 사라지고 빈칸으로 나옴 -->
	<c:url value="abc/123/aaa" var="myUrl1"></c:url>
	<a href="${myURL1}">링크</a>
	<a href="${myURL2}">링크</a>


</body>
</html>