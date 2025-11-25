function validateForm() {
    var username = document.getElementById('<%= username.ClientID %>').value;
    var password = document.getElementById('<%= password.ClientID %>').value;
    var msg = document.getElementById('<%= msg.ClientID %>');


    if (username === "" || password === "") {
        msg.innerText = "Please fill out both username and password!";
        msg.style.color = "#ff4d6d"; // red color for error
        return false; // Prevent server-side submission
    }
        return true;
}