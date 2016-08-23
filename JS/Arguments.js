function perimetre()
{
  var resultat = 0;

  //test si il y a un paramètre
if(arguments.length === 0) resultat = alert("Sans paramètres on ne peut pas calculé, mettez un valeur.");
else if (arguments.length == 1) for (i in arguments) resultat = 4*arguments[i];
else if (arguments.length === 2) for (i in arguments) resultat = (arguments[0] + arguments[1])*2 + " rectangle";
else {
  for (i in arguments) resultat += arguments[i];
   console.log("polygone :");
}
console.log(resultat);

}
