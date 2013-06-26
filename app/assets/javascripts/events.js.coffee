# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
  $('#event_from_date_1i').on 'change', ->
    $('#event_to_date_1i').val( $(@).val() )
  $('#event_from_date_2i').on 'change', ->
    $('#event_to_date_2i').val( $(@).val() )
  $('#event_from_date_3i').on 'change', ->
    $('#event_to_date_3i').val( $(@).val() )
 


  $('.event-content #template_name').on 'change',  ->
    value = $(@).val()
    return @ if value is ''

    $.getJSON("/templates/#{value}.json", { })
    .done (data) -> 
      $('#event_description').val( data.content )

    .fail (data) ->
      alert 'NG'
      
