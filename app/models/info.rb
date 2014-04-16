class Info < ActiveRecord::Base
  attr_accessible :translations_attributes, :translations, :page_id

  translates :content, :name
  accepts_nested_attributes_for :translations
  belongs_to :page
  default_scope order: 'infos.position ASC'
  acts_as_list
end
