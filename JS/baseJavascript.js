window.onload = init;

function init()
{


document.getElementById('btn').addEventListener("click", calcul, false);
}

function calcul()
{
  var nombreA1 = document.getElementsByName('nombre1')[0].value;
  var nombreB1 = document.getElementsByName('nombre2')[0].value;
  somme(nombreA1, nombreB1);
}


function somme(nombreA, nombreB)
{


  var resultat = parseInt(nombreA) + parseInt(nombreB);

  document.getElementsByName('resultatHTML')[0].value = resultat;

}
