class Frog
    constructor: (@obj) ->
    up: ->
        @obj = @obj.animate(top: '-=40',height: 78).animate height: 38
    down: ->
        @obj = @obj.animate(height: 78).animate top: '+=40',height: 38
    right: ->
        @obj = @obj.animate(width: 78).animate left: '+=40', width: 38
    left: ->
        @obj = @obj.animate(left: '-=40', width: 78).animate width: 38