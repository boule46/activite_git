window.onload = init;

window.addEventListener("load", combobox, false);

function init()
{






}



function combobox()
{
  var obj = JSON.parse(text);

  var x = document.getElementsByTagName("h3");

  x.innerHTML = obj.libelle;
  //x[1].innerHTML = text[1].libelle;


}
