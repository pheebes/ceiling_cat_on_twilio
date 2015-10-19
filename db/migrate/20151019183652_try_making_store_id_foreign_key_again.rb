class TryMakingStoreIdForeignKeyAgain < ActiveRecord::Migration
  def change
    add_foreign_key :users, column: :store_id
  end
end
