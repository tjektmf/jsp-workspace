const modiBtn = document.querySelector('#modiBtn');
const inputPassword = document.querySelector('#inputPassword');
const delBtn = document.querySelector('#delBtn');
const delBtn2 = document.querySelector('#delBtn2');
const hiddenPassword = document.querySelector('#hiddenPassword');
const delForm = document.querySelector('#delForm');

// 함수 이름이 getHashedPassword, 매개변수로 password를 받음
// 받은 매개변수를 sha256 함수에 넣고 대문자로 바꿔서 리턴함
const getHashedPassword = password => sha256(password).toUpperCase();

// 함수이름 checkHash, 매개변수는 ()니까 받지않음 리턴 한줄이면 {}생략가능
// 타입과 값이 모두 같아야 === true, inputPassword도 그 이하에 수많은 속성을 가지기 때문에 value 값을 콕 집어서 꺼내와야함
const checkHash = () => boardPassword === getHashedPassword(inputPassword.value);

modiBtn.addEventListener('click', () => {

	if (checkHash()) {
		// checkHash가 true 라면 아래 링크로 이동, '?board_id=xx' > GET 방식 데이터전송
		location.href = './modify?board_id=' + board_id;
	} else {
		alert('비밀번호틀림');
	}
	console.log('inputPassword : ', inputPassword.value);
	console.log('boardPassword : ', boardPassword);
	console.log('inputHashword : ', sha256(inputPassword.value));
});

delBtn.addEventListener('click', () => {
	
	if (checkHash()) {
		hiddenPassword.value = getHashedPassword(inputPassword.value);
        delForm.submit();
	} else {
		alert('비밀번호틀림');
	}

	//open('./delete','_blank', 'width=500, height=500, top=100, right=100');
})

delBtn2.addEventListener('click', () => {
	const popup = open('./delete/open', '_blank', 'width=500,height=350');

})
