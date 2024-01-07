<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ㅇㅅㅇ</title>
<link rel="stylesheet" href="./resources/homeworkMain.css" />
</head>
<body>
<!-- 
	<ol>
		<li>DB에 게시판 정보를 담을 수 있는 테이블 구조를 설계</li>
		<li>필요한 기능은 댓글을 달 수 있는 게시판임</li>
		<li>글을 쓸 때 해당 글에 대한 비밀번호 설정이 필요</li>
		<li>글을 수정/삭제할 때 해당 글의 비밀번호가 맞으면 수정/삭제가 가능</li>
		<li>비밀번호는 해쉬값으로 저장</li>
		<li>글을 삭제하면 글의 댓글도 db에서 삭제</li>
		<li>게시판 디자인 + 대댓글기능</li>
	</ol>
 -->
	<div id="fullDiv">
		<div id="halfDiv1" class="half">
			<div id="table1" class="table">
				<button onmousemove="showTab(0)">새소식</button>
			</div>

			<div id="table2" class="table">
				<button onmousemove="showTab(1)">미디어</button>
			</div>

			<div id="table3" class="table">
				<button onmousemove="showTab(2)">커뮤니티</button>
			</div>

			<div id="table4" class="table">
				<button onmousemove="showTab(3)">고객센터</button>
			</div>
		</div>

		<div id="halfDiv2" class="half">

			<div id="page1" class="rightPage show">
				<div id="page1-1" class="rightPage2">
					<a href="">공지사항</a>
					<a href="">업데이트</a>
					<a href="">이벤트</a>
					<a href=""></a>
				</div>
			</div>
			<div id="page2" class="rightPage">
				<div class="rightPage2">
					<a href="">영상</a>
					<a href="">음악</a>
					<a href="">아트웍</a>
					<a href="">웹툰</a>
				</div>
			</div>
			<div id="page3" class="rightPage">
				<div class="rightPage2">
					<a href="./community/freeTable">자유 게시판</a>
					<a href="">질문과 답변</a>
					<a href="">사건/사고 게시판</a>
					<a href="">거래 게시판</a>
				</div>
			</div>
			<div id="page4" class="rightPage">
				<div class="rightPage2">
					<a href="">FAQ</a>
					<a href="">신고센터</a>
					<a href="">보안서비스</a>
					<a href="">클라이언트</a>
				</div>
			</div>
		</div>
	</div>

	<script>
		const table1 = document.getElementById('table1');
		const table2 = document.getElementById('table2');
		const table3 = document.getElementById('table3');
		const table4 = document.getElementById('table4');

		const page1 = document.getElementById('page1');
		const page2 = document.getElementById('page2');
		const page3 = document.getElementById('page3');
		const page4 = document.getElementById('page4');

		const tabs = [ table1, table2, table3, table4 ];
		const tabs2 = [ page1, page2, page3, page4 ];

		function showTab(index) {
			for (let i = 0; i < tabs.length; i++) {
				if (i == index) {
					//	tabs[i].classList.add('show');
					tabs2[i].classList.add('show');
				} else {
					//	tabs[i].classList.remove('show');
					tabs2[i].classList.remove('show');
				}
			}
		}
	</script>



</body>
</html>