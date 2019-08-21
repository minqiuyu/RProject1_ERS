  function showlogin(){
    document.getElementById("LoginPage").style.display = "block";
    document.getElementById("RegisterPage").style.display = "none";
  }

  function showreg(){
    document.getElementById("LoginPage").style.display = "none";
    document.getElementById("RegisterPage").style.display = "block";
  }
  var password = document.getElementById("pass1")
  , confirm_password = document.getElementById("pass2");

function validatePassword(){
  if(password.value != confirm_password.value) {
    confirm_password.setCustomValidity("Passwords Don't Match");
  } else {
    confirm_password.setCustomValidity('');
  }
}

password.onchange = validatePassword;
confirm_password.onkeyup = validatePassword;