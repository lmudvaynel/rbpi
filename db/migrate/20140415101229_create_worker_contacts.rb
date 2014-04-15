class CreateWorkerContacts < ActiveRecord::Migration
  def change
    create_table :worker_contacts do |t|
      t.integer :position
      t.timestamps
    end
    add_column :workers, :position, :integer
    remove_column :worker_translations, :fio
    remove_column :worker_translations, :post
    add_column :worker_translations, :fio, :string
    add_column :worker_translations, :post, :string
  end
end
