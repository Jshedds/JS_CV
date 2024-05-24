class CreateEducations < ActiveRecord::Migration[7.1]
  def change
    create_table :educations do |t|
      t.string :title
      t.text :summary
      t.string :organisation
      t.string :link
      t.string :subtitle

      t.timestamps
    end
  end
end
