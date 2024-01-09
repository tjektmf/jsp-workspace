
const deleteCheck = document.getElementById('deleteCheck');
const deleteCancel = document.getElementById('deleteCancel');

deleteCancel.addEventListener('click', ()=>{
	close();
})

deleteCheck.addEventListener('click', ()=>{
	location.href = '/'
	close();
	
})