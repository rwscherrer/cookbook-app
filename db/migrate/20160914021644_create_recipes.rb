class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :chef
      t.string :title
      t.string :ingredients
      t.string :directions
      t.string :image
      t.string :prep_time
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps null: false
    end
  end
end
