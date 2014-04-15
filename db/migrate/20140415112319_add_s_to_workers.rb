class AddSToWorkers < ActiveRecord::Migration
  def change
    add_column :workers, :gender, :string
  end
end
