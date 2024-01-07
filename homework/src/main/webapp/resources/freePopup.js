const newPopup = document.getElementById('newPopup');
const listPopup = document.getElementById('listPopup');

newPopup.addEventListener('click', () => {

	open('./newTable', '_blank', 'width=500, height=500, top=100, right=300');

})

listPopup.addEventListener('click', () => {

	open('./tableList', '_blank', 'width=500, height=500, top=100, right=300');

})
