window.onload = init

function init()
{
  document.getElementById('appCode').addEventListener("click", appCode1, false);
  document.getElementById('appName').addEventListener("click", appName1, false);
  document.getElementById('appVersion').addEventListener("click", appVersion1, false);
  document.getElementById('UserAgent').addEventListener("click", userAgent1, false);




}

function appCode1(e)
{
  e.preventDefault();
  var code = navigator.appCodeName;
  document.getElementsByName('appCodeName1')[0].value = code;
}

function appName1(e)
{
  e.preventDefault();
  var name = navigator.appName;
  document.getElementsByName('appNa')[0].value = name;

}

function appVersion1(e)
{
  e.preventDefault();
  var vers = navigator.appVersion;
  document.getElementsByName('version')[0].value = vers;
}

function userAgent1(e)
{
  e.preventDefault();
  var agent = navigator.userAgent;
  document.getElementsByName('USER')[0].value = agent;

}
