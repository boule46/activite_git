
function RequeteAjax(id)
{
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        lireDonnees(xhttp.responseText);
    };
    xhttp.open("POST", "FullDescription1.aspx", true);
    xhttp.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    xhttp.send("id=" + id);
}

function lireDonnees(donnees)
{
    var nom = donnees;

    document.getElementById("fullDescriptionProduit").innerHTML = nom;


}

function RequeteAjaxPanier(id)
{
    xhttpanier = new XMLHttpRequest();
    //xhttpanier.onreadystatechange = function () {
    //    lirePanier(xhttpanier.responseText);
    //};
    xhttpanier.open("POST", "PanierTemp.aspx", true);
    xhttpanier.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    xhttpanier.send("idP=" + id);
}


