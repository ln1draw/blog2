$(document).ready(function (){
  var descriptions = ['#scamazon-box', '#scamalytics-box', '#feedhunter-box', '#llama-lister-box', '#pea-patch-box','#sloth-expresser-box'
  ];

  var DisplayDescription = function(new_description){
    $(descriptions).each(function(index, description){
      $(description).hide();
    });
    $(new_description).show();
  };

  $('#scamazon').click(function(){
    DisplayDescription('#scamazon-box');
  });

  $('#scamalytics').click(function(){
    DisplayDescription('#scamalytics-box');
  });

  $('#feedhunter').click(function(){
    DisplayDescription('#feedhunter-box');
  });

  $('#llama-lister').click(function(){
    DisplayDescription('#llama-lister-box');
  });

  $('#pea-patch').click(function(){
    DisplayDescription('#pea-patch-box');
  });

  $('#sloth-expresser').click(function(){
    DisplayDescription('#sloth-expresser-box');
  });

})