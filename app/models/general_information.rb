class GeneralInformation < ActiveRecord::Base
  attr_accessible :name, :description, :main_image

  has_attached_file :main_image,
                    :styles => {:large => "750x540#", :thumb => "100x100#"},
                    :url => "/assets/general_informations/:id/images/main_:style.:extension",
                    :path => ":rails_root/public/assets/general_informations/:id/images/main_:style.:extension"

  validates_presence_of :name

end