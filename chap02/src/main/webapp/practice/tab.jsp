<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Tab 만들기</title>
<style>
.tabContent {
	border: solid 1px black;
	display: none;
}

.show {
	display: block;
}
/*
	div는 block이 default임, 근데 탭전환을 위해 탭들의 공통 클래스인 tabContent에 none을 줘서
	영역을 차지하지 않으면서 투명하게 처리를 해두고
	전환되어서 보여질 탭에 show 클래스를 classList.add('show')와 동시에 
	기존에 보여지던 탭에 부여된 show 클래스를 classList.remove('show')로 삭제해서 탭전환이 이루어짐
	
	display: none이 설정된 공통클래스인 tabContent를 전환될 모든 탭에 부여함
	display: block이 설정된 show 클래스를 보여질 클래스에 부여하고 기존에 가지던 탭에서는 삭제함
	
	즉 모든 클래스를 숨김처리 한 후, 포문과 이프문을 적절히 활용해 보여줄 탭에만 show 클래스부여하면서 탭전환함
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
		<button onclick="showTab(0);" class="tabBtn">토핑</button>
		<button onclick="showTab(1);" class="tabBtn">소스</button>
		<button onclick="showTab(2);" class="tabBtn">치즈</button>

		<div id="topping" class="tabContent show">
			<!--  모든 div를 각각 안보이게 하는게 아니라 8개의 div를 포함하는 부모 div 하나만 숨기면 됨 
		전환할 탭 중 하나에는 show를 부여해놔야 보기에 깔끔함 
		이거 자바스윙에서 레이아웃 나누던거랑 느낌 비슷함 초기설계 중요함 생각 -->
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