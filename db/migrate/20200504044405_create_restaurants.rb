class CreateRestaurants < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurants do |t|
      t.integer :restaurant_id, limit: 8, unique: true
      t.string  :restaurant_name
      t.string  :tel
      t.string  :address
      t.string  :opening_hours
      t.string  :calendar
      t.string  :restaurant_url
      t.float   :lat
      t.float   :lng
      t.string  :latlng
      t.integer :sub
      t.string  :sub_name
      t.integer :are
      t.string  :are_name
      t.integer :pre
      t.string  :pre_name
      t.integer :lbgt
      t.string  :lbgt_name
      t.integer :dbgt
      t.string  :dbgt_name
      t.integer :lcat
      t.string  :lcat_name
      t.integer :main_cat
      t.string  :main_cat_name
      t.string  :cats
      t.string  :cats_name
      t.string  :purs
      t.string  :purs_name
      t.integer :seats_num
      t.integer :smoking_type
      t.integer :restaurant_report_level
      t.integer :restaurant_like_level
      t.integer :restaurant_wannago_level
      t.timestamps
    end
  end
end
