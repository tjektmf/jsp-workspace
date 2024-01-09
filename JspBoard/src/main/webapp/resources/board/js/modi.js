const modiConfirmBtn = document.querySelector('#modiConfirmBtn');
const modiForm = document.querySelector('#modiForm');

const validateForm = () => {
	// board_title ���ο� ���ʰ��� �Ѵ� ������ �ְ� �츮�� ���ϴ� ���� ã������ .value �ؾ���
	// ���� ��� �� ��Ŭ���� �ְ� ���� id���� Ŭ�������� ���Ŀ��� �׳� ��������� �� ������� ���⼭ .value�� ã��
	if (modiForm.elements.board_title.value.trim() == '') {
		alert('������ ����');
		return false;
	} else if (modiForm.elements.board_content.value.trim() == '') {
		alert('������ ����');
		return false;
	}
	return true;

};

// �� ������ submit�� �߻��ϴ� ��� ����Ǵ� �̺�Ʈ
modiForm.addEventListener('submit', (e) => {
	if (!validateForm()) {
		e.preventDefault(); // �⺻������ ���� (submit �ߴ�)
	}
});

// ��ư�� ������ �� �̺�Ʈ
modiConfirmBtn.addEventListener('click', (e) => {
	console.dir(modiForm);

	// form.elements : form �� �ҼӵǾ� �ִ� ��ҵ�
	// name�� ���� �� ��Ҹ� ������ �� ����
	console.log(modiForm.elements);
	console.log(modiForm.elements.board_title);
	validateForm() ? modiForm.submit() : 0;
});

// modiForm.submit(); // form ��Ҹ� JS���� ���� submit �� �� ����