$(document).ready(function(){
  $("#staff_assignment_project_role_id").change(function(){
    selected = $(this).find("option:selected").text();
    
    $("#staff_assignment_user_id optgroup").each(function(){
      if($(this).attr('label').match(selected) == null){
        $(this).appendTo("#parkingLot")
      }
    })

    $("#parkingLot optgroup").each(function(){
      if($(this).attr('label').match(selected)|| selected == "Any"){
        $(this).appendTo("#staff_assignment_user_id")
      }
    })
  });

  $("body").after('<select id="parkingLot"></select>');
  $("#parkingLot").hide();
})