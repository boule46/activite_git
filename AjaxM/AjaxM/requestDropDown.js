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

    for (var i = 0; i < cat.length ; i++) {

       
        option = document.createElement("option");
        option.value = cat[i].CategoryID;
        option.text = cat[i].CategoryName;
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
    zoneText.innerHTML = "";

    for (var i = 0; i < prod.length ; i++) {
        var tr = document.createElement("tr");
        var td = document.createElement("td");
        td.textContent = prod[i].ProductID;
        tr.appendChild(td);
        var td2 = document.createElement("td");
        td2.textContent = prod[i].ProductName;
        tr.appendChild(td2)
        zoneText.appendChild(tr);
    }


}