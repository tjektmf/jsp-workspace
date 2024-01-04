 const btn1 = document.getElementById('btn1');
 
 console.log(opener); // null
 btn1.addEventListener('click', (e)=>{
	 // window.open(url, target) : 새 창을 여는 자바스크립트 함수
	 // window 는 당연히 있는거라 어디서든 생략이 가능함
	 open('./popup.jsp', '_blank', 'width=300, height=300, top=100, right=100'); 
 });