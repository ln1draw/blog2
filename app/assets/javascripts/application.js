$(document).ready(function (){
  var collapsible = $( ".ui.accordion" ).accordion({collapsible: true, animated: false});
 
  // setter
  $( ".ui.accordion" ).accordion( "option", "collapsible", true );
});