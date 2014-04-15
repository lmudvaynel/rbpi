class AddImageToSlider < ActiveRecord::Migration
  def self.up
    add_attachment :sliders, :image
  end

  def self.down
    remove_attachment :sliders, :image
  end
end
