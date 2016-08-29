window.onload = init;

function init()
{
  document.getElementsByName('submit')[0].addEventListener("click", checkForm, false);
}

function checkForm()
{
  if(validerCodePostal()){
    document.getElementById('codePostal').innerHTML = "";
    if(validerTelephone()){
      document.getElementById('tele').innerHTML = "";
      return true;
    }
    else{
      return false;
    }
  }

}


function validerCodePostal()
{
  var textAControler, regex

  textAControler = document.getElementsByName('codePostal')[0].value;
  longeur = textAControler.length;
  regex = /[0-9]{5}/gi;

  if(!regex.test(textAControler) || longeur > 5 )
  {
    document.getElementById('codePostal').innerHTML = "*le code postal n'est pas correctement renseigné";
    return false;
  }
  else{
    return true;
  }
}


function validerTelephone()
{
  var textAControler, regex

  textAControler = document.getElementsByName('tel')[0].value;
  regex = /^[+]{1}[0-9]{2}[1-9]{1}[0-9]{8}/gi;

  if(!regex.test(textAControler))
  {
    document.getElementById('tele').innerHTML = "*votre numéro téléphone n'est pas correct.";
    return false;
  }
  else{
    return true;
  }

}
