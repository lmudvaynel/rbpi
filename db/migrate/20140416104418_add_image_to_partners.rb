class AddImageToPartners < ActiveRecord::Migration
  def change
    add_column :partners, :position, :integer
  end
end
