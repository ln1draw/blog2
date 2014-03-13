$(document).ready(function (){
  var descriptions = ['#scamazon-box', '#scamalytics-box', '#feedhunter-box', '#llama-lister-box', '#pea-patch-box','#sloth-expresser-box'
  ];

  var DisplayDescription = function(new_description, active_tab){
    $(descriptions).each(function(index, description){
      $(description).hide();
    });
    $(new_description).show();
    $(active_tab).addClass('active');
    $(new_description).addClass('active_description')
  };

  // doesn't work yet
  $('.active').click(function(){
    $('.active').removeClass('active');
    $('.active_description').hide();
    $('.active_description').removeClass('active_description');
  })

  $('#scamazon').click(function(){
    DisplayDescription('#scamazon-box', '#scamazon');
  });

  $('#scamalytics').click(function(){
    DisplayDescription('#scamalytics-box', '#scamalytics');
  });

  $('#feedhunter').click(function(){
    DisplayDescription('#feedhunter-box', '#feedhunter');
  });

  $('#llama-lister').click(function(){
    DisplayDescription('#llama-lister-box', '#llama-lister');
  });

  $('#pea-patch').click(function(){
    DisplayDescription('#pea-patch-box', '#pea-patch');
  });

  $('#sloth-expresser').click(function(){
    DisplayDescription('#sloth-expresser-box', '#sloth-expresser');
  });

})