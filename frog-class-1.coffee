class Frog
  constructor: (@obj) ->
  up: ->
    @obj.animate(top:'-=40',height:78).animate height:38
  down: ->
    @obj.animate(height:78).animate top:'+=40',height:38
  right: ->
    @obj.animate(width:78).animate left:'+=40', width:38
  left: ->
    @obj.animate(left:'-=40', width:78).animate width:38