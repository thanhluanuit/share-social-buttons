var ShareSocialNetwork = {
  init: function(){
    this.twitter();
    this.facebook();
    this.pinterest();
  },

  facebook: function(){
    var self = this;
    $(".icon_fb_share").click(function(){      
      self.newwindow($(this).data("url"));
    });
  },

  pinterest: function(){
    var self = this;
    $(".icon_pinterest_share").click(function(){
      self.newwindow($(this).data("url"));
    });
  },

  twitter: function(){
    window.twttr = (function(d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0],
        t = window.twttr || {};
      if (d.getElementById(id)) return t;
      js = d.createElement(s);
      js.id = id;
      js.src = "https://platform.twitter.com/widgets.js";
      fjs.parentNode.insertBefore(js, fjs);
     
      t._e = [];
      t.ready = function(f) {
        t._e.push(f);
      };
         
      return t;
    }(document, "script", "twitter-wjs"));
  },

  newwindow: function(url){
    window.open(url, 'newwindow', "height=200,width=600");
  }
}

$(function(){
  ShareSocialNetwork.init();
});