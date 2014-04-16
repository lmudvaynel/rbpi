class CreateTabs < ActiveRecord::Migration
  def change
    create_table :infos do |t|

      t.timestamps
    end
    Info.create_translation_table!(
      {content: :text, name: :text},
      {:migrate_data => true})
  end
end
