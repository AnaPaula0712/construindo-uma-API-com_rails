class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :address
      t.string :region
      t.string :price
      t.string :name
      t.text :description
      t.string :date

      t.timestamps
    end
  end
end
