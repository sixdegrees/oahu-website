(function() {
  var get_activity, get_friends,
    _this = this;

  get_friends = function() {
    return Oahu.app.getFriends({}, function(friends) {
      var l;
      l = friends.length ? friends.length : "none";
      return $('.oahu_friendscount').html(l);
    });
  };

  get_activity = function() {
    return $('[data-oahu-bind="activity"]').each(function(i, e) {
      var t,
        _this = this;
      t = $(this);
      return Oahu.ui.feed({}, function(activity) {
        return t.html(activity.markup);
      });
    });
  };

  $(function() {
    var OahuInitCallback, _oahu_config;
    OahuInitCallback = function(e) {
      $('.oahu_username').html(Oahu.account.name);
      get_activity();
      get_friends();
      return window.OahuWidget = new Oahu.Apps.Widget({}, {
        el: "#page"
      });
    };
    $("[data-oahu-display]").each(function(i, e) {
      var s, t,
        _this = this;
      t = $(this);
      s = t.data('oahu-display');
      if (s === "connected") {
        Oahu.bind('facebook:connect:success', function(e) {
          return t.show();
        });
        return Oahu.bind('oahu:connect:logout:success', function(e) {
          return t.hide();
        });
      } else {
        Oahu.bind('facebook:connect:success', function(e) {
          return t.hide();
        });
        return Oahu.bind('oahu:connect:logout:success', function(e) {
          return t.show();
        });
      }
    });
    _oahu_config = {
      appId: "f9daf08f500855a2c8e13c07",
      verbose: false,
      debug: false,
      ga: {
        code: "UA-489370-52"
      }
    };
    return Oahu.init(_oahu_config, OahuInitCallback);
  });

}).call(this);
