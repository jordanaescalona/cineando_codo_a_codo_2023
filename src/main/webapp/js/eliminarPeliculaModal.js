const deleteModal = document.getElementById('deleteModal')
if (deleteModal) {
  deleteModal.addEventListener('show.bs.modal', event => {
    // Button that triggered the modal
    const button = event.relatedTarget
    // Extract info from data-bs-* attributes
    const recipient = button.getAttribute('idDel')
    
    const pelicula = button.getAttribute('nombrePelicula')
    // If necessary, you could initiate an Ajax request here
    // and then do the updating in a callback.
	
    // Update the modal's content.
    const modalTitle = deleteModal.querySelector('.modal-title')
    const modalBodyInput = deleteModal.querySelector('.modal-body input')
	
	const nombrePelicula = document.getElementById("nombreP")
	
	nombrePelicula.innerHTML = pelicula
    modalBodyInput.value = recipient
  })
}

