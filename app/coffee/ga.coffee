@insertGA = (code)->
  console.log('code' , code) if console and console.log
  window['_gaq']=[
    ['_setAccount',code],
    ['_trackPageview']
  ]

  ((d,t)->
      g=d.createElement(t)
      s=d.getElementsByTagName(t)[0]
      g.async=1
      g.src= "#{location.protocol}//#{if location.protocol=='https:' then 'ssl' else 'www' }.google-analytics.com/ga.js"
      s.parentNode.insertBefore(g,s)
  )(document,'script')
