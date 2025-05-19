const form = document.querySelector(".login form"),
continueBtn = form.querySelector(".button input"),
errorText = form.querySelector(".error-text");

form.onsubmit = (e) => {
    e.preventDefault(); // Prevent form submission
}

continueBtn.onclick = () => {
    //let's start ajax request
    let xhr = new XMLHttpRequest(); // Create a new XMLHttpRequest object
    xhr.open("POST", "php/login.php", true); // Open a POST request to login.php
    xhr.onload = () => { // When the request is complete
        if(xhr.readyState === XMLHttpRequest.DONE){
            if(xhr.status === 200){ // If the request was successful
                let data = xhr.response; // Get the response data
                console.log(data);
                if(data === "success"){
                    location.href = "users.php"; // Redirect to users.php if signup is successful
                }else{
                    errorText.textContent = data; // Set the error text to the response data
                    errorText.style.display = "block"; // Show the error text
            }
        }
    }
}
    // FormData is used to send form data
    //we have to send the form data through ajax to php
    let formData = new FormData(form); // Create a new FormData object from the form
    xhr.send(formData); // Send the request from data to php
};