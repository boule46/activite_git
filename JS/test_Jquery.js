// $(document).ready(function(){
//   $("button").click(function(){
//     $("p").hide();
//   });
// });
//
// $(document).ready(function(){  //Je selection le document et j'attends que la page est charger completement
//   $("button").click(function(){ //Je veux faire un action sur le bouton avec le click
//     $(this).hide(); //Mon action est hide le bouton, this
//   });
// });

// $(function(){
//   $("button").mouseenter(function(){
//     $(this).css("background-color", "yellow");
//   });
// });

//event avec plusieurs options
$(document).ready(function(){
  $("button").on({
    mouseenter: function(){
      $(this).css("background-color", "red");
    },
    mouseleave: function(){
      $(this).css("background-color", "yellow");
    },
    click: function(){
      $(this).css("background-color", "lightblue")
    }
  });
});

$(document).ready(function(){
  $(".btn").click(function(){
    $("#div1").fadeOut();
    $("#div2").fadeOut("slow");
    $("#div3").fadeOut(3000);
  });
});
