
document.getElementById('btnEnviar').addEventListener("submit",function(e){
	e.preventDefault();
	
	var usuario = document.getElementById('user').value;
	
  	var password = document.getElementById('usuarioPass').value;
  	
  	if (usuario == "" || password == "") {
		
	    document.getElementById("msgLogin").classList.add('show')
    	return false;
  	}
  	
  	return true;
	
});

