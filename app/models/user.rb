class User < ActiveRecord::Base
  belongs_to :store
  validates :store_id, presence: true
end
