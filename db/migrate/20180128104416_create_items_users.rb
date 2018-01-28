class CreateItemsUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :items_users do |t|

      t.timestamps
    end
  end
end
