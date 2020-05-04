class CreateCongestions < ActiveRecord::Migration[5.2]
  def change
    create_table :congestions do |t|
      t.belongs_to :restaurant
      t.integer :degree
      t.timestamps
    end
  end
end
