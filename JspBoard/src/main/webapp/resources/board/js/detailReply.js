const replyContent = document.querySelector('#replyContent');
const replyWriter = document.querySelector('#replyWriter');
const replyPassword = document.querySelector('#replyPassword');
const replyForm = document.querySelector('#replyForm');

console.log('111111');
replyContent.addEventListener('keydown', (e) => {
	console.log(e);

	if (e.keyCode === 13) {
		// Shift 안누르고 Enter > submit()
		if (!e.shiftKey) {
			e.preventDefault();

			if (replyWriter.value.trim() === '') {
				alert('ㄱ글쓴이 빔');
				return;
			} else if (replyPassword.value.trim() === '' || replyPassword.value.length < 5) {
				alert('비밀번호 짧음');
				return;
			}
			replyForm.submit();
		} else {
			// Shift + Enter > 줄바꾸기
			replyContent.innerText += '\n';
		}
	}
});