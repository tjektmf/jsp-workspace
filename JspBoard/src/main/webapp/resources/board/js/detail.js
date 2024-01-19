const modiBtn = document.querySelector('#modiBtn');
const inputPassword = document.querySelector('#inputPassword');
const delBtn = document.querySelector('#delBtn');
const delBtn2 = document.querySelector('#delBtn2');
const hiddenPassword = document.querySelector('#hiddenPassword');
const delForm = document.querySelector('#delForm');

// �Լ� �̸��� getHashedPassword, �Ű������� password�� ����
// ���� �Ű������� sha256 �Լ��� �ְ� �빮�ڷ� �ٲ㼭 ������
// �Ű������� sha256 �� �����ϰ� �빮�ڷ� �ٲ��ִ� �Լ���
const getHashedPassword = password => sha256(password).toUpperCase();

// �Լ��̸� checkHash, �Ű������� ()�ϱ� �������� ���� �����̸� {}��������
// Ÿ�԰� ���� ��� ���ƾ� === true, inputPassword�� �� ���Ͽ� ������ �Ӽ��� ������ ������ value ���� �� ��� �����;���
const checkHash = () => boardPassword === getHashedPassword(inputPassword.value);
// checkHash() ���� true or false �� ���� JS �� const Ÿ���� boolean Ÿ���� �ƴ϶� �򰥸� �� ����
// checkHash() �� getHashedPassword(�Ű�����) �� ����ְ� �Ű��������� �̹� �����ν� �� �ֱ� ������
// checkHash() �� ����ϸ� ���� �۾��� �����൵ ���� ó���� ��

modiBtn.addEventListener('click', () => {

	if (checkHash()) {
		// checkHash�� true ��� �Ʒ� ��ũ�� �̵�, '?board_id=xx' > GET ��� ����������
		location.href = './modify?board_id=' + board_id;
	} else {
		alert('��й�ȣƲ��');
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
		alert('��й�ȣƲ��');
	}

	//open('./delete','_blank', 'width=500, height=500, top=100, right=100');
})

delBtn2.addEventListener('click', () => {
	const popup = open('./delete/open', '_blank', 'width=500,height=350');

})
