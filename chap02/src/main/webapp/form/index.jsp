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
		<li>input �±׸� ����� ����ڷκ��� �پ��� �Է��� ���� �� �ִ�</li>
		<li>����ڰ� �Է��� �����ʹ� �ڹٽ�ũ��Ʈ���� Ȱ���� ���� �ְ� ������ ������ ���� �ִ�</li>
		<li>type �Ӽ��� ������ �پ��� ������� �Է��� ���� �� �ִ�</li>
	</ul>

	<table border="1">
		<tr>
			<th>Type</th>
			<th>Shape</th>
			<th>Description</th>
		</tr>
		<tr>
			<td>text</td>
			<td><input type="text" placeholder="���� ������"></td>
			<!--  text�� value�� �⺻�� �ִ¤� �ð��� -->
			<td>�Ϲ����� �ؽ�Ʈ �Է�</td>
		</tr>

		<tr>
			<td>number</td>
			<td><input type="number" min="-10" max="10" step="2" value="8"></td>
			<td>���ڸ� �Է°���</td>
		</tr>

		<tr>
			<td>password</td>
			<td><input type="password"></td>
			<td>��й�ȣ�� �� ��</td>
		</tr>
		<tr>
			<td>date</td>
			<td><input type="date"></td>
			<td>��¥ ����(���������� ����� �ٸ�)</td>
		</tr>
		<tr>

			<td>radio</td>
			<!-- name �Ӽ��� input �±��� ī�װ��� �ǹ��� name�� ������ �� �߿����� �Ѱ��� ���ð��� -->
			<!-- label �±׸� �ָ� ���ھտ� ���׶�̸� �������ʰ� ���ڸ� ������ ������ �� 
			���ڱ��� ���� �󺧷� ��� ������ �����ϰ� �ϴ� ���� 
			radio �±��� id �Ӽ��� label �±��� for �Ӽ��� �̿��� ������-->

			<td>
				<input type="radio" name="lunch" id="hotbar"> 
				<label for="hotbar">�ֹ�</label><br> 
				
				<input type="radio" name="lunch" id="rice">
				<label for="rice">�����</label><br> 
				
				<input type="radio" name="lunch" id="cken">
				<label for="cken">ġŲ</label><br>

				<input type="radio" >���<br></td>
			<td>���� �ɼ� �� ���ä���</td>
		</tr>

		<tr>
			<!-- checkbox���� label�� �޾��� �� ���� -->
			<td>checkbox</td>
			
			<td>

			<input type="checkbox" name="chi" id="cken1" /> 
			<label for="cken1">���Ķ��̵�</label><br> 
			
			<input type="checkbox" name="chi" id="cken2" /> 
			<label for="cken2">���</label><br> 
			
			<input type="checkbox" name="chi" id="cken3" /> 
			<label for="cken3">����</label><br>
			
			<input type="checkbox" name="chi" id="cken4" /> 
			<label for="cken">�׽�ƮġŲ</label>

				<!-- �׽�Ʈ ġŲ�� for �Ӽ��� cken�̶� ���ڸ� ������ ���� radio Ÿ�Կ��� label cken�� �� ġŲ�� ���õ�
			�ٵ� ���� ���� üũ�ڽ��� ������ id�� cken������ �׽�ƮġŲ�� ���������� ���õ� 
			ġŲ�� ���ڸ� �����ٰ� �׽�ƮġŲ�� ���õ����� ����
			���� �׽�ƮġŲ�� checkbox�� id���� cken2�� �ٲ㵵 ����� ���õǰų� ������ ����
			�� �ش� ���� for���� ���� id�� ���� ���� �ٶ�
			�׳� for���� ���� id�� ���Ѵٴ� �͸� �����ϸ鼭 id�� �ٸ��� �ִ°� �´µ�
			�̰����� �غôµ� ���� �Ϸ������� �ʰ� �ٸ��� ����� 
			 --></td>
			<td>�ߺ� ���� ����</td>
			
			<!--  radio�� ������ �� �ϳ��� ���� checkbox�� �ߺ����� ���� -->
		<tr>
			<td>textarea</td>
			<td><textarea name="" id="" cols="30" rows="10"></textarea></td>
			<td>�� ������ �ؽ�Ʈ�� �Է¹޴�</td>
		</tr>

		<tr>
			<td>select</td>
			<td><select name="" id="">
					<option value="">1</option>
					<option value="">2</option>
					<option value="">3</option>
			</select></td>
			<td>���״�� ����</td>
		</tr>

		<tr>
			<td>color</td>
			<td><input type="color" /></td>
			<td>����</td>
		</tr>







	</table>


	<h3># Form</h3>
	<ul>
		<li>����ڰ� form �±� ������ input �±׵鿡�� ������ ���� ������ ����</li>
		<li>form �±� ���ο��� submit�� �߻��ϸ� �� ������ �����Ϳ� �Բ� ������ ��û�� ����</li>
		<li>input �±��� name �Ӽ��� �������� key������ �Ͽ� value�� �Բ� ���۵ȴ�</li>
		<li>�Ǿ�� �����ʹ� �������� request ��ü���� Ȯ���� �� �ִ�</li>
		<li>action �Ӽ� : ��û�� ���� ���� URL</li>
		<li>method �Ӽ� : ��û ����� ���� (get or post)</li>
	</ul>

	<h3># GET ��� ��û</h3>
	<ul>
		<li>GET����� �����Ͱ� ?key1=value1&key2=value2... ���·� URL�� �� �ڿ� �پ ���۵�</li>
		<li>��й�ȣ ������ ������ ������ �־� GET������� �����ϸ� �ȵ�</li>
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
				<!-- select ������ req.getParameter(name)�� ���� ���� ������ ������
				���� name �Ӽ��� ������ select ������ ������ �ɼ��� �����ϸ� 
				�ɼǿ��� value �Ӽ��� �Էµ� ���� �ҷ��� 
				�� �� ��ü ���� �� ���� ������ �ִ� value ���� �ҷ���-->
				<td><select name="my-name" id="my">
						<option value="seo">seo2</option>
						<option value="da">da2</option>
						<option value="seul">seul2</option>
				</select></td>
			</tr>

			<tr>
				<td><input type="submit" /></td>
				<!-- ������ ���� -->
				<td><input type="reset" /></td>
				<!-- �Է��� ���� ��� ��� -->
			</tr>

		</table>
	</form>


	<h3># POST ��� ��û</h3>

	<ul>
		<li>POST ����� ����ϸ� URL�� ������� �����͸� ���� �� ����</li>
		<li>�����ʹ� request�� body�� ���� ������</li>
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
				<!-- ������ ���� -->
				<td><input type="reset" /></td>
				<!-- �Է��� ���� ��� ��� -->
			</tr>

		</table>
	</form>

	<h3># ��ũ�� GET ��� ��û ������</h3>

	<p>�ּҸ� ���� �����ϴ� �͸����ε� GET��� �Ķ���͸� �Ǿ�� �� �ִ�</p>

	<a href="/chap02/formTest?user-name=king&user-age=22">�尡��</a>

</body>
</html>