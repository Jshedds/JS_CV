class CreateSkills < ActiveRecord::Migration[7.1]
  def change
    create_table :skills do |t|
      t.string :title
      t.text :summary
      t.string :category

      t.timestamps
    end
  end
end
