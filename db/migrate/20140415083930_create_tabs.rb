class CreateTabs < ActiveRecord::Migration
  def change
    create_table :tabs do |t|

      t.timestamps
    end
    Tab.create_translation_table!(
      {content: :text, name: :text},
      {:migrate_data => true})
  end
end
