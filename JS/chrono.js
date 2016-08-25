
window.onload = init;

window.addEventListener("load", affichage, false);

function init()
{
  document.getElementById('start').addEventListener("click", startTimer, false);
  document.getElementById('stop').addEventListener("click", stopTimer, false);
  document.getElementById('pause').addEventListener("click", pauseTimer, false);
  document.getElementById('pause').addEventListener("click", tempsEcouler, false);

}

var sec = 000;
var min = 00;
var heure = 00;
var time;

function pauseTimer()
{

  clearInterval(time);

  //Avec la pause à deux fonctionnes le code ne marche pas très bien
  document.getElementById('pause').removeEventListener("click", pauseTimer, false);
 document.getElementById('pause').addEventListener("click", restartTimer, false);
 document.getElementById('start').disabled = true;
document.getElementById('stop').disabled = true;
}

function restartTimer()
{
   startTimer();
    document.getElementById('pause').removeEventListener("click", restartTimer, false);
  document.getElementById('pause').addEventListener("click", pauseTimer, false);
  document.getElementById('stop').disabled = false;
}


function stopTimer()
{

  clearInterval(time);
  document.getElementById('timer').innerHTML = "";
  affichage();
document.getElementById('pause').disabled = true;
document.getElementById('stop').disabled = true;
document.getElementById('start').disabled = false;
}

function affichage()
{
  sec = 0;
  min = 0;
  heure = 0;

  document.getElementById('timer').innerHTML = AddZeros(heure) + ":" + AddZeros(min) + ":" + AddZeros(sec);
}

function startTimer() {

 time = setInterval(myTimer, 1000);
 
 document.getElementById('stop').disabled = false;
 document.getElementById('pause').disabled = false;
 document.getElementById('start').disabled = true;

}

function myTimer()
{
  //var date = new Date();
  //document.getElementById('timer').innerHTML = date.getMilliseconds();
  sec +=1;
  if(sec == 60){
    min += 1;
    sec = 000;
  }
  if(min == 60){
    heure += 1;
    min = 00;
  }
  document.getElementById('timer').innerHTML = AddZeros(heure) + ":" + AddZeros(min) + ":" + AddZeros(sec);
}

function AddZeros(i)
{
  if(i < 10){
    i = "0" + i;
  }
  else{
    i = i;
  }
  return i;


}

function tempsEcouler()
{
  var paraTps = "Le temps ecoulé est : " + AddZeros(heure) + " : " + AddZeros(min) + " : " + AddZeros(sec);
  document.getElementById('ecouler').innerHTML = paraTps;

}
