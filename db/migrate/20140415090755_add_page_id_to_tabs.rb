class AddPageIdToTabs < ActiveRecord::Migration
  def change
    add_column :infos, :page_id, :integer
    add_column :infos, :position, :integer
  end
end
