const modiConfirmBtn = document.querySelector('#modiConfirmBtn');
const modiForm = document.querySelector('#modiForm');


// 버튼을 눌렀을때 validateForm 함수가 발동하며 참인 경우 modiForm.submit() 을 리턴하고
// modiForm 에서 submit 이 발생했을 때 이벤트리스너가 발동함
// 근데 이미 validateForm이 true라서 서밋이 된건데 false 일때 서밋을 막는 코드가 의미가 있나?
// 여기서 중요한 점 두가지
// 1. form 을 버튼태그나 인풋태그를 통해 서밋하지 않고 JS로 form.submit() 으로 가능
// 2. 요소의 특정 값을 꺼낼 때 .value를 사용해야 해야함 ex) board_id.value

const validateForm = () => {
	// board_title 내부에 수십개가 넘는 값들이 있고 우리가 원하는 값을 찾으려면 .value 해야함
	// 예를 들면 뭐 온클릭이 있고 없고 id여부 클래스여부 정렬여부 그냥 모든정보다 다 들어있음 여기서 .value만 찾음
	// trim 은 공백을 없앰
	if (modiForm.elements.board_title.value.trim() == '') {
		alert('제목이 텅텅');
		return false;
	} else if (modiForm.elements.board_content.value.trim() == '') {
		alert('내용이 텅텅');
		return false;
	}
	return true;
};

// 버튼을 눌렀을 때 이벤트
modiConfirmBtn.addEventListener('click', (e) => {
	console.dir(modiForm);
	// form.elements : form 에 소속되어 있는 요소들
	// name을 통해 한 요소를 선택할 수 있음
	console.log(modiForm.elements);
	console.log(modiForm.elements.board_title);
	validateForm() ? modiForm.submit() : 0;
});

// 이 폼에서 submit이 발생하는 경우 실행되는 이벤트
modiForm.addEventListener('submit', (e) => {
	if (!validateForm()) {
		e.preventDefault(); // 기본동작을 막음 (submit 중단)
	}
});

// modiForm.submit(); // form 요소를 JS에서 직접 submit 할 수 있음