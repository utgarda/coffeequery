grow = (square, i) ->
    if i>0 and not square.is ':animated'
        square.animate height: 60, 200,
                -> grow square.data('next'), i-1
            .animate height: 30