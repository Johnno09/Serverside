class CreatePhoneApps < ActiveRecord::Migration[5.2]
  def change
    create_table :phone_apps do |t|
      t.string :brand
      t.string :model
      t.string :details
      t.decimal :price

      t.timestamps
    end
  end
end
