class GeneralInformation < ActiveRecord::Base
  attr_accessible :name, :description, :main_image, :address, :phone

  has_attached_file :main_image,
                    :styles => {:home => "400x300#", :thumb => "100x100#"},
                    :url => "/assets/general_informations/:id/images/main_:style.:extension",
                    :path => ":rails_root/public/assets/general_informations/:id/images/main_:style.:extension"

  validates_presence_of :name, :address

end