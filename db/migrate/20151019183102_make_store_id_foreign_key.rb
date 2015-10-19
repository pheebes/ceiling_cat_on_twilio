class MakeStoreIdForeignKey < ActiveRecord::Migration
  def change
    add_foreign_key :users, :store_id
  end
end
