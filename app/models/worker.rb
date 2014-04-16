class Worker < ActiveRecord::Base
  attr_accessible :translations_attributes, :translations, :worker_contacts_attributes, :photo, :gender

  has_attached_file :photo,
                    :styles => {
                      :thumb => "200x200>"
                    }
  validates_attachment_presence :photo

  validates_attachment_content_type :photo,:content_type => ['image/jpeg', 'image/jpg', 'image/png']
  validates_attachment_size :photo,:less_than => 5.megabytes

  translates :fio, :post, :bio
  has_many :worker_contacts

  accepts_nested_attributes_for :worker_contacts, :allow_destroy => true, :reject_if => :all_blank
  accepts_nested_attributes_for :translations
  
  acts_as_list
end