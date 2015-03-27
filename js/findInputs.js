window.onload = function findSubmitButton() {
    var button = document.querySelector(".send_info").addEventListener("click", retrieveInputText);
}

function retrieveInputText() {
    var inputArray = document.querySelectorAll('input[type="text"]');
		if(inputArray.length != 6){
			alert("Invalido, inserte sus datos en todos los campos" + inputArray.length);
		}
		else{
			alert("done:" + inputArray.toString());
			console.log(inputArray);
		}
    }
    
