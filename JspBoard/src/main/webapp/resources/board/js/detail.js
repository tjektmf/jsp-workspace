const modiBtn = document.querySelector('#modiBtn');
const inputPassword = document.querySelector('#inputPassword');
const delBtn = document.querySelector('#delBtn');
const delBtn2 = document.querySelector('#delBtn2');
const hiddenPassword = document.querySelector('#hiddenPassword');
const delForm = document.querySelector('#delForm');


const getHashedPassword = password => sha256(password).toUpperCase();
const checkHash = () => boardPassword === getHashedPassword(inputPassword.value);

console.log('11111111');
// boardPassword detail.jsp
modiBtn.addEventListener('click', () => {

	if (checkHash()) {
		location.href = './modify?board_id=' + board_id;
	} else {
		alert('비밀번호틀림');
	}
	console.log('inputPassword : ', inputPassword.value);
	console.log('boardPassword : ', boardPassword);
	console.log('inputHashword : ', sha256(inputPassword.value));
});

delBtn.addEventListener('click', () => {
	console.log('111');
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
