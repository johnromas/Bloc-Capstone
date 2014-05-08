jQuery ->
  $('#staff_assignment_user_id').hide()
  states = $('#staff_assignment_user_id').html()
  $('#staff_assignment_project_role_id').change ->
    country = $('#staff_assignment_project_role_id :selected').text()
    escaped_country = country.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(states).filter("optgroup[label='#{escaped_country}']").html()
    if options
      $('#staff_assignment_user_id').html(options)
      $('#staff_assignment_user_id').show()
    else
      $('#staff_assignment_user_id').empty()
      $('#staff_assignment_user_id').hide()