# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

jQuery ->
  # Create a comment
  $(document).bind 'page:change', ->
    $(".comment-form")
      .on "ajax:beforeSend", (evt, xhr, settings) ->
        $(this).find('textarea')
          .addClass('uneditable-input')
          .attr('disabled', 'disabled');
      .on "ajax:success", (evt, data, status, xhr) ->
        $(this).find('textarea')
          .removeClass('uneditable-input')
          .removeAttr('disabled', 'disabled')
          .val('');
        $(xhr.responseText).hide().insertAfter($(this)).show('slow')

    # Delete a comment
    $(document)
      .on "ajax:beforeSend", ".comment", ->
        $(this).fadeTo('fast', 0.5)
      .on "ajax:success", ".comment", ->
        $(this).hide('fast')
      .on "ajax:error", ".comment", ->
        $(this).fadeTo('fast', 1)
