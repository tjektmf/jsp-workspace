const replyContent = document.querySelector('#replyContent');
const replyWriter = document.querySelector('#replyWriter');
const replyPassword = document.querySelector('#replyPassword');
const replyForm = document.querySelector('#replyForm');

console.log('111111');
replyContent.addEventListener('keydown', (e) => {
	console.log(e);

	if (e.keyCode === 13) {
		// Shift �ȴ����� Enter > submit()
		if (!e.shiftKey) {
			e.preventDefault();

			if (replyWriter.value.trim() === '') {
				alert('���۾��� ��');
				return;
			} else if (replyPassword.value.trim() === '' || replyPassword.value.length < 5) {
				alert('��й�ȣ ª��');
				return;
			}
			replyForm.submit();
		} else {
			// Shift + Enter > �ٹٲٱ�
			replyContent.innerText += '\n';
		}
	}
});