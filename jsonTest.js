$("button").click(function(){
  $getJSON("livres.js", function(text){
    $.each(text, function(i, field){
      $("div").append(field + " ");
    });
  });
});
