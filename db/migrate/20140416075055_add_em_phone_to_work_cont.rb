class AddEmPhoneToWorkCont < ActiveRecord::Migration
  def change
    add_column :worker_contacts, :email, :string
    add_column :worker_contacts, :phone, :string
    add_column :worker_contacts, :worker_id, :integer
  end
end
