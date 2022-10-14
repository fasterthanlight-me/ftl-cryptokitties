class CreateCryptoKitties < ActiveRecord::Migration[7.0]
  def change
    create_table :crypto_kitties do |t|
      t.string :name
      t.string :category
      t.integer :price
      t.string :image_url
      t.boolean :available, default: true, null: false

      t.timestamps
    end
  end
end
