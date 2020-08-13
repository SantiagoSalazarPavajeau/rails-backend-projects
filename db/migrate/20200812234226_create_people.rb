class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.string :key
      t.string :value
      t.string :text
      t.json :image

      t.timestamps
    end
  end
end
