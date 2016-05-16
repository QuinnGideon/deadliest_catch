class Follow < ActiveRecord::Base
  belongs_to :boat
  belongs_to :user
end
