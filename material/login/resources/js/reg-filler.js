function getQueryVariable(variable)
{
    var query = window.location.search.substring(1);
    var vars = query.split("&");
    for (var i=0;i<vars.length;i++) {
        var pair = vars[i].split("=");
        if (pair[0] == variable)
        {
            return decodeURIComponent(pair[1]);
        }
    }
    return(false);
}

document.addEventListener("DOMContentLoaded", function(event) { 
    let emailField = document.querySelector("input#email");
    if (emailField) {
        let emailAddress = getQueryVariable("email_address");
        if (emailAddress){
            emailField.value = emailAddress;
        }
    }

    let firstNameField = document.querySelector("input#firstName");
    if (firstNameField) {
        let firstName = getQueryVariable("first_name");
        if (firstName){
            firstNameField.value = firstName;
        }
    }

    let lastNameField = document.querySelector("input#lastName");
    if (lastNameField) {
        let lastName = getQueryVariable("last_name");
        if (lastName){
            lastNameField.value = lastName;
        }
    }
});