class CreateMobiles < ActiveRecord::Migration[5.2]
  def change
    create_table :mobiles do |t|
      t.string :brand
      t.string :model
      t.string :image_url
      t.string :details
      t.decimal :price

      t.timestamps
    end
  end
end
