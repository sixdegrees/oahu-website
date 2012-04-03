(function() {

  this.insertGA = function(code) {
    window['_gaq'] = [['_setAccount', code], ['_trackPageview']];
    return (function(d, t) {
      var g, s;
      g = d.createElement(t);
      s = d.getElementsByTagName(t)[0];
      g.async = 1;
      g.src = "" + location.protocol + "//" + (location.protocol === 'https:' ? 'ssl' : 'www') + ".google-analytics.com/ga.js";
      return s.parentNode.insertBefore(g, s);
    })(document, 'script');
  };

}).call(this);
