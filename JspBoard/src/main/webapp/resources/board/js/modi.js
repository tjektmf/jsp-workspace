const modiConfirmBtn = document.querySelector('#modiConfirmBtn');
const modiForm = document.querySelector('#modiForm');


// ��ư�� �������� validateForm �Լ��� �ߵ��ϸ� ���� ��� modiForm.submit() �� �����ϰ�
// modiForm ���� submit �� �߻����� �� �̺�Ʈ�����ʰ� �ߵ���
// �ٵ� �̹� validateForm�� true�� ������ �Ȱǵ� false �϶� ������ ���� �ڵ尡 �ǹ̰� �ֳ�?
// ���⼭ �߿��� �� �ΰ���
// 1. form �� ��ư�±׳� ��ǲ�±׸� ���� �������� �ʰ� JS�� form.submit() ���� ����
// 2. ����� Ư�� ���� ���� �� .value�� ����ؾ� �ؾ��� ex) board_id.value

const validateForm = () => {
	// board_title ���ο� ���ʰ��� �Ѵ� ������ �ְ� �츮�� ���ϴ� ���� ã������ .value �ؾ���
	// ���� ��� �� ��Ŭ���� �ְ� ���� id���� Ŭ�������� ���Ŀ��� �׳� ��������� �� ������� ���⼭ .value�� ã��
	// trim �� ������ ����
	if (modiForm.elements.board_title.value.trim() == '') {
		alert('������ ����');
		return false;
	} else if (modiForm.elements.board_content.value.trim() == '') {
		alert('������ ����');
		return false;
	}
	return true;
};

// ��ư�� ������ �� �̺�Ʈ
modiConfirmBtn.addEventListener('click', (e) => {
	console.dir(modiForm);
	// form.elements : form �� �ҼӵǾ� �ִ� ��ҵ�
	// name�� ���� �� ��Ҹ� ������ �� ����
	console.log(modiForm.elements);
	console.log(modiForm.elements.board_title);
	validateForm() ? modiForm.submit() : 0;
});

// �� ������ submit�� �߻��ϴ� ��� ����Ǵ� �̺�Ʈ
modiForm.addEventListener('submit', (e) => {
	if (!validateForm()) {
		e.preventDefault(); // �⺻������ ���� (submit �ߴ�)
	}
});

// modiForm.submit(); // form ��Ҹ� JS���� ���� submit �� �� ����