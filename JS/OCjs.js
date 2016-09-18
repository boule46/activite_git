var Personnage ={
  //initialisé le Personnage
  initPerso: function(nom, sante, force){
    this.nom = nom;
    this.sante = sante;
    this.force = force;
  }
};

var Joueur = Object.create(Personnage);

Joueur.initJoueur = function(nom, sante, force){
  this.initPerso(nom, sante, force);
  this.xp = 0;
};

Joueur.decrire = function(){
    var description = this.nom + " a " + this.sante + " point de vie, " + this.force + " en force et " + this.xp + " point d'expérience";
    return description;
  };

var Adversaire = Object.create(Personnage);

Adversaire.initAdversaire = function(nom, sante, force, race, valeur){
  this.initPerso(nom, sante, force);
  this.race = race;
  this.valeur = valeur;
};

Adversaire.decrire = function(){
  var description = this.nom + " a " + this.sante + " point de vie, " + this.force + " en force et " + this.race + " est son race " + this.valeur + " est son valeur.";
  return description;
};

var joueur1 = Object.create(Joueur);
joueur1.initJoueur("Aurora", 150, 25);

var joueur2 = Object.create(Joueur);
joueur2.initJoueur("Glacius", 130, 30);

document.getElementById('p1').innerHTML = joueur1.decrire();
document.getElementById('p2').innerHTML = joueur2.decrire();

var monstre = Object.create(Adversaire);
monstre.initAdversaire("ZogZog", 40, 20, "orc", 10);

document.getElementById('p3').innerHTML = monstre.decrire();
