$ ->
  # TODO : Implement better
  $('.carousel').carousel()

  get_friends =  ()=>
    # Oahu.app.getFriends {}, (friends)->
    #   l = if friends.length then friends.length else "none"
    #   $('.oahu_friendscount').html(l)
  get_activity = ()=>
    $('[data-oahu-bind="activity"]').each (i,e)->
      t = $(this)
      Oahu.ui.feed {}, (activity)=>
        t.html(activity.markup)

  OahuInitCallback = (e)->
    console.log "-------------------"
    $('.oahu_username').html(Oahu.account.name)
    window.OahuWidget = new Oahu.Apps.Widget({}, { el: "#page" })
    get_activity()
    get_friends()


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
    appId : "2e6aacf05aeeaec81c991a42"
    # appId: "6a5a0464d33a6e9dc2571b9d"
    verbose:true
    debug:true
    # facebook :
    #   "appId":'135589799816220'
    #   "status":true
    #   "cookie":true
    #   "xfbml":true
    #   "oauth":true
    #   "logging":true
    ga :
      code:"UA-489370-52"

  ((d,t)->
      se=d.createElement(t)
      se.type = "text/javascript"
      s=d.getElementsByTagName(t)[0]
      se.async=1
      se.src= "//platform.twitter.com/widgets.js"
      s.parentNode.insertBefore(se,s)
  )(document,'script')

  Oahu.init _oahu_config , OahuInitCallback

