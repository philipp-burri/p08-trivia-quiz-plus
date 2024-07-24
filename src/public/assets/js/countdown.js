

$(document).ready(function () {
    var counter = 3;
    
    var timer = setInterval( function() { 
      
      $('#countdown').remove();     
      
      var countdown = $('<span id="countdown">'+(counter==0?:counter)+'</span>'); 
      countdown.appendTo($('.container'));
      setTimeout( () => {
         if (counter >-1) {
         $('#countdown').css({ 'font-size': '40vw', 'opacity': 0 }); 
         } else {
           $('#countdown').css({ 'font-size': '10vw', 'opacity': 50 });
         }
      },20);
      counter--;
      if (counter == -1) clearInterval(timer);
    }, 1000);
    });