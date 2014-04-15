class Slider < ActiveRecord::Base
  attr_accessible :image, :position
  
  has_attached_file :image,
                    :styles => {
                      :thumb => "200x200>"
                    }

  validates_attachment_presence :image
  validates_attachment_content_type :image,:content_type => ['image/jpeg', 'image/jpg', 'image/png']
  validates_attachment_size :image,:less_than => 5.megabytes
  acts_as_list
end
