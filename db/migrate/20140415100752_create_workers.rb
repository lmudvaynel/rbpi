class CreateWorkers < ActiveRecord::Migration
  def change
    create_table :workers do |t|

      t.timestamps
    end
    Worker.create_translation_table!(
      {fio: :text, post: :text, bio: :text},
      {:migrate_data => true})
  end
end
