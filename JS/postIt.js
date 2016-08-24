window.onload = init;

function init(){

document.getElementById('btnAfficher').addEventListener("click", postSVA, false);
document.getElementById('btnAfficher').addEventListener("click", postTA, false);
document.getElementById('btnCache').addEventListener("click", postSC, false);
document.getElementById('survol').addEventListener("mouseover", postSVA, false);
document.getElementById('survol').addEventListener("mouseover", post3, false);
document.getElementById('survol').addEventListener("mouseout", post4, false);
document.getElementById('survol').addEventListener("mouseout", post5, false);
}

var afficher = document.getElementById('affiche');
var ecrireText = document.getElementById('text');

function postSVA()
{
  afficher.style.visibility = "visible";
}

function postTA()
{
  ecrireText.innerHTML = "Vous avez cliqué sur le bouton : Affiche, merci pour la couleur!";
}

function postSC()
{
    afficher.style.visibility = "hidden";
}

function post3()
{
  ecrireText.innerHTML = "C'est gentil de me survoler...";
}

function post4()
{
  afficher.style.visibility = "hidden";

}

function post5(){
  ecrireText.innerHTML = "";
}
