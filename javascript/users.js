const searchBar = document.querySelector(".users .search input"),
searchBtn = document.querySelector(".users .search button"),
usersList = document.querySelector(".users .users-list");

searchBtn.onclick = () => {
    searchBar.classList.toggle("active"); // Toggle the active class on the search bar
    searchBar.focus(); // Focus on the search bar
    searchBtn.classList.toggle("active"); // Toggle the active class on the search button
    searchBar.value = ""; // Clear the search bar
}

searchBar.onkeyup = () => { // When the user types in the search bar
    let searchTerm = searchBar.value; // Get the value of the search bar

    if(searchTerm != ""){ // If the search term is not empty
        searchBar.classList.add("active"); // Add the active class to the search bar
    }else{
        searchBar.classList.remove("active"); // Remove the active class from the search bar
    }
    // let's start ajax request
    let xhr = new XMLHttpRequest(); // Create a new XMLHttpRequest object
    xhr.open("POST", "php/search.php", true); // Open a POST request to search.php
    xhr.onload = () => { // When the request is complete
        if(xhr.readyState === XMLHttpRequest.DONE){
             if(xhr.status === 200){ // If the request was successful
                 let data = xhr.response; // Get the response data
                 usersList.innerHTML = data; // Set the user list to the response data
        }
    }else{
        xhr.onerror = () => {
            console.error("An error occurred while making the request.");
        };
    }
}
    xhr.setRequestHeader("Content-type", "application/x-www-form-urlencoded"); // Set the request header
    xhr.send("searchTerm=" + searchTerm); // Send the request
}

setInterval(() => {
     //let's start ajax request
     let xhr = new XMLHttpRequest(); // Create a new XMLHttpRequest object
     xhr.open("GET", "php/userslist.php", true); // Open a GET request to userslist.php
     xhr.onload = () => { // When the request is complete
        if(xhr.readyState === XMLHttpRequest.DONE){
             if(xhr.status === 200){ // If the request was successful
                 let data = xhr.response; // Get the response data
                if(!searchBar.classList.contains("active")){ // If the search bar is not active
                    usersList.innerHTML = data; // Set the user list to the response data
                }
        }
    }else{
        xhr.onerror = () => {
            console.error("An error occurred while making the request.");
        };
    }
}
    xhr.send(); // Send the request
}, 500); // Set an interval to check for new messages every 500 milliseconds
