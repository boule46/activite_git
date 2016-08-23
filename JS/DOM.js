

function prefere()
{
  if(document.getElementById('semaine').checked){
    document.getElementById("text").value = document.getElementById('semaine').value;
  }
  else if(document.getElementById('weekend').checked){
      document.getElementById("text").value = document.getElementById('weekend').value;
  }
  else {
    alert("Faites votre choix.");
  }

}
