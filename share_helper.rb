module ShareHelper
  def fb_share(redirect_url, type = "button")
    content_tag(:div, "", class: "fb-share-button", :'data-href' => redirect_url, :'data-layout' => type)
  end

  def twitter_share(redirect_url, description, count = false)
    content_tag(:a, "Tweet", class: "twitter-share-button", 
      "data-count" => "none", 
      "data-url" => redirect_url,
      "data-text" => description,
      :href => "https://twitter.com/share")
  end

  def pinterest_share(redirect_url)
    content_tag(:a, content_tag(:img, :src => "//assets.pinterest.com/images/pidgets/pinit_fg_en_rect_red_28.png"), 
      class: "data-pin-color", 
      "data-pin-color" => "red", 
      "data-pin-height" => "20", 
      "data-pin-do" => "buttonBookmark", 
      :href => "//www.pinterest.com/pin/create/button/")
  end

  def icon_fb_share(redirect_url)
    content_tag(:a, content_tag(:i,"", class: "fa fa-facebook"), 
      :class => "icon_fb_share",
      :'data-url' => "https://www.facebook.com/sharer/sharer.php?" + "u=" + redirect_url)
  end

  def icon_twitter_share(redirect_url, description = "")
    content_tag(:a, content_tag(:i,"", class: "fa fa-twitter"), 
      :href => "https://twitter.com/intent/tweet?" + "url=" + redirect_url + "&text=" + description,
      :target => "_blank")
  end

  def icon_pinterest_share(redirect_url, image_url , description = "")
    img_full_path = request.protocol + request.host_with_port + image_url
    
    content_tag(:a, content_tag(:i,"", class: "fa fa-pinterest-square"), 
      :class => "icon_pinterest_share",
      :'data-url' => "http://pinterest.com/pin/create/button/?" + "url=" + redirect_url + "&description=" + description + "&media=" + img_full_path)
  end
end