class CreateSliders < ActiveRecord::Migration
  def change
    create_table :sliders do |t|
      t.integer :position
      t.timestamps
    end
    remove_column :pages, :parent_id
  end
end
