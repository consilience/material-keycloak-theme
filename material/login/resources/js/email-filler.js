function getQueryVariable(variable)
{
    var query = window.location.search.substring(1);
    var vars = query.split("&");
    for (var i=0;i<vars.length;i++) {
        var pair = vars[i].split("=");
        if(pair[0] == variable){return pair[1];}
    }
    return(false);
}

document.addEventListener("DOMContentLoaded", function(event) { 
    let field = document.querySelector("input#email");
    if (field) {
        let emailAddress = getQueryVariable("email_address");
        if (emailAddress){
            field.value = emailAddress;
        }
    }
});