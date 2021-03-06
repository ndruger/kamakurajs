"use strict"
$(document).ready(->
  DELAY = 100;

  $(document.body).append($('<button>').attr(
    'class': 'result_button'
  ).prop('disabled', true))

  $(document.body).append($('<button>').attr(
    'class': 'disabled_button'
  )
    .text('disabled_button')
    .prop('disabled', true))

  $('button').on('click', ->
    Q.delay(DELAY).then(->
      $('.result_button').prop('disabled', false);
    )
  )
)