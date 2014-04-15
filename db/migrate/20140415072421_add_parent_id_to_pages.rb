class AddParentIdToPages < ActiveRecord::Migration
  def change
    remove_column :pages, :hidden
    add_column :pages, :parent_id, :integer
  end
end
