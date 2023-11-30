function mostrarPass(dato, dato2) {
    let datoRec=document.getElementById(dato).id 
    let datoRec2=document.getElementById(dato2).id 
    let cadena = "ocultarPass('"+document.getElementById(dato).id +"','"+document.getElementById(dato2).id +"')"

    document.getElementById(datoRec).setAttribute("type","text")
    document.getElementById(datoRec2).setAttribute("class", "bi bi-eye-fill")
    document.getElementById(datoRec2).setAttribute("onclick",cadena)
}

function ocultarPass(dato, dato2) {
    let datoRec=document.getElementById(dato).id 
    let datoRec2=document.getElementById(dato2).id 
    let cadena = "mostrarPass('"+document.getElementById(dato).id +"','"+document.getElementById(dato2).id +"')"

    document.getElementById(datoRec).setAttribute("type","password")
    document.getElementById(datoRec2).setAttribute("class", "bi bi-eye-slash-fill")
    document.getElementById(datoRec2).setAttribute("onclick",cadena)
}

document.getElementById("repass").addEventListener('keyup',function(e){
	e.preventDefault();
	var btn1 = document.getElementById("pass");
	var btn2 = document.getElementById("repass");
	
	if(btn1 != btn2){
		
		return false;
	}
	return true;
	
})