get_friends =  ()=>
  Oahu.app.getFriends {}, (friends)->
    l = if friends.length then friends.length else "none"
    $('.oahu_friendscount').html(l)
get_activity = ()=>
  $('[data-oahu-bind="activity"]').each (i,e)->
    t = $(this)
    Oahu.ui.feed {}, (activity)=>
      t.html(activity.markup)

$ -> 
  OahuInitCallback = (e)->
    $('.oahu_username').html(Oahu.account.name)
    get_activity()
    get_friends()
    window.OahuWidget = new Oahu.Apps.Widget({}, { el: "#page" })
    

  $("[data-oahu-display]").each (i,e)->
    t = $(this)
    s = t.data('oahu-display')
    if s is "connected"
      Oahu.bind 'facebook:connect:success',    (e)=> t.show()
      Oahu.bind 'oahu:connect:logout:success', (e)=> t.hide()
    else
      Oahu.bind 'facebook:connect:success',    (e)=> t.hide()
      Oahu.bind 'oahu:connect:logout:success', (e)=> t.show()

  _oahu_config =
    appId : "f9daf08f500855a2c8e13c07"
    # appId: "6a5a0464d33a6e9dc2571b9d"
    verbose:false
    debug:false
    # facebook :
    #   "appId":'196776837038567'
    #   "status":true
    #   "cookie":true
    #   "xfbml":true
    #   "oauth":true
    #   "logging":true
    ga : 
      code:"UA-489370-52"
  Oahu.init _oahu_config , OahuInitCallback
