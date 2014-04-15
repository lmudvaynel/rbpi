class CreateSeos < ActiveRecord::Migration
  def change
    create_table :seos do |t|

      t.timestamps
    end
    Seo.create_translation_table!(
      {title: :string, keywords: :string, description: :string},
      {:migrate_data => true}
    )
  end
end
