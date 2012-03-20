squares = ( $j(nextSquareHtml c) for c in colors )
for s,i in squares
    s.appendTo( $ '#keyboard' ) #assembling the keyboard
        .click ->
            grow $j(this), 7
         #attach the next one, make it circular
        .data('next', squares[ (i+1) % squares.length ])