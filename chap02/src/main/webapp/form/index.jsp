<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>form</title>
</head>
<body>

	<h3># input</h3>

	<ul>
		<li>input 태그를 사용해 사용자로부터 다양한 입력을 받을 수 있다</li>
		<li>사용자가 입력한 데이터는 자바스크립트에서 활용할 수도 있고 서버로 전송할 수도 있다</li>
		<li>type 속성을 변경해 다양한 방식으로 입력을 받을 수 있다</li>
	</ul>

	<table border="1">
		<tr>
			<th>Type</th>
			<th>Shape</th>
			<th>Description</th>
		</tr>
		<tr>
			<td>text</td>
			<td><input type="text" placeholder="뭐라도 쓰세요"></td>
			<!--  text도 value로 기본값 주는ㄱ ㅓ가능 -->
			<td>일반적인 텍스트 입력</td>
		</tr>

		<tr>
			<td>number</td>
			<td><input type="number" min="-10" max="10" step="2" value="8"></td>
			<td>숫자만 입력가능</td>
		</tr>

		<tr>
			<td>password</td>
			<td><input type="password"></td>
			<td>비밀번호라 못 봄</td>
		</tr>
		<tr>
			<td>date</td>
			<td><input type="date"></td>
			<td>날짜 선택(브라우저마다 생긴게 다름)</td>
		</tr>
		<tr>

			<td>radio</td>
			<!-- name 속성은 input 태그의 카테고리를 의미함 name이 같으면 그 중에서는 한개만 선택가능 -->
			<!-- label 태그를 주면 글자앞에 동그라미를 누르지않고 글자를 눌러도 선택이 됨 
			글자까지 전부 라벨로 묶어서 선택이 가능하게 하는 개념 
			radio 태그의 id 속성과 label 태그의 for 속성을 이용해 지정함-->

			<td>
				<input type="radio" name="lunch" id="hotbar"> 
				<label for="hotbar">핫바</label><br> 
				
				<input type="radio" name="lunch" id="rice">
				<label for="rice">밥버거</label><br> 
				
				<input type="radio" name="lunch" id="cken">
				<label for="cken">치킨</label><br>

				<input type="radio" >라면<br></td>
			<td>여러 옵션 중 선택ㅇㅇ</td>
		</tr>

		<tr>
			<!-- checkbox에도 label을 달아줄 수 있음 -->
			<td>checkbox</td>
			
			<td>

			<input type="checkbox" name="chi" id="cken1" /> 
			<label for="cken1">핫후라이드</label><br> 
			
			<input type="checkbox" name="chi" id="cken2" /> 
			<label for="cken2">양념</label><br> 
			
			<input type="checkbox" name="chi" id="cken3" /> 
			<label for="cken3">간장</label><br>
			
			<input type="checkbox" name="chi" id="cken4" /> 
			<label for="cken">테스트치킨</label>

				<!-- 테스트 치킨은 for 속성이 cken이라 글자를 누르면 위에 radio 타입에서 label cken을 준 치킨이 선택됨
			근데 글자 말고 체크박스를 누르면 id가 cken이지만 테스트치킨이 정상적으로 선택됨 
			치킨의 글자를 누른다고 테스트치킨이 선택되지는 않음
			또한 테스트치킨의 checkbox의 id값을 cken2로 바꿔도 양념이 선택되거나 하지는 않음
			즉 해당 라벨의 for값과 같은 id를 가진 놈을 바라봄
			그냥 for값이 같은 id를 향한다는 것만 생각하면서 id를 다르게 주는게 맞는듯
			이것저것 해봤는데 뭔가 일률적이지 않고 다르게 적용됨 
			 --></td>
			<td>중복 선택 가능</td>
			
			<!--  radio는 여러개 중 하나만 선택 checkbox는 중복선택 가능 -->
		<tr>
			<td>textarea</td>
			<td><textarea name="" id="" cols="30" rows="10"></textarea></td>
			<td>긴 내용의 텍스트를 입력받는</td>
		</tr>

		<tr>
			<td>select</td>
			<td><select name="" id="">
					<option value="">1</option>
					<option value="">2</option>
					<option value="">3</option>
			</select></td>
			<td>말그대로 선택</td>
		</tr>

		<tr>
			<td>color</td>
			<td><input type="color" /></td>
			<td>색고르</td>
		</tr>







	</table>


	<h3># Form</h3>
	<ul>
		<li>사용자가 form 태그 내부의 input 태그들에서 선택한 값을 서버로 전송</li>
		<li>form 태그 내부에서 submit이 발생하면 폼 내부의 데이터와 함께 서버로 요청을 보냄</li>
		<li>input 태그의 name 속성이 데이터의 key역할을 하여 value와 함께 전송된다</li>
		<li>실어보낸 데이터는 서버측의 request 객체에서 확인할 수 있다</li>
		<li>action 속성 : 요청을 보낼 곳의 URL</li>
		<li>method 속성 : 요청 방식을 선택 (get or post)</li>
	</ul>

	<h3># GET 방식 요청</h3>
	<ul>
		<li>GET방식은 데이터가 ?key1=value1&key2=value2... 형태로 URL의 맨 뒤에 붙어서 전송됨</li>
		<li>비밀번호 같은건 노출의 위험이 있어 GET방식으로 전달하면 안됨</li>
	</ul>

	<form action="/chap02/formTest" method="GET">

		<table>
			<tr>
				<th>name:</th>
				<td><input type="text" name="user-name" /></td>
			</tr>
			<tr>
				<th>age:</th>
				<td><input type="number" name="user-age" /></td>
			</tr>
			<tr>
				<th>password:</th>
				<td><input type="password" name="user-password" /></td>
			</tr>

			<tr>
				<th>color:</th>
				<td><input type="color" name="user-color" /></td>
			</tr>

			<tr>
				<th>select:</th>
				<!-- select 문에서 req.getParameter(name)를 통해 값을 가져올 때에는
				같은 name 속성을 가지는 select 문에서 선택한 옵션을 선택하며 
				옵션에서 value 속성에 입력된 값을 불러옴 
				고른 값 자체 말고 그 값이 가지고 있는 value 값을 불러옴-->
				<td><select name="my-name" id="my">
						<option value="seo">seo2</option>
						<option value="da">da2</option>
						<option value="seul">seul2</option>
				</select></td>
			</tr>

			<tr>
				<td><input type="submit" /></td>
				<!-- 데이터 전송 -->
				<td><input type="reset" /></td>
				<!-- 입력한 내용 모두 취소 -->
			</tr>

		</table>
	</form>


	<h3># POST 방식 요청</h3>

	<ul>
		<li>POST 방식을 사용하면 URL에 노출없이 데이터를 보낼 수 있음</li>
		<li>데이터는 request의 body를 통해 보내짐</li>
	</ul>

	<form action="/chap02/formTest" method="POST">

		<table>
			<tr>
				<th>name:</th>
				<td><input type="text" name="user-name" /></td>
			</tr>
			<tr>
				<th>age:</th>
				<td><input type="number" name="user-age" /></td>
			</tr>
			<tr>
				<th>password:</th>
				<td><input type="password" name="user-password" /></td>
			</tr>

			<tr>
				<th>color:</th>
				<td><input type="color" name="user-color" /></td>
			</tr>

			<tr>
				<td><input type="submit" /></td>
				<!-- 데이터 전송 -->
				<td><input type="reset" /></td>
				<!-- 입력한 내용 모두 취소 -->
			</tr>

		</table>
	</form>

	<h3># 링크로 GET 방식 요청 보내기</h3>

	<p>주소를 직접 수정하는 것만으로도 GET방식 파라미터를 실어보낼 수 있다</p>

	<a href="/chap02/formTest?user-name=king&user-age=22">드가자</a>

</body>
</html>