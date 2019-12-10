	function validate() {
		var id=document.getElementById("id").value;	
		var name=document.getElementById("name").value;
		var password=document.getElementById("password").value;
		if(id == "") {
			alert("Id can't be blank")
			return false;
		}
		else if(name == "") {
			alert("Name can't be blank")
			return false;
		}
		else if(password == "") {
			alert("Password can't be blank")
			return false;
		}
		else {
			return true;
		}
	}