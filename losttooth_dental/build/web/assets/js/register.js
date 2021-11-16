
        
    $('document').ready(function() {
        
        var pass = document.getElementById("password").value;
        var cpass = document.getElementById("confirmPassword").value;
        
        function validatePass(){
            if (pass != cpass){
            //alert("Passwords Do not match");
            cPass.setCustomValidity("Passwords do not match");
            document.getElementById("password").style.borderColor = "#E34234";
            document.getElementById("confirm_password").style.borderColor = "#E34234";
            }
            else {
            cpass.setCustomValidity('');
            }
        }
        
        pass.onchange = validatePass;
        cpass.onkeyup = validatePass;
    });
