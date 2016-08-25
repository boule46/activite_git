window.onload = init;

//les EventListeners
function init()
{
  document.getElementById('form2').addEventListener("click", checkForm2, false);


}

function checkForm(CetteFormulaire)
{
  if(validerText())
    if(validerMail()) {return true;}
    else{return false;}

}


function validerText()
{
  //Controle champs de text
  var textAControler, text2;

  textAControler = document.getElementsByName('texte')[0].value;
  text2 = textAControler.length;

  if(text2 < 2 || typeof textAControler != 'string')
  {
    alert("Votre text n'est pas valide, entrez un text valide.")
    return false;
  }
    else
    {
      alert("Vous avez saisie: " + textAControler);
      return true;
    }

}



  //Controle de mail en sachant que HTML gère le required et il s'assure que la chaîne contient un @
function validerMail()
{
  var controlMail, controlMailLength, regex

  controlMail = document.getElementsByName('email')[0].value;
  controlMailLength = controlMail.length;
  regex = /[0-9 a-z A-Z.-]+@[0-9 a-z A-Z.-]+.[a-z]{2,4}/gi;

  if(controlMailLength < 4 || !regex.test(controlMail))
  {
    alert("Votre adresse e-mail n'est pas valable.");
    return false;
  }
  else {
    alert("Votre mail est: " + controlMail);
    return true;
  }

}


function checkForm2()
{
  var textAControler, text2;

  textAControler = document.getElementsByName('texte1')[0].value;
  text2 = textAControler.length;

  if(text2 < 2 || typeof textAControler != 'string')
  {
    alert("Votre text n'est pas valide, entrez un text valide.")
    return false;
  }
    else
    {
      alert("Vous avez saisie: " + textAControler);
      return true;
    }
}
