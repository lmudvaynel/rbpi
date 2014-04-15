class AddPhotoToWorker < ActiveRecord::Migration
  def self.up
    add_attachment :workers, :photo
  end

  def self.down
    remove_attachment :workers, :photo
  end
end
