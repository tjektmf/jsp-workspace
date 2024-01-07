<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>tab ����� ����</title>
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

	<h3>�� ��ȯ</h3>

	<button onclick="showTab(0)" class="tabBtn">ũ����Ʈ</button>
	<button onclick="showTab(1)" class="tabBtn">����</button>
	<button onclick="showTab(2)" class="tabBtn">�ݶ�</button>

	<!-- ũ����Ʈ 3 ���� 7 �ݶ� 6 -->

	<div>
		<div id="top" class="content show">
			<div id="topCon">
				<div>�븻</div>
				<div>ġ��ũ����Ʈ</div>
				<div>��������</div>
				<div>ġŲ����Ʈ</div>
				<div>��</div>
				<div>�ξ�</div>
				<div></div>
				<div></div>
			</div>
		</div>

		<div id="mid" class="content">
			<div id="midCon">
				<div>ġ��</div>
				<div>����</div>
				<div>�ø���</div>
				<div>����</div>
				<div>������</div>
				<div>�Ұ��</div>
				<div>�Ҽ���</div>
				<div>���ξ���</div>
			</div>
		</div>

		<div id="bot" class="content">
			<div id="botCon">
				<div>���</div>
				<div>��ī�ݶ�</div>
				<div>��������Ʈ</div>
				<div></div>
				<div></div>
				<div></div>
				<div></div>
				<div></div>
			</div>
		</div>
	</div>

	<script>
		// ��ȯ�� 3���� �ǿ� Ŭ������ �ְų� ���Ѿƾ� �ϹǷ� 3�� ���� ID�� ������
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