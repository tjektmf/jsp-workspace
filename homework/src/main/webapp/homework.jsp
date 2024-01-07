<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>������</title>
<link rel="stylesheet" href="./resources/homeworkMain.css" />
</head>
<body>
<!-- 
	<ol>
		<li>DB�� �Խ��� ������ ���� �� �ִ� ���̺� ������ ����</li>
		<li>�ʿ��� ����� ����� �� �� �ִ� �Խ�����</li>
		<li>���� �� �� �ش� �ۿ� ���� ��й�ȣ ������ �ʿ�</li>
		<li>���� ����/������ �� �ش� ���� ��й�ȣ�� ������ ����/������ ����</li>
		<li>��й�ȣ�� �ؽ������� ����</li>
		<li>���� �����ϸ� ���� ��۵� db���� ����</li>
		<li>�Խ��� ������ + ���۱��</li>
	</ol>
 -->
	<div id="fullDiv">
		<div id="halfDiv1" class="half">
			<div id="table1" class="table">
				<button onmousemove="showTab(0)">���ҽ�</button>
			</div>

			<div id="table2" class="table">
				<button onmousemove="showTab(1)">�̵��</button>
			</div>

			<div id="table3" class="table">
				<button onmousemove="showTab(2)">Ŀ�´�Ƽ</button>
			</div>

			<div id="table4" class="table">
				<button onmousemove="showTab(3)">������</button>
			</div>
		</div>

		<div id="halfDiv2" class="half">

			<div id="page1" class="rightPage show">
				<div id="page1-1" class="rightPage2">
					<a href="">��������</a>
					<a href="">������Ʈ</a>
					<a href="">�̺�Ʈ</a>
					<a href=""></a>
				</div>
			</div>
			<div id="page2" class="rightPage">
				<div class="rightPage2">
					<a href="">����</a>
					<a href="">����</a>
					<a href="">��Ʈ��</a>
					<a href="">����</a>
				</div>
			</div>
			<div id="page3" class="rightPage">
				<div class="rightPage2">
					<a href="./community/freeTable">���� �Խ���</a>
					<a href="">������ �亯</a>
					<a href="">���/��� �Խ���</a>
					<a href="">�ŷ� �Խ���</a>
				</div>
			</div>
			<div id="page4" class="rightPage">
				<div class="rightPage2">
					<a href="">FAQ</a>
					<a href="">�Ű���</a>
					<a href="">���ȼ���</a>
					<a href="">Ŭ���̾�Ʈ</a>
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