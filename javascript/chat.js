const form = document.querySelector('.typing-area'),
inputField = form.querySelector('.input-field'),
sendBtn = form.querySelector('button'),
chatBox = document.querySelector('.chat-box');

form.onsubmit = (e) => {
    e.preventDefault(); // Prevent form submission
}

sendBtn.onclick = () => {
    //let's start ajax request
    let xhr = new XMLHttpRequest(); // Create a new XMLHttpRequest object
    xhr.open("POST", "php/insert-chat.php", true); // Open a POST request to login.php
    xhr.onload = () => { // When the request is complete
        if(xhr.readyState === XMLHttpRequest.DONE){
            if(xhr.status === 200){ // If the request was successful
                inputField.value = ""; // Clear the input field once the message is inserted to the database
                scrollToBottom(); // Scroll to the bottom of the chat box
            }
    }
}
    // FormData is used to send form data
    //we have to send the form data through ajax to php
    let formData = new FormData(form); // Create a new FormData object from the form
    xhr.send(formData); // Send the request from data to php
}

chatBox.onmouseenter = () => {
    chatBox.classList.add("active"); // Add the active class to the chat box
}
chatBox.onmouseleave = () => {
    chatBox.classList.remove("active"); // Remove the active class from the chat box
}
// When the mouse enters the chat box, add the active class to it

setInterval(() => {
    //let's start ajax request
    let xhr = new XMLHttpRequest(); // Create a new XMLHttpRequest object
    xhr.open("POST", "php/get-chat.php", true); // Open a GET request to userslist.php
    xhr.onload = () => { // When the request is complete
    if(xhr.readyState === XMLHttpRequest.DONE){
            if(xhr.status === 200){ // If the request was successful
                let data = xhr.response; // Get the response data
                chatBox.innerHTML = data;
                if(!chatBox.classList.contains("active")){ // If the chat box is not active
                    scrollToBottom(); // Scroll to the bottom of the chat box
                }
}
}
}


// FormData is used to send form data
    //we have to send the form data through ajax to php
    let formData = new FormData(form); // Create a new FormData object from the form
    xhr.send(formData); // Send the request
}, 500); // Set an interval to check for new messages every 500 milliseconds

function scrollToBottom() {
    chatBox.scrollTop = chatBox.scrollHeight; // Scroll to the bottom of the chat box
}
// Scroll to the bottom of the chat box