# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('button[type="submit"]').click ->
    $('.loader').show()
    $(this).attr('disabled', true)
    $('#contactForm').submit()
