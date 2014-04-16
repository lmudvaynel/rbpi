class WorkerContact < ActiveRecord::Base
  attr_accessible :email, :phone, :worker_id
  acts_as_list

  belongs_to :worker
end
