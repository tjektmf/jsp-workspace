<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>피자선택</title>
<link rel="stylesheet" href="./pizzaStyle.css" />
</head>
<body>

<hr />

<div id="box" style="display: grid; grid-template-columns : 1fr 1fr 1fr 1fr;">
<div><img src="https://cdn.dominos.co.kr/admin/upload/goods/20231214_a0G7WsxF.jpg" width="200px" alt="" /></div>
<div><img src="https://cdn.dominos.co.kr/admin/upload/goods/20231214_B8cGMt1w.jpg" width="200px" alt="" /></div>
<div><img src="https://cdn.dominos.co.kr/admin/upload/goods/20231214_Y3W7J63w.jpg" width="200px" alt="" /></div>
<div><img src="https://cdn.dominos.co.kr/admin/upload/goods/20231215_965Hu68d.jpg" width="200px" alt="" /></div>
</div>
<div id="main" style="border: 1px red solid; display: grid; grid-template-columns: repeat(4, 1fr); padding: 10px;">
<div class="aa">
<input form="form1" type="checkbox" name="snowlarge" id="snowL"/>
<label for="snowL">스노우L</label>
<input form="form1" type="number" name="snowL" min="0" max="20" step="1" value="0"/> <br /><br />
<input form="form1" type="checkbox" name="snowmedium" id="snowM"/>
<label for="snowM">스노우M</label>
<input form="form1" type="number" name="snowM" min="0" max="20" step="1" value="0"/> <br /><br />
</div>

<div>
<input form="form1" type="checkbox" name="shrimplarge" id="shrimpL"/>
<label for="shrimpL">슈림프L</label>
<input form="form1" type="number" name="shrimpL" min="0" max="20" step="1" value="0"/> <br /><br />
<input form="form1" type="checkbox" name="shrimpmedium" id="shrimpM"/>
<label for="shrimpM">슈림프M</label>
<input form="form1" type="number" name="shrimpM" min="0" max="20" step="1" value="0"/> <br /><br />
</div>

<div>
<input form="form1" type="checkbox" name="stakelarge" id="stakeL"/>
<label for="stakeL">스테끼L</label>
<input form="form1" type="number" name="stakeL" min="0" max="20" step="1" value="0"/> <br /><br />
<input form="form1" type="checkbox" name="stakemedium" id="stakeM"/>
<label for="stakeM">스테끼M</label>
<input form="form1" type="number" name="stakeM" min="0" max="20" step="1" value="0"/> <br /><br />
</div>

<div>
<input form="form1" type="checkbox" name="bbqlarge" id="bbqL"/>
<label for="bbqL">비비큐L</label>
<input form="form1" type="number" name="bbqL" min="0" max="20" step="1" value="0"/> <br /><br />
<input form="form1" type="checkbox" name="bbqmedium" id="bbqM"/>
<label for="bbqM">비비큐M</label>
<input form="form1" type="number" name="bbqM" min="0" max="20" step="1" value="0"/> <br /><br />
</div>

<button form="form1" type="submit">구매하기</button>
</div>





<form id="form1" action="/pizza/pizza" method="get"></form>

</body>
</html>