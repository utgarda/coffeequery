$j = jQuery

reverse = (s) ->
  if s.length < 2 then s else reverse(s[1..-1]) + s[0]

query="""
SELECT name, uid
FROM user
WHERE uid IN (
    SELECT uid2
    FROM friend
    WHERE uid1=me()
)
AND strpos(lower(name),"a") >=0
AND   uid > 100000000000000
AND   uid < 100001854470625

"""

myInfo = $j ("#myinfo").empty()
for key, value of response
  myInfo.append "<tr><td>#{key}</td><td>#{value}</td></tr>"

getMyInfo = (callback) ->
  FB.api '/me', {fields:['id','first_name','last_name']}, callback


window.fbAsyncInit = ->
  FB.init
    appId: '340097046032196'  #put your own appId here
    status: true
    cookie: true
    xfbml: true
    oauth: true

$j ->
  id = 'facebook-jssdk'
  return if $j(id).length > 0
  sdk = $j.getScript "http://connect.facebook.net/en_US/all.js"
  sdk.id = id
  sdk.async = true
  $j('#show_profile').click ->
    getMyInfo((resp) -> console.log JSON.stringify(resp))
  $j('#query').click ->
    FB.api '/fql',{q:query} , (resp) -> console.log JSON.stringify(resp)