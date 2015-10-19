class ChangeStoreIdToInteger < ActiveRecord::Migration
  def change
    change_column :users, :store_id, :integer
  end
end
