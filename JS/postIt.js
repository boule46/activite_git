window.onload = init;


window.addEventListener("load", post2, false);
document.getElementById('btnAfficher').addEventListener("click", post, false);
document.getElementById('btnAfficher').addEventListener("click", post1, false);
document.getElementById('btnCache').addEventListener("click", post2, false);
document.getElementById('survol').addEventListener("mouseover", post, false);
document.getElementById('survol').addEventListener("mouseover", post3, false);
document.getElementById('survol').removeEventListener("mouseout", post, false);
document.getElementById('survol').removeEventListener("mouseout", post3, false);


function post()
{
  document.getElementById('affiche').style.visibility = "visible";

}

function post1()
{
  document.getElementById('text').innerHTML = "Vous avez cliqué sur le bouton : Affiche, merci pour la couleur!";
}

function post2()
{
    document.getElementById('affiche').style.visibility = "hidden";
}

function post3()
{
  document.getElementById('text').innerHTML = "C'est gentil de me survoler...";
}
