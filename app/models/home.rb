class Home < ActiveRecord::Base
  attr_accessible :title, :main_image, :gallery_image, :events_image

  validates_attachment_presence :main_image, :gallery_image, :events_image

  has_attached_file :main_image,
                    :styles => {:medium => "400x300#", :thumb => "100x100#"},
                    :url => "/assets/homes/:id/images/main_:style.:extension",
                    :path => ":rails_root/public/assets/homes/:id/images/main_:style.:extension"
  has_attached_file :gallery_image,
                    :styles => {:medium => "400x300#", :thumb => "100x100#"},
                    :url => "/assets/homes/:id/images/gallery_:style.:extension",
                    :path => ":rails_root/public/assets/homes/:id/images/gallery_:style.:extension"
  has_attached_file :events_image,
                    :styles => {:medium => "400x300#", :thumb => "100x100#"},
                    :url => "/assets/homes/:id/images/events_:style.:extension",
                    :path => ":rails_root/public/assets/homes/:id/images/events_:style.:extension"

end