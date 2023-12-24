<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Tab �����</title>
<style>
.tabContent {
	border: solid 1px black;
	display: none;
}

.show {
	display: block;
}
/*
	div�� block�� default��, �ٵ� ����ȯ�� ���� �ǵ��� ���� Ŭ������ tabContent�� none�� �༭
	������ �������� �����鼭 �����ϰ� ó���� �صΰ�
	��ȯ�Ǿ ������ �ǿ� show Ŭ������ classList.add('show')�� ���ÿ� 
	������ �������� �ǿ� �ο��� show Ŭ������ classList.remove('show')�� �����ؼ� ����ȯ�� �̷����
	
	display: none�� ������ ����Ŭ������ tabContent�� ��ȯ�� ��� �ǿ� �ο���
	display: block�� ������ show Ŭ������ ������ Ŭ������ �ο��ϰ� ������ ������ �ǿ����� ������
	
	�� ��� Ŭ������ ����ó�� �� ��, ������ �������� ������ Ȱ���� ������ �ǿ��� show Ŭ�����ο��ϸ鼭 ����ȯ��
*/
#toppings {
	display: grid;
	grid-template-columns: 1fr 1fr 1fr 1fr;
}

#toppings>div {
	border: 1px orange solid;
	height: 100px;
}

#sauces {
	display: grid;
	grid-template-columns: 1fr 1fr 1fr 1fr;
}

#sauces>div {
	border: 1px red solid;
	height: 200px;
}

#cheeses {
	display: grid;
	grid-template-columns: 1fr 1fr 1fr 1fr;
}

#cheeses>div {
	border: 1px blue solid;
	height: 100px;
}
</style>
</head>
<body>

	<div>
		<button onclick="showTab(0);" class="tabBtn">����</button>
		<button onclick="showTab(1);" class="tabBtn">�ҽ�</button>
		<button onclick="showTab(2);" class="tabBtn">ġ��</button>

		<div id="topping" class="tabContent show">
			<!--  ��� div�� ���� �Ⱥ��̰� �ϴ°� �ƴ϶� 8���� div�� �����ϴ� �θ� div �ϳ��� ����� �� 
		��ȯ�� �� �� �ϳ����� show�� �ο��س��� ���⿡ ����� 
		�̰� �ڹٽ������� ���̾ƿ� �������Ŷ� ���� ����� �ʱ⼳�� �߿��� ���� -->
			<div id="toppings">
				<div>1</div>
				<div>2</div>
				<div>3</div>
				<div>4</div>
				<div>5</div>
				<div>6</div>
				<div>7</div>
				<div>8</div>
			</div>
		</div>
		<div id="sauce" class="tabContent">
			<div id="sauces">
				<div>1</div>
				<div>2</div>
				<div>3</div>
				<div>4</div>
			</div>
		</div>

		<div id="cheese" class="tabContent">
			<div id="cheeses">
				<div>1</div>
				<div>2</div>
				<div>3</div>
				<div>4</div>
				<div>5</div>
				<div>6</div>
			</div>
		</div>
	</div>

	<script>
		const toppingTab = document.getElementById("topping");
		const sauceTab = document.getElementById("sauce");
		const cheeseTab = document.getElementById("cheese");
		const tabs = [ toppingTab, sauceTab, cheeseTab ];

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