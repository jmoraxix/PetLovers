window.onload = function findSubmitButton() {
    var button = document.querySelector(".send_info").addEventListener("click", serverInteraction);
}

function serverInteraction() {
  var xmlhttp;
  var inputArray;
  var finalArray = [];
  var JSONArray;
  var userId;
  if (window.XMLHttpRequest){
	  xmlhttp = new XMLHttpRequest();
  } else if (window.ActiveXObject) {
	  xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
  } else {
	  throw new Error("Your Browser is not compatible with XMLHTTP");
	  return false;
  }
  inputArray = document.querySelectorAll("input[type=text]")
  for(var i = 0; i < inputArray.length; i++){
	  finalArray[i] = inputArray[i].value;
  }
	console.log(finalArray);
    JSONArray = JSON.stringify({finalArray: finalArray}); 
	console.log(JSONArray);
	xmlhttp.open("POST","phpFiles/sendUserInfo.php", true);
	xmlhttp.setRequestHeader("Content-type","application/json;charset=UTF-8");
	xmlhttp.send(JSONArray);
	console.log("status:" + xmlhttp.status);
}