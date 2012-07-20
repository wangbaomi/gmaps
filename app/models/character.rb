class Character < ActiveRecord::Base

  attr_accessible :address, :gmaps, :latitude, :longitude, :name
  
  acts_as_gmappable

  def gmaps4rails_address
  #describe how to retrieve the address from your model, if you use directly a db column, you can dry your code, see wiki
  ##  "#{self.street}, #{self.city}, #{self.country}" 
    address
  end

  def gmaps4rails_infowindow
      # add here whatever html content you desire, it will be displayed when users clicks on the marker
     "<h1>#{name}</h1>"
  end

#  def gmaps4rails_marker_picture
#   {
#     "picture" => "/images/#{name}.png",          # string,  mandatory
#     "width" => "80",          # integer, mandatory
#     "height" => "110",           # integer, mandatory
#     "marker_anchor" => [ 5, 10],   # array,   facultative
#     "shadow_picture" => "images/morgan.png" ,  # string,  facultative
#     "shadow_width" => "40" ,    # string,  facultative
#     "shadow_height" => "55" ,   # string,  facultative
#     "shadow_anchor" => [5, 10] ,   # string,  facultative
 #    "rich_marker" =>   ,   # html, facultative
                          # If used, all other attributes skipped except "marker_anchor". This array is used as follows:
                          # [ anchor , flat ] : flat is a boolean, anchor is an int. 
                          # See doc here: http://google-maps-utility-library-v3.googlecode.com/svn/trunk/richmarker/docs/reference.html 
#    }
#  end

  def gmaps4rails_sidebar
   # "<span class="foo">#{name}</span>" #put whatever you want here
    name
  end

end
