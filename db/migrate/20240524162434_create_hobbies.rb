class CreateHobbies < ActiveRecord::Migration[7.1]
  def change
    create_table :hobbies do |t|
      t.string :activity_title
      t.text :description
      t.string :location
      t.string :category
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
