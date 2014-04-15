class Tab < ActiveRecord::Base
  attr_accessible :translations_attributes, :translations, :page_id

  translates :content, :name
  accepts_nested_attributes_for :translations
  belongs_to :page
end
