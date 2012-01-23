class Frog
    constructor: ([color, left, top], leaf) ->
        @obj = $j """<div style='background: #{color};
        left: #{left}px;
        top:#{top}px;
        border: 1px solid white;
        height: 38px; width: 38px; position: absolute;'></div>
        """
        @obj.appendTo leaf
    $aniArgs =
        u: [{top: '-=40', height: 78},{height: 38}]
        d: [{height: 78},{top: '+=40', height: 38}]
        l: [{left: '-=40', width: 78}, {width: 38}]
        r: [{width: 78}, {left: '+=40', width: 38}]
    jump: (dir, s) ->
        @obj
            .animate($aniArgs[dir][0])
            .animate($aniArgs[dir][1]) for i in [1..s]
        this
    right: (n) -> this.jump 'r', n
    left: (n) -> this.jump 'l', n
    up: (n) -> this.jump 'u', n
    down: (n) -> this.jump 'd', n

frogs = ( new Frog( params, '#leaf' ) for params in [
    ['#FF621D', 0, 0]
    ['#B1D02C', 0, 160]
    ['#D5FA6F', 160, 160]
    ['#89C128', 160, 0]
    ['#B42002', 80, 80]
])

$j('#ani3_long_jumps').click ->
    frogs[0].down(4).right(4).up(4).left(4)
    frogs[1].right(4).up(4).left(4).down(4)
    frogs[2].up(4).left(4).down(4).right(4)
    frogs[3].left(4).down(4).right(4).up(4)
