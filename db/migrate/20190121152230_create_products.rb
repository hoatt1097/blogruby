class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.string :price, :precision  => 8, :scale => 2

      t.timestamps null: false
    end
  end
end