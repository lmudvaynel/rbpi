class WorkerContact < ActiveRecord::Base
  attr_accessible :email, :phone
  acts_as_list

  belongs_to :worker
end
