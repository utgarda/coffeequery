colors = [ '#CCDDBB', '#99CC66', '#88AA66',  '#AADDCC'
           '#66AAAA', '#559999', '#FFFFDD', '#FF9922'
           '#DD8822', '#AACCDD', '#5599CC', '#4477AA' ]
nextSquareHtml = (color) -> """
<div style="background: #{color}; border: 1px solid grey;
height: 30px; width: 30px; margin: 5px; float: left"></div>"""
grow = (square) ->
        square.animate(height: 60, 200).animate height: 30
for c in colors
        $(nextSquareHtml c)
                .appendTo( $ '#keyboard' )
                .click -> grow $(this)