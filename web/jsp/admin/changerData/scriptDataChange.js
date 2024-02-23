function changePhoto() {
    var fileInput = document.getElementById('fileInput');
    var photo1 = document.getElementById('photoCD1');
    
    if (fileInput.files && fileInput.files[0]) {
        var reader = new FileReader();
        
        reader.onload = function(e) {
            photo1.src = e.target.result;
        };
        
        reader.readAsDataURL(fileInput.files[0]); // Read image as data URL
    } else {
        alert('Please select a file.');
    }
}
