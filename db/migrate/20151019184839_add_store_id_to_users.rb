class AddStoreIdToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :store, index: true
    add_foreign_key :users, :stores
  end
end
