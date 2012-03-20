$j = jQuery

window.fbAsyncInit = ->
  FB.init
    appId: '340097046032196'
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
