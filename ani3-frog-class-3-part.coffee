    move: (path) ->
        @obj
            .animate($aniArgs[dir][0])
            .animate($aniArgs[dir][1]) for dir in path
        this

    frogs[i].move(path) for path, i in [
        'ddddrrrull'
        'rrrulluuur'
        'lulluuurrd'
        'lldrddlluu'
        'dluuurrddd']