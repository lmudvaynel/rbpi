class Page < ActiveRecord::Base
  attr_accessible :slug, :parent_id, :seo_id, :seo_attributes, :position,
                :translations_attributes, :translations
  acts_as_list

  translates :content, :name
  belongs_to :seo
  has_many :tabs
  accepts_nested_attributes_for :seo, :allow_destroy => true, :reject_if => :all_blank
  accepts_nested_attributes_for :translations

  validates :slug, presence: true, uniqueness: true
  validates :name, presence: true
  validates :content, html: true
end
