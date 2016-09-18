window.onload = function DrDown()
{
    xhttp = new XMLHttpRequest;
    xhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            lireDonnees(xhttp.responseText);
        }
        //else {
        //    document.getElementById("dropDown").innerHTML = "Erreur de readystate";
        //}
    };

    xhttp.open("GET", "Category.aspx", true);
    xhttp.setRequestHeader("Content-Type", "application/JSON");
    xhttp.send(null);
}


function lireDonnees(donnees)
{
    var cat = new Array();
    cat = JSON.parse(donnees);
    var zoneText = document.getElementById("dropDown");
    var option;

    for (var i = 0; i < Object.keys(cat).length ; i++) {

       
        option = document.createElement("option");
        option.value = Object.keys(cat)[i];
        option.text = Object(cat)[++i];
        i = --i;
        //zoneText.text = cat.value[i];
        zoneText.appendChild(option);
    }

}

function produits()
{
   
    var selectCat = document.getElementById("dropDown");
    var selectCat2 = selectCat.options[selectCat.selectedIndex].value;
    
    Deuxhttp = new XMLHttpRequest();
    Deuxhttp.onreadystatechange = function () {
        if (this.readyState == 4 && this.status == 200) {
            lireProduits(Deuxhttp.responseText);
        }
    };
    Deuxhttp.open("GET", "ProduitsCat.aspx?MainContent_dropDown=" + encodeURIComponent(document.getElementById("dropDown").options[document.getElementById("dropDown").selectedIndex].value), true);
        Deuxhttp.setRequestHeader("Content-Type", "application/JSON");
        Deuxhttp.send(null);


}

function lireProduits(donnees)
{
    var prod = new Array();
    prod = JSON.parse(donnees);
    var zoneText = document.getElementById("tableProd");
    var td;

    for(var key in prod)
    {
        td = document.createElement("td");
        td.text = prod[key];
        zoneText.appendChild(td);
    }

    //for (var i = 0; i < Object.keys(prod).length ; i++) {
    //    td = document.createElement("tr");
    //    td = document.createElement("td");
    //    td.value = Object.keys(prod)[i];
    //    td.text = Object.(prod)[i];
    //    zoneText.text = cat.value[i];
    //    zoneText.appendChild(td);
    //}

}