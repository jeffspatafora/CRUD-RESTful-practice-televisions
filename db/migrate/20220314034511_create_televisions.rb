class CreateTelevisions < ActiveRecord::Migration[7.0]
  def change
    create_table :televisions do |t|
      t.string :brand
      t.integer :price
      t.string :screen_size
      t.string :resolution

      t.timestamps
    end
  end
end
