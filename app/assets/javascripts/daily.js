$(document).ready(function() {
  
  function onChange() {
    var daily_id = $(this).val()
    var url = '/jobs/' + job + '/dailys/' + daily_id
    $('#daily-notes').load(url + ' #daily-notes');
      return false;
  };

  $("#daily_note_daily_id").change(onChange);

  $('#daily-notes tr td:first-child').each(function(i){
    $(this).before('<td>'+(i+1)+'</td>');
  });


});



//Use the .load() function
// $(document).ready(function() {

//   function onChange() {

//     var daily_id = $(this).val()

//     var url = '/jobs/' + job + '/dailys/' + daily_id

//     $('#daily-notes').load(url + ' #daily-notes');

//       return false;
//   };
// $("#daily_note_daily_id").change(onChange);
// });