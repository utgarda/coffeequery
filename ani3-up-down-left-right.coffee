#Put it in a line
up = (bar) -> bar.animate(top: '-=40',height: 78).animate height: 38
#Or use indentation instead of parenthesis
down = (bar) ->
    bar.animate
        height: 78
    .animate
        top: '+=40'
        height: 38
#Keep the syntax clean
right = (bar) -> bar.animate(width: 78).animate left: '+=40', width: 38
#Or put all the brackets possible (but that's not what CS is about ;)
left = (bar) -> bar.animate({left:'-=40', width: 78}).animate({width:38})