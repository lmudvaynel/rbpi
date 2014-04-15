class AddPageIdToTabs < ActiveRecord::Migration
  def change
    add_column :tabs, :page_id, :integer
    add_column :tabs, :position, :integer
  end
end
