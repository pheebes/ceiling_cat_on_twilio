class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone_number
      t.string :store_id
      t.string :integer

      t.timestamps null: false
    end
  end
end
