class CreateMountains < ActiveRecord::Migration
  def change
    create_table :mountains do |t|
      t.string :name
      t.text :image
      t.string :country
      t.float :oceanheight
      t.integer :ascent
    end
  end
end
