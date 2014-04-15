class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :slug
      t.boolean :hidden, default:0
      t.integer :seo_id
      t.integer :position

      t.timestamps
    end
    Page.create_translation_table!(
      {content: :text, name: :text},
      {:migrate_data => true})
    add_index :pages, :seo_id
    add_index :pages, :slug, unique: true
  end
end
