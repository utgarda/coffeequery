first = null
nextSquare = (i) ->
  current = $(next_square_html colors[i])
  first ?= current # saving if it's the first one
  current.appendTo( $ '#keyboard' ) #assembling the keyboard
    .click ->
      grow $(this), 7
    #attach the next one, make it circular
    .data 'next', if i < 11 then nextSquare(i+1) else first