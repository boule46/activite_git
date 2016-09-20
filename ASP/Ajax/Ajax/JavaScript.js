window.onload = function() {
    xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function () {
        if (xhttp.readyState == 4 && (xhttp.status == 200)) {
            lireDonnees(xhttp.responseText);
        }
        else {
            document.getElementById("selectNumber").innerHTML = "erreur de readystate.";
        }
    };
    xhttp.open("POST", "ListCategory.aspx", true);
    xhttp.setRequestHeader("Content-Type", "application/JSON");
    
    xhttp.send();

};


//requete pour afficher les produits


function produit() {

    var select = document.getElementById("selectNumber");
    var selectedItem = select.options[select.selectedIndex].value;

        xhttp2 = new XMLHttpRequest();
        xhttp2.onreadystatechange = function () {
            if (xhttp2.readyState == 4 && (xhttp2.status == 200)) {
                lireDonneesProduit(xhttp2.responseText);
            }
            else {
                document.getElementById("selectNumber").innerHTML = "erreur de readystate.";
            }
        };
        xhttp2.open("POST", "ListProduit.aspx", true);
        xhttp2.setRequestHeader("Content-Type", "application/JSON");
        xhttp2.send();

    
}


//function est passé derrière l'evenement onreadystatechange en function anonyme
//
//function responseAjax()
//{
//    if(xhttp.readyState == 4 && (xhttp.status == 200))
//    {
//        lireDonnees(xhttp.responseText);
//    }
//    else
//    {
//        document.getElementById("selectNumber").innerHTML = "erreur de readystate.";
//    }
//}

function lireDonnees(donnees)
{
    var category = new Array();
    category = JSON.parse(donnees);
    var chose = document.getElementById("selectNumber");
    //zoneText.value = '';
    
    for (var i = 1; i < Object.keys(category).length ; i++) {
        var cat = category[i];
        var zoneText = document.createElement("option");
        zoneText.value = [i];
        zoneText.textContent = cat;
        chose.appendChild(zoneText);
    }  
}

function  lireDonneesProduit(donnees)
{
   
    var produit = JSON.parse(donnees);
    var endroitAfficher = document.getElementById("tab");

    for (var i = 1; i < Object.donnees.length ; i++) {
        var prod = donnees[i];
        var zoneText = document.createElement("td");
        zoneText.value = [i];
        zoneText.textContent = prod;
        endroitAfficher.appendChild(zoneText);
    }



}



