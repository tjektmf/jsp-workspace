<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>tab 만들기 복습</title>
<style type="text/css">
* {
	box-sizing: border-box;
}

.content {
	
	display: none;
	width: 400px;
}

.show {
	display: block;
}

#topCon {
	display: grid;
	grid-template-columns: 1fr 1fr 1fr 1fr;
}

#midCon {
	display: grid;
	grid-template-columns: 1fr 1fr 1fr 1fr;
}

#botCon {
	display: grid;
	grid-template-columns: 1fr 1fr 1fr 1fr;
}

#topCon>* {
	border: solid orange 1px;
	width: 100px;
	height: 100px;
}

#midCon>* {
	border: solid red 1px;
	width: 100px;
	height: 100px;
}

#botCon>* {
	border: solid blue 1px;
	width: 100px;
	height: 100px;
}
</style>
</head>
<body>

	<h3>탭 전환</h3>

	<button onclick="showTab(0)" class="tabBtn">크러스트</button>
	<button onclick="showTab(1)" class="tabBtn">토핑</button>
	<button onclick="showTab(2)" class="tabBtn">콜라</button>

	<!-- 크러스트 3 토핑 7 콜라 6 -->

	<div>
		<div id="top" class="content show">
			<div id="topCon">
				<div>노말</div>
				<div>치즈크러스트</div>
				<div>고구마무스</div>
				<div>치킨바이트</div>
				<div>씬</div>
				<div>로얄</div>
				<div></div>
				<div></div>
			</div>
		</div>

		<div id="mid" class="content">
			<div id="midCon">
				<div>치즈</div>
				<div>새우</div>
				<div>올리브</div>
				<div>감자</div>
				<div>베이컨</div>
				<div>불고기</div>
				<div>소세지</div>
				<div>파인애플</div>
			</div>
		</div>

		<div id="bot" class="content">
			<div id="botCon">
				<div>펩시</div>
				<div>코카콜라</div>
				<div>스프라이트</div>
				<div></div>
				<div></div>
				<div></div>
				<div></div>
				<div></div>
			</div>
		</div>
	</div>

	<script>
		// 전환될 3개의 탭에 클래스를 주거나 빼앗아야 하므로 3개 탭의 ID를 가져옴
		const topTab = document.getElementById("top");
		const midTab = document.getElementById("mid");
		const botTab = document.getElementById("bot");

		//
		const tabs = [ topTab, midTab, botTab ];

		function showTab(index) {
			for (let i = 0; i < tabs.length; i++) {
				if (i == index) {
					tabs[i].classList.add('show');
				} else {
					tabs[i].classList.remove('show');
				}
			}
		}
	</script>


</body>
</html>